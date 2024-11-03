package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.KhoiDto;
import com.agasa.xd_f371_v0_0_1.dto.NhiemVuDto;
import com.agasa.xd_f371_v0_0_1.entity.Quarter;
import com.agasa.xd_f371_v0_0_1.service.NhiemVuService;
import com.agasa.xd_f371_v0_0_1.service.QuarterService;
import com.agasa.xd_f371_v0_0_1.service.impl.NhiemVuImp;
import com.agasa.xd_f371_v0_0_1.service.impl.QuarterImp;
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
import java.util.ResourceBundle;

public class NhiemvuController implements Initializable {

    private NhiemVuService nhiemVuService = new NhiemVuImp();
    private QuarterService quarterService = new QuarterImp();
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
}
