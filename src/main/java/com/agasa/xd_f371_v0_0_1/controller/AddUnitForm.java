package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.entity.*;
import com.agasa.xd_f371_v0_0_1.service.CategoryService;
import com.agasa.xd_f371_v0_0_1.service.NguonNXService;
import com.agasa.xd_f371_v0_0_1.service.TrucThuocService;
import com.agasa.xd_f371_v0_0_1.service.impl.CategoryImp;
import com.agasa.xd_f371_v0_0_1.service.impl.NguonNXImp;
import com.agasa.xd_f371_v0_0_1.service.impl.TrucThuocImp;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.util.StringConverter;

import java.net.URL;
import java.util.ResourceBundle;

public class AddUnitForm implements Initializable {
    private static int tructhuoc_selected_from_cbb=0;
    private static int group_selected_from_cbb=0;
    @FXML
    ComboBox<TrucThuoc> tructhuoc_cbb;
    @FXML
    TextField unit_name, report_title1,report_title2,report_title3;
    @FXML
    ComboBox<GroupTitle> reporter_type_cbb;
    @FXML
    ComboBox<String> type_title_cbb, code_cbb;

    private TrucThuocService trucThuocService = new TrucThuocImp();
    private NguonNXService nguonNXService = new NguonNXImp();
    private CategoryService categoryService = new CategoryImp();

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        initTructhuocCmb();
        initGroupTitleCommbox();
        initTypeTitle();
        initCode();
    }

    private void initCode() {
        code_cbb.setItems(FXCollections.observableList(categoryService.getAllCode()));
        code_cbb.getSelectionModel().selectFirst();
    }

    private void initTypeTitle() {
        type_title_cbb.setItems(FXCollections.observableList(categoryService.getAllTypeTitle()));
        type_title_cbb.getSelectionModel().selectFirst();
    }

    private void initGroupTitleCommbox() {
        reporter_type_cbb.setItems(FXCollections.observableList(nguonNXService.getAllGroup()));
        reporter_type_cbb.setConverter(new StringConverter<GroupTitle>() {
            @Override
            public String toString(GroupTitle groupTitle) {
                if (groupTitle!=null){
                    group_selected_from_cbb = groupTitle.getId();
                }
                return groupTitle==null ? "" : groupTitle.getGroupName();
            }

            @Override
            public GroupTitle fromString(String s) {
                return nguonNXService.findGroupById(group_selected_from_cbb);
            }
        });
        reporter_type_cbb.getSelectionModel().selectLast();
    }

    private void initTructhuocCmb() {
        tructhuoc_cbb.setItems(FXCollections.observableList(trucThuocService.getAll()));
        tructhuoc_cbb.setConverter(new StringConverter<TrucThuoc>() {
            @Override
            public String toString(TrucThuoc trucThuoc) {
                if (trucThuoc!=null){
                    tructhuoc_selected_from_cbb = trucThuoc.getId();
                }
                return trucThuoc==null ? "" : trucThuoc.getName();
            }

            @Override
            public TrucThuoc fromString(String s) {
                return trucThuocService.findById(tructhuoc_selected_from_cbb);
            }
        });
        tructhuoc_cbb.getSelectionModel().selectFirst();
    }

    @FXML
    public void addNew(ActionEvent actionEvent) {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("LƯU");
        alert.setHeaderText("Lưu thay đổi");
        alert.setContentText("Xác nhận Lưu thay đổi?");
        if (alert.showAndWait().get() == ButtonType.OK){
            addNewNguonnx();
        }

        //create new category
//        String header_lv1 = report_title1.getText();
//        String header_lv2 = report_title2.getText();
//        String header_lv3 = report_title3.getText();
//        String typeTitle = type_title_cbb.getSelectionModel().getSelectedItem();
//        String code = code_cbb.getSelectionModel().getSelectedItem();
//
//        categoryService.create(new Category(header_lv1, header_lv2, header_lv3, typeTitle, tructhuoc_id, code));
    }

    private void addNewNguonnx() {
        //add ngnx
        nguonNXService.create(new NguonNx(unit_name.getText()));

        int nguonnx_id = nguonNXService.findNguonNXByName_NON(unit_name.getText()).getId();
        int tructhuoc_id = tructhuoc_cbb.getSelectionModel().getSelectedItem().getId();
        int group_id = reporter_type_cbb.getSelectionModel().getSelectedItem().getId();
        //  add new nguonnx_title
        nguonNXService.createNew(new NguonnxTitle(nguonnx_id, tructhuoc_id,group_id));
    }

    @FXML
    public void cancel(ActionEvent actionEvent) {
        DonviController.unit_stage.close();
    }
}
