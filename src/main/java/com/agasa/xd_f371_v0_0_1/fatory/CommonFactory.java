package com.agasa.xd_f371_v0_0_1.fatory;

import com.agasa.xd_f371_v0_0_1.controller.DashboardController;
import com.agasa.xd_f371_v0_0_1.dto.LichsuXNK;
import com.agasa.xd_f371_v0_0_1.dto.QuantityByTructhuocDTO;
import com.agasa.xd_f371_v0_0_1.dto.TitleDto;
import com.agasa.xd_f371_v0_0_1.dto.TonKho;
import com.agasa.xd_f371_v0_0_1.entity.*;
import com.agasa.xd_f371_v0_0_1.model.ChungloaiMap;
import com.agasa.xd_f371_v0_0_1.model.LoaiPhieu_cons;
import com.agasa.xd_f371_v0_0_1.model.MucGiaEnum;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
import com.agasa.xd_f371_v0_0_1.util.Common;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

public class CommonFactory {
    protected LoaiPhieuService loaiPhieuService = new LoaiPhieuImp();
    protected LedgerDetailsService ledgerDetailsService = new LedgerDetailsImp();
    protected TructhuocLoaiphieuService tructhuocLoaiphieuService = new Tructhuoc_LoaiphieuImp();
    protected CategoryService categoryService = new CategoryImp();
    protected InvReportDetailService invReportDetailService = new invReportDetailImp();
    protected InvReportService invReportService = new InvReportImp();
    protected LoaiXdService loaiXdService = new LoaiXdImp();
    protected TonkhoTongService tonkhoTongService = new TonkhoTongImp();
    protected TonKhoService tonKhoService = new TonkhoImp();
    protected MucgiaService mucgiaService = new MucgiaImp();
    protected LichsuNXKService lichsuNXKService = new LichsuNXKImp();
    protected static LoaiPhieu lp_id_pre = new LoaiPhieu();
    protected static List<Tcn> ls_tcn = new ArrayList<>();
    protected static Tcn pre_createNewTcn = new Tcn();

    protected void updateInvReport(LedgerDetails ledgerDetails, int tt_id){
        LoaiPhieu lp= loaiPhieuService.findLoaiPhieuByType(ledgerDetails.getLoai_phieu());
        InvReport invReport = new InvReport();

        invReport.setPetroleum_id(ledgerDetails.getLoaixd_id());
        invReport.setInventory_id(ledgerDetails.getTonkhotong_id());
        QuantityByTructhuocDTO quantityByTructhuocDTO = ledgerDetailsService.selectQuantityByTT(lp.getType(),ledgerDetails.getLoaixd_id(), tt_id);
        if (quantityByTructhuocDTO!=null){
            invReport.setQuantity(quantityByTructhuocDTO.getSoluong());
        }
        invReport.setPrice_id(ledgerDetails.getTonkho_id());
        TructhuocLoaiphieu tructhuocLoaiphieu = tructhuocLoaiphieuService.findByTTLPId(tt_id, lp.getId());
        if (tructhuocLoaiphieu!=null) {
            Category category = categoryService.getTitleByttLpId(tructhuocLoaiphieu.getId());
            System.out.println("cate: " + category.getId());
            if (category!=null){
                InvReport report = invReportService.findByPetroleum(ledgerDetails.getLoaixd_id(), DashboardController.findByTime.getId(), category.getId());
                invReport.setReport_header(category.getId());
                updateInvReportDetail(ledgerDetails, category, report, tt_id);
                updateAllRowInv(ledgerDetails);
            }else{
                throw new RuntimeException("category is null");
            }
        }else {
            throw new RuntimeException("tructhuocloaiphieu is null");
        }
        invReportService.updateReport(invReport);
    }

    protected void updateInvReportDetail(LedgerDetails ledgerDetails, Category category, InvReport report, int tt_id){
        InvReportDetail invReportDetail = new InvReportDetail();
        LoaiXangDau loaiXangDau = loaiXdService.findLoaiXdByID_non(ledgerDetails.getLoaixd_id());
        if (loaiXangDau!=null) {
            invReportDetail.setLoaixd(ledgerDetails.getTen_xd());
            Map<String, String> titleMap = ChungloaiMap.getMapChungloai();
            invReportDetail.setTitle_lxd_lv1(titleMap.get(loaiXangDau.getChungloai()));
            invReportDetail.setTitle_lxd_lv2(titleMap.get(loaiXangDau.getType()));
            invReportDetail.setTitle_lxd_lv3(titleMap.get(loaiXangDau.getRtype()));
            invReportDetail.setTitle_lv1(category.getHeader_lv1());
            invReportDetail.setTitle_lv2(category.getHeader_lv2());
            invReportDetail.setTitle_lv3(category.getHeader_lv3());
            invReportDetail.setInv_report_id(report.getId());
            QuantityByTructhuocDTO quantityByTructhuocDTO = ledgerDetailsService.selectQuantityByTT(ledgerDetails.getLoai_phieu(), ledgerDetails.getLoaixd_id(),tt_id);
            if (quantityByTructhuocDTO!=null) {
                invReportDetail.setSoluong(quantityByTructhuocDTO.getSoluong());
            }else {
                throw new RuntimeException("quantityByTructhuocDTO null");
            }
            invReportDetailService.updateNew(invReportDetail);
        } else {
            throw new RuntimeException("Loaixd is null");
        }
    }

    protected void updateAllRowInv(LedgerDetails ledgerDetails){
        List<InvReport> invReports = invReportService.getAllByPetroleumId(ledgerDetails.getLoaixd_id());
        if (!invReports.isEmpty()){
            for(int i = 0; i< invReports.size(); i++){
                InvReport invReport = invReports.get(i);
                TitleDto category = categoryService.getTitleById(invReport.getReport_header());
                Inventory inventory = tonKhoService.findByUniqueId(ledgerDetails.getLoaixd_id(), ledgerDetails.getQuarter_id());
                InvReportDetail invReportDetail = invReportDetailService.findByReportId(invReports.get(i).getId());
                if (Common.getInvCatalogField(category, inventory,invReport, invReportDetail)){
                    invReportService.updateReport(invReport);
                    invReportDetailService.updateNew(invReportDetail);
                }
            }
        }
    }

    protected void createNewMucgia(LedgerDetails ledgerDetails, int quantity){
        Mucgia mucgia = new Mucgia();
        Inventory inventory = tonKhoService.findByUniqueId(ledgerDetails.getLoaixd_id(), ledgerDetails.getQuarter_id());
        mucgia.setPrice(ledgerDetails.getDon_gia());
        mucgia.setAmount(quantity);
        mucgia.setQuarter_id(ledgerDetails.getQuarter_id());
        mucgia.setItem_id(ledgerDetails.getXd().getId());
        mucgia.setStatus(MucGiaEnum.IN_STOCK.getStatus());
        mucgia.setAssign_type_id(DashboardController.assignType.getId());
        mucgia.setInventory_id(inventory.getId());
        mucgiaService.createNew(mucgia);
    }

    protected void updateMucgia(int quantity, Mucgia mucgia_existed){
        if (quantity == 0){
            mucgia_existed.setStatus(MucGiaEnum.OUT_STOCK.getStatus());
            mucgia_existed.setAmount(quantity);
        } else if (quantity<0) {
            mucgia_existed.setStatus(MucGiaEnum.SUPER_OUT_STOCK.getStatus());
            mucgia_existed.setAmount(quantity);
        } else {
            mucgia_existed.setStatus(MucGiaEnum.IN_STOCK.getStatus());
            mucgia_existed.setAmount(quantity);
        }
        mucgiaService.updateMucGia(mucgia_existed);
    }

    protected void createNewTransaction(LedgerDetails ledgerDetails, int tontruoc, int tonsau){
        LichsuXNK lichsuXNK = new LichsuXNK();
        lichsuXNK.setTen_xd(ledgerDetails.getTen_xd());
        lichsuXNK.setLoai_phieu(ledgerDetails.getLoai_phieu());
        lichsuXNK.setSoluong(ledgerDetails.getThuc_xuat());
        lichsuXNK.setCreateTime(ledgerDetails.getNgay());
        lichsuXNK.setTontruoc(tontruoc);
        lichsuXNK.setTonsau(tonsau);
        lichsuXNK.setMucgia(String.valueOf(ledgerDetails.getDon_gia()));
        lichsuNXKService.createNew(lichsuXNK);
    }
}
