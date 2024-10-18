package com.agasa.xd_f371_v0_0_1.fatory;

import com.agasa.xd_f371_v0_0_1.controller.DashboardController;
import com.agasa.xd_f371_v0_0_1.dto.QuantityByTructhuocDTO;
import com.agasa.xd_f371_v0_0_1.dto.TitleDto;
import com.agasa.xd_f371_v0_0_1.entity.*;
import com.agasa.xd_f371_v0_0_1.model.ChungloaiMap;
import com.agasa.xd_f371_v0_0_1.model.LoaiPhieu_cons;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
import com.agasa.xd_f371_v0_0_1.util.Common;

import java.util.List;
import java.util.Map;

public class CommonFactory {

    protected LoaiPhieuService loaiPhieuService = new LoaiPhieuImp();
    protected LedgerDetailsService ledgerDetailsService = new LedgerDetailsImp();
    protected TructhuocLoaiphieuService tructhuocLoaiphieuService = new Tructhuoc_LoaiphieuImp();
    protected CategoryService categoryService = new CategoryImp();
    protected InvReportDetailService invReportDetailService = new invReportDetailImp();
    protected InvReportService invReportService = new InvReportImp();
    protected LoaiXdService loaiXdService = new LoaiXdImp();
    protected TonkhoTongService tonkhoTongService = new TonkhoTongImp();

    protected void updateInvReport(LedgerDetails ledgerDetails, int tt_id){
        LoaiPhieu lp= loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_XUAT);
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
                TonkhoTong tonkhoTong = tonkhoTongService.findById(ledgerDetails.getTonkhotong_id());
                InvReportDetail invReportDetail = invReportDetailService.findByReportId(invReports.get(i).getId());
                if (Common.getInvCatalogField(category, tonkhoTong,invReport, invReportDetail)){
                    invReportService.updateReport(invReport);
                    invReportDetailService.updateNew(invReportDetail);
                }
            }
        }
    }
}
