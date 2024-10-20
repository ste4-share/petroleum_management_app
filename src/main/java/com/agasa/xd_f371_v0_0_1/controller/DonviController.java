package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.NguonNxTrucThuocDTO;
import com.agasa.xd_f371_v0_0_1.entity.*;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.util.StringConverter;

import java.net.URL;
import java.util.*;
import java.util.stream.Collectors;

public class DonviController implements Initializable {

    private static LoaiPhieu loaiphieuSelectedbyCbb = new LoaiPhieu();

    @FXML
    private TableView<NguonNx> tb_donvi;
    @FXML
    private TableColumn<NguonNx, String> col_dv_id,col_dv_ten,col_dv_loai,col_dv_loaitt;
    @FXML
    private TableView<TrucThuoc> tb_tructhuoc;
    @FXML
    private TableColumn<TrucThuoc, String> col_tt_id,col_tt_name  ,col_tt_type,col_tt_loaiphieu;
    @FXML
    private TableColumn<NguonNxTrucThuocDTO, String> colloaiphieu,name_tt_id,col_tructhuoc_id,col_nnx_id;
    @FXML
    private TableView<NguonNxTrucThuocDTO> ls_show_tt;
    @FXML
    private TableView<Tcn> tb_tcn;
    @FXML
    private TableColumn<Tcn, String> col_tcn_id,col_tcn_name;
    @FXML
    private ListView<String> ls_tructhuoc_selected;
    @FXML
    private ComboBox<LoaiPhieu> loaiphieuCbb;

    private NguonNXService nguonNXService = new NguonNXImp();
    private TrucThuocService trucThuocService = new TrucThuocImp();
    private NguonNx_tructhuocService nguonNxTructhuocService = new NguonNx_tructhuocImp();
    private LoaiPhieuService loaiPhieuService = new LoaiPhieuImp();
    private TcnService tcnService = new TcnImp();


    @Override
    public void initialize(URL location, ResourceBundle resources) {
        fillDataForTable_tructhuoc();
        fillDataForTable_tcn();
        fillDataForCbb_Loaiphieu();
        fillDataForTable_nguonnx();
    }



    @FXML
    public void donvi_clicked(MouseEvent mouseEvent) {
        NguonNx nguonNx = tb_donvi.getSelectionModel().getSelectedItem();
        List<NguonNxTrucThuocDTO> nguonNxTrucThuocDTO = nguonNxTructhuocService.findAllRelationship(nguonNx.getId());
        ls_show_tt.setItems(FXCollections.observableList(nguonNxTrucThuocDTO));
        setFactoryCell_for_TrucThuocShow();
    }

    @FXML
    public void AddButtonclick(ActionEvent actionEvent) {
        TrucThuoc trucThuoc = tb_tructhuoc.getSelectionModel().getSelectedItem();
        NguonNx nguonNx = tb_donvi.getSelectionModel().getSelectedItem();
        LoaiPhieu loaiPhieu = loaiPhieuService.findLoaiPhieuByType(ls_tructhuoc_selected.getSelectionModel().getSelectedItem());
        NguonNx_tructhuoc nguonNxTrucThuocDTO =  nguonNxTructhuocService.findByPrimaryKEy(nguonNx.getId(), trucThuoc.getId(), loaiPhieu.getId());
        if (nguonNxTrucThuocDTO==null){
            nguonNxTructhuocService.createNew(new NguonNx_tructhuoc(nguonNx.getId(), trucThuoc.getId(), loaiPhieu.getId()));
        }else{
            System.out.println("Nguonnx tructhuoc existed!");
        }
    }

    @FXML
    public void selectedTructhuoc(MouseEvent mouseEvent) {
        ls_tructhuoc_selected.setItems(FXCollections.observableList(loaiPhieuService.getAll().stream().map(x -> x.getType()).toList()));
    }

    @FXML
    public void resetButton(ActionEvent actionEvent) {

    }

    @FXML
    public void selectedTructhuocBYNguonNx(MouseEvent mouseEvent) {
        // to delete
    }

    @FXML
    public void deleteTrucThuoc(ActionEvent actionEvent) {
        NguonNxTrucThuocDTO t = ls_show_tt.getSelectionModel().getSelectedItem();
        NguonNx n = tb_donvi.getSelectionModel().getSelectedItem();
        nguonNxTructhuocService.delete(nguonNxTructhuocService.findByPrimaryKEy(n.getId(),t.getTructhuoc_id(),t.getLoaiphieu_id()));
        NguonNx nguonNx = tb_donvi.getSelectionModel().getSelectedItem();
        List<NguonNxTrucThuocDTO> nguonNxTrucThuocDTO = nguonNxTructhuocService.findAllRelationship(nguonNx.getId());
        ls_show_tt.setItems(FXCollections.observableList(nguonNxTrucThuocDTO));
        setFactoryCell_for_TrucThuocShow();
    }

    @FXML
    public void tb_tcn_clicked(MouseEvent mouseEvent) {

    }

    private void fillDataForTable_nguonnx(){
        tb_donvi.setItems(FXCollections.observableList(nguonNXService.getAllByLoaiPhieu(loaiphieuCbb.getSelectionModel().getSelectedItem().getId())));
        setFactoryCell_for_Nguonnx();
    }
    private void fillDataForTable_tructhuoc(){
        tb_tructhuoc.setItems(FXCollections.observableList(trucThuocService.getAll()));
        setFactoryCell_for_TrucThuoc();
    }
    private void fillDataForTable_tcn(){
        tb_tcn.setItems(FXCollections.observableList(tcnService.getAllByName("Xuất")));
        setFactoryCell_for_Tcn();
    }
    private void fillDataForCbb_Loaiphieu() {
        loaiphieuCbb.setConverter(new StringConverter<LoaiPhieu>() {
            @Override
            public String toString(LoaiPhieu loaiPhieu) {
                if (loaiPhieu!=null){
                    loaiphieuSelectedbyCbb = loaiPhieu;
                }
                return loaiPhieu==null ? "" : loaiPhieu.getType();
            }

            @Override
            public LoaiPhieu fromString(String s) {
                return loaiPhieuService.findLoaiPhieuByID(loaiphieuSelectedbyCbb.getId());
            }
        });
        loaiphieuCbb.setItems(FXCollections.observableList(loaiPhieuService.getAll()));
        loaiphieuCbb.getSelectionModel().selectFirst();
    }

    private void setFactoryCell_for_Tcn() {
        col_tcn_id.setCellValueFactory(new PropertyValueFactory<Tcn, String>("id"));
        col_tcn_name.setCellValueFactory(new PropertyValueFactory<Tcn, String>("name"));
    }

    private void setFactoryCell_for_Nguonnx(){
        col_dv_id.setCellValueFactory(new PropertyValueFactory<NguonNx, String>("id"));
        col_dv_ten.setCellValueFactory(new PropertyValueFactory<NguonNx, String>("ten"));
    }

    private void setFactoryCell_for_TrucThuoc(){
        col_tt_id.setCellValueFactory(new PropertyValueFactory<TrucThuoc, String>("id"));
        col_tt_name.setCellValueFactory(new PropertyValueFactory<TrucThuoc, String>("name"));
        col_tt_type.setCellValueFactory(new PropertyValueFactory<TrucThuoc, String>("type"));
    }

    private void setFactoryCell_for_TrucThuocShow(){
        col_tructhuoc_id.setCellValueFactory(new PropertyValueFactory<NguonNxTrucThuocDTO, String>("tructhuoc_id"));
        col_nnx_id.setCellValueFactory(new PropertyValueFactory<NguonNxTrucThuocDTO, String>("nguonnx_id"));
        name_tt_id.setCellValueFactory(new PropertyValueFactory<NguonNxTrucThuocDTO, String>("name"));
        colloaiphieu.setCellValueFactory(new PropertyValueFactory<NguonNxTrucThuocDTO, String>("type"));
    }

    @FXML
    public void selectLoaiPhieu(ActionEvent actionEvent) {
        tb_donvi.setItems(FXCollections.observableList(nguonNXService.getAllByLoaiPhieu(loaiphieuCbb.getSelectionModel().getSelectedItem().getId())));
        setFactoryCell_for_Nguonnx();
    }

    @FXML
    public void addnnxtcn(ActionEvent actionEvent) {
        NguonNxTcn nguonNxTcn = new NguonNxTcn();
        try {
            nguonNxTcn.setLoaiphieu_id(loaiphieuCbb.getSelectionModel().getSelectedItem().getId());
            nguonNxTcn.setTcn_id(tb_tcn.getSelectionModel().getSelectedItem().getId());
            nguonNxTcn.setNguonnx_id(tb_donvi.getSelectionModel().getSelectedItem().getId());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @FXML
    public void filldata(ActionEvent actionEvent) {
        nguonNXService.getAllByLoaiPhieu(loaiphieuCbb.getSelectionModel().getSelectedItem().getId()).forEach(x -> {
            for (int i=0; i< tcnService.getAllByName("Nhập").size(); i++){
                Tcn tcn = tcnService.getAllByName("Nhập").get(i);
                NguonNxTcn nguonNxTcn = new NguonNxTcn();
                try{
                    nguonNxTcn.setLoaiphieu_id(loaiphieuCbb.getSelectionModel().getSelectedItem().getId());
                    nguonNxTcn.setTcn_id(tcn.getId());
                    nguonNxTcn.setNguonnx_id(x.getId());
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        });

    }
}
