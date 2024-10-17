package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.TructhuocLoaiphieuDTO;
import com.agasa.xd_f371_v0_0_1.entity.Category;
import com.agasa.xd_f371_v0_0_1.entity.Tcn;
import com.agasa.xd_f371_v0_0_1.service.CategoryService;
import com.agasa.xd_f371_v0_0_1.service.TrucThuocService;
import com.agasa.xd_f371_v0_0_1.service.impl.CategoryImp;
import com.agasa.xd_f371_v0_0_1.service.impl.TrucThuocImp;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.text.Font;

import java.net.URL;
import java.util.ResourceBundle;

public class BaoCaoController implements Initializable {

    @FXML
    private ComboBox<String> loaiphieu_cbb;
    @FXML
    private TableView<Category> category_tb;
    @FXML
    private TableColumn<Category, String> col_categ_id, col_categ_title,col_categ_lv2,col_categ_lv3;
    @FXML
    private TableView<TructhuocLoaiphieuDTO> tb_tructhuocloaiphieu;
    @FXML
    private TableColumn<TructhuocLoaiphieuDTO, String> col_ttlp_id, col_ttlp_ttid,col_ttlp_lpid,col_ttlp_type,col_ttlp_name;

    private TrucThuocService trucThuocService = new TrucThuocImp();
    private CategoryService categoryService = new CategoryImp();

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        fillDataToTbCategory();
        fillDataToTbttLp();
    }

    private void fillDataToTbCategory(){
        category_tb.setItems(FXCollections.observableList(categoryService.getAll()));
        setFactoryCell_for_Category();
    }

    private void setFactoryCell_for_Category() {
        col_categ_id.setCellValueFactory(new PropertyValueFactory<Category, String>("id"));
        col_categ_title.setCellValueFactory(new PropertyValueFactory<Category, String>("header_lv1"));
        col_categ_lv2.setCellValueFactory(new PropertyValueFactory<Category, String>("header_lv2"));
        col_categ_lv3.setCellValueFactory(new PropertyValueFactory<Category, String>("header_lv3"));
    }

    private void fillDataToTbttLp(){
        tb_tructhuocloaiphieu.setItems(FXCollections.observableList(trucThuocService.getAllTTLP()));
        setFactoryCell_for_ttlp();
    }

    private void setFactoryCell_for_ttlp() {
        col_ttlp_id.setCellValueFactory(new PropertyValueFactory<TructhuocLoaiphieuDTO, String>("id"));
        col_ttlp_lpid.setCellValueFactory(new PropertyValueFactory<TructhuocLoaiphieuDTO, String>("loaiphieu_id"));
        col_ttlp_ttid.setCellValueFactory(new PropertyValueFactory<TructhuocLoaiphieuDTO, String>("tructhuoc_id"));
        col_ttlp_type.setCellValueFactory(new PropertyValueFactory<TructhuocLoaiphieuDTO, String>("type"));
        col_ttlp_name.setCellValueFactory(new PropertyValueFactory<TructhuocLoaiphieuDTO, String>("name"));
    }

    @FXML
    public void lp_onselected(ActionEvent actionEvent) {

    }
}
