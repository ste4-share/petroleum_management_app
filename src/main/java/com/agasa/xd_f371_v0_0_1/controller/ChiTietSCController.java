package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.SoCaiDto;
import com.agasa.xd_f371_v0_0_1.dto.TonKho;
import com.agasa.xd_f371_v0_0_1.service.SoCaiService;
import com.agasa.xd_f371_v0_0_1.service.TonKhoService;
import com.agasa.xd_f371_v0_0_1.service.impl.SoCaiImp;
import com.agasa.xd_f371_v0_0_1.service.impl.TonkhoImp;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;

import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

public class ChiTietSCController implements Initializable {

    private SoCaiService soCaiService = new SoCaiImp();
    private List<SoCaiDto> ls;

    @FXML
    private TableView<SoCaiDto> tbChiTiet;

    @FXML
    private TableColumn<SoCaiDto,String> fct_stt, fct_tenxd, fct_dongia,fct_phaixuat, fct_nhietdo, fct_tytrong, fct_vcf, fct_thucxuat, fct_tong;
    @FXML
    private Label lb_dvvc, lb_dvn, lb_so, lb_nguoinhan, lb_tungay, lb_denngay, lb_tcn, lb_lenhkh, lb_soxe, lb_sokm, lb_sogio, lb_loaiphieu;
    @FXML
    private Button exitBtn;


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        addNewImport();
        ls = new ArrayList<>();
        int index_val = 0;

        List<SoCaiDto> soCaiDtoList = soCaiService.getChiTietSoCai(DashboardController.so_clicked);
        for (SoCaiDto soCaiDto : soCaiDtoList) {
            soCaiDto.setStt(index_val + 1);
            ls.add(soCaiDto);
            index_val = index_val + 1;
        }
        ObservableList<SoCaiDto> observableList = FXCollections.observableList(soCaiDtoList);
        tbChiTiet.setItems(observableList);
        fillDataToLabels();
        exitBtn.setOnAction(actionEvent -> {
            DashboardController.ctStage.close();
        });
    }
    private void addNewImport(){
        fct_stt.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("stt"));
        fct_tenxd.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("ten_xd"));
        fct_dongia.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("don_gia"));
        fct_phaixuat.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("phai_xuat"));
        fct_thucxuat.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("thuc_xuat"));
        fct_nhietdo.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("nhiet_do_tt"));
        fct_vcf.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("he_so_vcf"));
        fct_tytrong.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("ty_trong"));
        fct_tong.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("thanh_tien"));
    }

    private void fillDataToLabels(){
        lb_dvvc.setText(ls.get(0).getDvvc());
        lb_dvn.setText(ls.get(0).getDvi());
        lb_so.setText(ls.get(0).getSo());
        lb_nguoinhan.setText(ls.get(0).getNguoi_nhan_hang());
        lb_lenhkh.setText(ls.get(0).getTheo_lenh_so());
        lb_soxe.setText(ls.get(0).getSo_xe());
        lb_tcn.setText(ls.get(0).getNhiem_vu());
        lb_tungay.setText(ls.get(0).getNgay());
        lb_sokm.setText(ls.get(0).getSo_km());
        lb_sogio.setText(ls.get(0).getSo_gio());
        lb_loaiphieu.setText(ls.get(0).getLoai_phieu().equals("N") ? "Phiếu nhập" : "Phiếu xuất");
        lb_denngay.setText("32/12/2024");
    }
}
