package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.*;
import com.agasa.xd_f371_v0_0_1.entity.LedgerDetails;
import com.agasa.xd_f371_v0_0_1.entity.NhiemVu;
import com.agasa.xd_f371_v0_0_1.entity.PhuongTien;
import com.agasa.xd_f371_v0_0_1.entity.Quarter;
import com.agasa.xd_f371_v0_0_1.model.AssignTypeEnum;
import com.agasa.xd_f371_v0_0_1.model.LoaiGB;
import com.agasa.xd_f371_v0_0_1.model.LoaiPTEnum;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.util.StringConverter;

import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;

public class NhiemvuController implements Initializable {

    private NhiemVuService nhiemVuService = new NhiemVuImp();
    private PhuongTienService phuongTienService = new PhuongTienImp();
    private QuarterService quarterService = new QuarterImp();
    private CategoryService categoryService = new CategoryImp();
    private LedgerDetailsService ledgerDetailsService = new LedgerDetailsImp();
    private static int khoiid_selected = 0;
    private static int quarterid_selected = 0;

    @FXML
    ComboBox<KhoiDto> khoi_cmb;
    @FXML
    ComboBox<Quarter> quy_cbb;
    @FXML
    TableView<NhiemVuDto> nv_tb;
    @FXML
    TableColumn<NhiemVuDto, String> tennv, ctnv,lnv;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        initKhoiTb();
        initNvTb(khoi_cmb.getSelectionModel().getSelectedItem().getId());
        initQuarter();
    }

    private void initQuarter() {
        quy_cbb.setItems(FXCollections.observableList(quarterService.getAll()));
        quy_cbb.setConverter(new StringConverter<Quarter>() {
            @Override
            public String toString(Quarter quarter) {
                if (quarter!=null){
                    quarterid_selected = quarter.getId();
                }
                return quarter==null ? "" : quarter.getName();
            }

            @Override
            public Quarter fromString(String s) {
                return quarterService.findById(quarterid_selected);
            }
        });
        quy_cbb.getSelectionModel().selectFirst();
    }

    private void initKhoiTb() {
        khoi_cmb.setItems(FXCollections.observableList(nhiemVuService.getAllKhoi()));
        khoi_cmb.setConverter(new StringConverter<KhoiDto>() {
            @Override
            public String toString(KhoiDto khoiDto) {
                if (khoiDto!=null) {
                    khoiid_selected = khoiDto.getId();
                }
                return khoiDto==null ? "" : khoiDto.getName_k();
            }

            @Override
            public KhoiDto fromString(String s) {
                return nhiemVuService.findKhoiById(khoiid_selected);
            }
        });
        khoi_cmb.getSelectionModel().selectFirst();
    }

    private void initNvTb(int khoi) {
        nv_tb.setItems(FXCollections.observableList(nhiemVuService.getAllNVDTO(khoi)));
        tennv.setCellValueFactory(new PropertyValueFactory<NhiemVuDto, String>("ten_nv"));
        ctnv.setCellValueFactory(new PropertyValueFactory<NhiemVuDto, String>("chitiet"));
        lnv.setCellValueFactory(new PropertyValueFactory<NhiemVuDto, String>("ten_loai_nv"));
    }

    @FXML
    public void nhiemvu_selected(MouseEvent mouseEvent) {
        if (mouseEvent.getClickCount()==2){
            System.out.println("nhiemvu: " + nv_tb.getSelectionModel().getSelectedItem().getTen_nv());
        }
    }

    @FXML
    public void khoi_selected(ActionEvent actionEvent) {
        KhoiDto k = khoi_cmb.getSelectionModel().getSelectedItem();
        initNvTb(k.getId());
        nv_tb.refresh();
    }

    @FXML
    public void bcNlbayTheoKh(ActionEvent actionEvent) {
        initNLBayTheoPT();
        initNLBayTheoKH();
    }

    private void initNLBayTheoPT() {
        int quarterId = DashboardController.findByTime.getId();
        List<NormDto> phuongTienList = phuongTienService.getAllPt(LoaiPTEnum.MAYBAY_a.getNameVehicle());
        for (int i =0; i< phuongTienList.size(); i++){
            NormDto phuongTien = phuongTienList.get(i);
            List<AssignmentCategory> assignmentCategories = categoryService.getAllAssCategory();
            GioBay gioBay_md = ledgerDetailsService.getSumofWorkingTime(phuongTien.getPt_id(), quarterId, LoaiGB.MD.getName());
            GioBay gioBay_tk = ledgerDetailsService.getSumofWorkingTime(phuongTien.getPt_id(), quarterId, LoaiGB.TK.getName());
            Map<String, Integer> map = ledgerDetailsService.getSumofconsumption(phuongTien.getPt_id(), quarterId);
            ChitieuDTO chitieuDTO = phuongTienService.getChitieuDtoById(phuongTien.getPt_id(),quarterId );
            for (int j =0; j< assignmentCategories.size(); j++){
                AssignmentCategory assignmentCategory = assignmentCategories.get(j);

                NhiemVuReport nhiemVuReport = new NhiemVuReport();
                nhiemVuReport.setTitle_1(assignmentCategory.getTitle1());
                nhiemVuReport.setTitle_2(assignmentCategory.getTitle2());
                nhiemVuReport.setTitle_3(assignmentCategory.getTitle3());
                nhiemVuReport.setTitle_4(assignmentCategory.getTitle4());
                nhiemVuReport.setTen_nv_1(phuongTien.getNamePt());
                if (assignmentCategory.getCode().equals(AssignTypeEnum.GB_TK.getName())){
                    nhiemVuReport.setSoluong(chitieuDTO.getHanmuc_tk());
                    nhiemVuService.create(nhiemVuReport);
                } else if (assignmentCategory.getCode().equals(AssignTypeEnum.GB_MD.getName())) {
                    nhiemVuReport.setSoluong(chitieuDTO.getHanmuc_md());
                    nhiemVuService.create(nhiemVuReport);
                } else if (assignmentCategory.getCode().equals(AssignTypeEnum.NL.getName())) {
                    nhiemVuReport.setSoluong(String.valueOf(chitieuDTO.getSoluong()));
                    nhiemVuService.create(nhiemVuReport);
                } else if (assignmentCategory.getCode().equals(AssignTypeEnum.HD_TK.getName())) {
                    nhiemVuReport.setSoluong(String.valueOf(formatFlightHours(gioBay_tk.getFlight_hours(), gioBay_tk.getFlight_minutes())));
                    nhiemVuService.create(nhiemVuReport);
                } else if (assignmentCategory.getCode().equals(AssignTypeEnum.HD_MD.getName())) {
                    nhiemVuReport.setSoluong(String.valueOf(formatFlightHours(gioBay_md.getFlight_hours(), gioBay_md.getFlight_minutes())));
                    nhiemVuService.create(nhiemVuReport);
                }else if (assignmentCategory.getCode().equals(AssignTypeEnum.NLTT_TK.getName())) {
                    nhiemVuReport.setSoluong(String.valueOf(map.get(LoaiGB.TK.getName())));
                    nhiemVuService.create(nhiemVuReport);
                }else if (assignmentCategory.getCode().equals(AssignTypeEnum.NLTT_MD.getName())) {
                    nhiemVuReport.setSoluong(String.valueOf(map.get(LoaiGB.MD.getName())));
                    nhiemVuService.create(nhiemVuReport);
                }
            }
        }
    }

    private String formatFlightHours(int hours, int minutes){
        if (minutes >= 60){
            int pre_hour = minutes/60;
            int remainder = minutes%60;
            hours = hours+pre_hour;
            return String.valueOf(hours+":"+ remainder);
        }
        if (minutes >=0 && minutes<60){
            return String.valueOf(hours+":"+minutes);
        }
        return null;
    }

    private void initNLBayTheoKH() {
        List<NhiemVu> nhiemVuList = nhiemVuService.getAll();
        List<PhuongTien> phuongTienList = phuongTienService.getAll();

    }
}
