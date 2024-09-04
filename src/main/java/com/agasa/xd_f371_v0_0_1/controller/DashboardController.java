package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.LichsuXNK;
import com.agasa.xd_f371_v0_0_1.dto.TTPhieuDto;
import com.agasa.xd_f371_v0_0_1.dto.TonKho;
import com.agasa.xd_f371_v0_0_1.model.TTPhieuModel;
import com.agasa.xd_f371_v0_0_1.service.LichsuNXKService;
import com.agasa.xd_f371_v0_0_1.service.SoCaiService;
import com.agasa.xd_f371_v0_0_1.service.TonKhoService;
import com.agasa.xd_f371_v0_0_1.service.impl.LichsuNXKImp;
import com.agasa.xd_f371_v0_0_1.service.impl.SoCaiImp;
import com.agasa.xd_f371_v0_0_1.service.impl.TonkhoImp;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
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

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

public class DashboardController implements Initializable {

    public static Stage primaryStage;
    public static Stage xuatStage;
    public static Stage ctStage;
    public static String so_clicked;

    @FXML
    public TableView<TonKho> tb_tonkho;
    @FXML
    private TableView<LichsuXNK> tb_viewlichsu;
    @FXML
    private TableView<TonKho> tb_tkt;
    @FXML
    private TableColumn<TonKho, String> col_tkt_loaixd, col_tkt_soluong;
    @FXML
    private TableColumn<LichsuXNK, String> col_lsnxk_tenxd,col_lsnxk_mucgia, col_lsnxk_loaiphieu,col_lsnxk_soluong, col_lsnxk_tontruoc,col_lsnxk_tonsau,col_lsnxk_ngay;
    @FXML
    private TableColumn<TonKho, String> col_slton,col_loaixd,col_stt, col_mucgia;

    @FXML
    public TableView<TTPhieuModel> tbTTNX;
    @FXML
    private TableColumn<TTPhieuModel, String> so, loaiphieu, dvvc, tcnhap, hanghoa;
    @FXML
    private TableColumn<TTPhieuModel, String> tong;
    @FXML
    private SoCaiService soCaiService = new SoCaiImp();
    ObservableList<TTPhieuModel> initialData(){
        return FXCollections.observableArrayList();
    }

    private LichsuNXKService lichsuNXKService = new LichsuNXKImp();
    private TonKhoService tonKhoService = new TonkhoImp();
    private List<TonKho> tkls;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        tkls = new ArrayList<>();
        int index = 0;

        List<TonKho> tonKhoList = tonKhoService.getAll();
        for (TonKho tonKho : tonKhoList) {
            tonKho.setStt(index + 1);
            tkls.add(tonKho);
            index = index + 1;
        }
        setTonkhoList();
        ObservableList<TonKho> observableList_tonkho = FXCollections.observableList(tonKhoList);
        tb_tonkho.setItems(observableList_tonkho);
        setTongTonkhoList();


        ObservableList<TonKho> observableList_tongtonkho = FXCollections.observableList(tonKhoService.getTongKho());
        tb_tkt.setItems(observableList_tongtonkho);
        tbTTNX.setItems(initialData());
        setDataToViewTable();

        List<LichsuXNK> lichsuXNKS = lichsuNXKService.getAll();
        setColLichSuNXK();
        tb_viewlichsu.setItems(FXCollections.observableArrayList(lichsuXNKS));
        tbTTNX.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                try {
                    TTPhieuModel ttPhieuModel =  tbTTNX.getSelectionModel().getSelectedItem();
                    so_clicked = ttPhieuModel.getSo();
                    System.out.println("so :" +so_clicked);
                    Parent root = null;
                    try {
                        root = FXMLLoader.load(getClass().getResource("../chitietsc.fxml"));
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                    ctStage = new Stage();
                    Scene scene = new Scene(root);
                    ctStage.setScene(scene);
                    ctStage.initStyle(StageStyle.DECORATED);
                    ctStage.initModality(Modality.APPLICATION_MODAL);
                    ctStage.setTitle("CHI TIẾT");
                    ctStage.show();
                }catch (NullPointerException e){
                    e.printStackTrace();
                }
            }
        });

    }

    private void setTonkhoList(){
        col_stt.setCellValueFactory(new PropertyValueFactory<TonKho, String>("stt"));
        col_mucgia.setCellValueFactory(new PropertyValueFactory<TonKho, String>("mucgia"));
        col_loaixd.setCellValueFactory(new PropertyValueFactory<TonKho, String>("loai_xd"));
        col_slton.setCellValueFactory(new PropertyValueFactory<TonKho, String>("soluong"));
    }
    private void setColLichSuNXK(){
        col_lsnxk_ngay.setCellValueFactory(new PropertyValueFactory<LichsuXNK, String>("createTime"));
        col_lsnxk_tenxd.setCellValueFactory(new PropertyValueFactory<LichsuXNK, String>("ten_xd"));
        col_lsnxk_loaiphieu.setCellValueFactory(new PropertyValueFactory<LichsuXNK, String>("loai_phieu"));
        col_lsnxk_tontruoc.setCellValueFactory(new PropertyValueFactory<LichsuXNK, String>("tontruoc"));
        col_lsnxk_tonsau.setCellValueFactory(new PropertyValueFactory<LichsuXNK, String>("tonsau"));
        col_lsnxk_soluong.setCellValueFactory(new PropertyValueFactory<LichsuXNK, String>("soluong"));
        col_lsnxk_mucgia.setCellValueFactory(new PropertyValueFactory<LichsuXNK, String>("mucgia"));
    }

    private void setTongTonkhoList(){
        col_tkt_loaixd.setCellValueFactory(new PropertyValueFactory<TonKho, String>("loai_xd"));
        col_tkt_soluong.setCellValueFactory(new PropertyValueFactory<TonKho, String>("sl_tong"));
    }

    public void setDataToViewTable(){
        setCellVal_TTNX_Refresh();
        List<TTPhieuDto> ttPhieuDtoList = soCaiService.getTTPhieu();
        List<TTPhieuModel> ttPhieuModelList = new ArrayList<>();

        ttPhieuDtoList.forEach(item -> ttPhieuModelList.add(new TTPhieuModel(item.getSo(), item.getLoai_phieu(), item.getDvn(), item.getDvvc(),item.getTcn(),item.getHang_hoa(),String.valueOf(item.getTong()))));
        tbTTNX.setItems(FXCollections.observableArrayList(ttPhieuModelList));
    }

    public static Stage getPrimaryStage(){
        return primaryStage;
    }

    public DashboardController getInstance(){
        return this;
    };

    @FXML
    public void importActionClick(ActionEvent actionEvent) throws IOException{
        Parent root = FXMLLoader.load(getClass().getResource("../nhap.fxml"));
        primaryStage = new Stage();
        Scene scene = new Scene(root);
        primaryStage.setScene(scene);
        primaryStage.initStyle(StageStyle.DECORATED);
        primaryStage.initModality(Modality.APPLICATION_MODAL);
        primaryStage.setTitle("Nhập");
        primaryStage.show();
    }

    private void setCellVal_TTNX_Refresh(){
        so.setCellValueFactory(item -> new SimpleStringProperty(item.getValue().getSo()));
        loaiphieu.setCellValueFactory(item -> new SimpleStringProperty(item.getValue().getLoai_phieu()));
        dvvc.setCellValueFactory(item -> new SimpleStringProperty(item.getValue().getDvvc()));
        tcnhap.setCellValueFactory(item -> new SimpleStringProperty(item.getValue().getTcn()));
        hanghoa.setCellValueFactory(item -> new SimpleStringProperty(item.getValue().getHang_hoa()));
        tong.setCellValueFactory(item -> new SimpleStringProperty(item.getValue().getTong()));
    }

    public void refresh(){
        System.out.println("refresh...");
        tbTTNX.getItems().clear();
        tbTTNX.refresh();
        FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("../dashboard2.fxml"));
        try {
            fxmlLoader.load();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
//        tbTTNX.getItems().addAll(soCaiService.getTTPhieu());
//        tbTTNX.setItems(FXCollections.observableArrayList(soCaiService.getTTPhieu()));
//        tbTTNX.getItems().addAll(soCaiService.getTTPhieu());
//        tbTTNX.setItems(FXCollections.observableArrayList(soCaiService.getTTPhieu()));
        List<TTPhieuDto> ttPhieuDtoList = soCaiService.getTTPhieu();
        List<TTPhieuModel> ttPhieuModelList = new ArrayList<>();

        ttPhieuDtoList.forEach(item -> ttPhieuModelList.add(new TTPhieuModel(item.getSo(), item.getLoai_phieu(), item.getDvn(), item.getDvvc(),item.getTcn(),item.getHang_hoa(),String.valueOf(item.getTong()))));
        ObservableList<TTPhieuModel> observableList = FXCollections.observableArrayList(ttPhieuModelList);
        tbTTNX.setItems(FXCollections.observableArrayList(ttPhieuModelList));

    }

    @FXML
    public void exportBtnClick(ActionEvent actionEvent) throws IOException {
        Parent root = FXMLLoader.load(getClass().getResource("../xuat.fxml"));
        xuatStage = new Stage();
        Scene scene = new Scene(root);
        xuatStage.setScene(scene);
        xuatStage.initStyle(StageStyle.DECORATED);
        xuatStage.initModality(Modality.APPLICATION_MODAL);
        xuatStage.setTitle("XUẤT");
        xuatStage.show();
    }

}
