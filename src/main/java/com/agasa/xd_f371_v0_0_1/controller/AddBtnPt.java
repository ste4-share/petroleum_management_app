package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.entity.LoaiPhuongTien;
import com.agasa.xd_f371_v0_0_1.entity.PhuongTien;
import com.agasa.xd_f371_v0_0_1.service.PhuongTienService;
import com.agasa.xd_f371_v0_0_1.service.impl.PhuongTienImp;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.util.StringConverter;

import java.net.URL;
import java.util.ResourceBundle;

public class AddBtnPt implements Initializable {

    private static int lpt_id=0;

    @FXML
    TextField pt_name;
    @FXML
    ComboBox<String> lpt_cmb;

    private PhuongTienService phuongTienService = new PhuongTienImp();

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        initLoaiPt();
    }

    private void initLoaiPt() {
        lpt_cmb.setItems(FXCollections.observableList(phuongTienService.getTypeName()));
//        lpt_cmb.setConverter(new StringConverter<LoaiPhuongTien>() {
//            @Override
//            public String toString(LoaiPhuongTien loaiPhuongTien) {
//                if (loaiPhuongTien!=null){
//                    lpt_id=loaiPhuongTien.getId();
//                }
//                return loaiPhuongTien==null ? "" : loaiPhuongTien.getType();
//            }
//
//            @Override
//            public LoaiPhuongTien fromString(String s) {
//                return phuongTienService.findPtById(lpt_id);
//            }
//        });
        lpt_cmb.getSelectionModel().selectFirst();
    }

    @FXML
    public void addBtn(ActionEvent actionEvent) {
        PhuongTien phuongTien = new PhuongTien();
        phuongTien.setName(pt_name.getText());
        phuongTien.set
        phuongTienService.createNew();
    }
    @FXML
    public void cancelBtn(ActionEvent actionEvent) {
    }
}
