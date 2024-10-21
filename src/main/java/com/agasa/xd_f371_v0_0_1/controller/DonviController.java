package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.NguonNxTrucThuocDTO;
import com.agasa.xd_f371_v0_0_1.dto.UnitsDto;
import com.agasa.xd_f371_v0_0_1.entity.*;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import javafx.util.StringConverter;

import java.io.IOException;
import java.net.URL;
import java.util.*;
import java.util.stream.Collectors;

public class DonviController implements Initializable {

    public static Stage unit_stage;
    public static NguonNx selectedUnit;
    @FXML
    private TableView<NguonNx> tb_unit;
    @FXML
    private TableView<Tcn> tb_property;
    @FXML
        private TableColumn<NguonNx, String> col_name_unit,col_create_time;
    @FXML
    private TableColumn<Tcn, String> col_property_name,col_property_btype  ,col_property_status;

    private NguonNXService nguonNXService = new NguonNXImp();
    private TrucThuocService trucThuocService = new TrucThuocImp();
    private NguonNx_tructhuocService nguonNxTructhuocService = new NguonNx_tructhuocImp();
    private LoaiPhieuService loaiPhieuService = new LoaiPhieuImp();
    private TcnService tcnService = new TcnImp();


    @Override
    public void initialize(URL location, ResourceBundle resources) {
        selectedUnit = new NguonNx();
        fillDataForTable_tcn();
        fillDataForTable_nguonnx();
    }

    private void fillDataForTable_nguonnx(){
        tb_unit.setItems(FXCollections.observableList(nguonNXService.getAll()));
        setFactoryCell_for_Nguonnx();
    }

    private void fillDataForTable_tcn(){
        tb_property.setItems(FXCollections.observableList(tcnService.getAll()));
        setFactoryCell_for_Tcn();
    }

    private void setFactoryCell_for_Tcn() {
        col_property_btype.setCellValueFactory(new PropertyValueFactory<Tcn, String>("lp"));
        col_property_name.setCellValueFactory(new PropertyValueFactory<Tcn, String>("name"));
        col_property_status.setCellValueFactory(new PropertyValueFactory<Tcn, String>("status"));
    }

    private void setFactoryCell_for_Nguonnx(){
        col_name_unit.setCellValueFactory(new PropertyValueFactory<NguonNx, String>("ten"));
        col_create_time.setCellValueFactory(new PropertyValueFactory<NguonNx, String>("createtime"));
    }

    private void showUnitsDetailScreen() throws IOException {
        selectedUnit = tb_unit.getSelectionModel().getSelectedItem();
        Parent root = FXMLLoader.load(getClass().getResource("../unit_detail.fxml"));
        Scene scene = new Scene(root);
        unit_stage = new Stage();
        unit_stage.setScene(scene);
        unit_stage.initStyle(StageStyle.DECORATED);
        unit_stage.initModality(Modality.APPLICATION_MODAL);
        unit_stage.setTitle("Chi tiết");
        unit_stage.showAndWait();
    }

    @FXML
    public void searchButtonUnit(ActionEvent actionEvent) {
    }

    @FXML
    public void unit_clicked(MouseEvent mouseEvent) throws IOException {
        showUnitsDetailScreen();
    }

    @FXML
    public void addUnitAction(ActionEvent actionEvent) {
    }

    @FXML
    public void editUnitAction(ActionEvent actionEvent) {
    }

    @FXML
    public void deleteUnitAction(ActionEvent actionEvent) {
    }

    @FXML
    public void tb_tcn_clicked(MouseEvent mouseEvent) {
    }

    @FXML
    public void addPropertyAction(ActionEvent actionEvent) {
    }

    @FXML
    public void editPropertyAction(ActionEvent actionEvent) {
    }

    @FXML
    public void delPropertyAction(ActionEvent actionEvent) {
    }
}
