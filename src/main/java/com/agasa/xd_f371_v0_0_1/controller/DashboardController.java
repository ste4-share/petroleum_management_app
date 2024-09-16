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
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
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
    private static int before_click_ind;
    private static int click_ind = 1;

    @FXML
    private BorderPane borderpane_base;
    @FXML
    private HBox nxt_hbox;
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
    private TableColumn<TTPhieuModel, String> so,ngaytao, loaiphieu, hanghoa;
    @FXML
    private TableColumn<TTPhieuModel, String> tong;
    @FXML
    private SoCaiService soCaiService = new SoCaiImp();
    private LichsuNXKService lichsuNXKService = new LichsuNXKImp();
    private TonKhoService tonKhoService = new TonkhoImp();
    private List<TonKho> tkls;


    @FXML
    private HBox dvi_menu,nxt_menu, loai_xd_menu, haohut_menu, dinhmuc_menu;
    @FXML
    private AnchorPane main_menu;



    ObservableList<TTPhieuModel> initialData(){
        return FXCollections.observableArrayList();
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        tkls = new ArrayList<>();
        int index = 0;
        String cssLayout1 =
                "-fx-border-color: #aaaaaa;\n" +
                        "-fx-background-color: #aaaaaa;\n" ;
        nxt_menu.setStyle(cssLayout1
        );
        dvi_menu.setStyle(resetStyle());
        loai_xd_menu.setStyle(resetStyle());
        haohut_menu.setStyle(resetStyle());
        dinhmuc_menu.setStyle(resetStyle());


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

                if (click_ind ==2){
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


                        click_ind=1;
                        ctStage = new Stage();
                        Scene scene = new Scene(root);
                        ctStage.setScene(scene);
                        ctStage.initStyle(StageStyle.DECORATED);
                        ctStage.initModality(Modality.APPLICATION_MODAL);
                        ctStage.setTitle("CHI TIẾT");
                        ctStage.show();
                    }catch (NullPointerException e){
                        System.out.println("----so is null----");
                        e.printStackTrace();
                    }
                }else {
                    click_ind= click_ind+1;
                }

            }
        });

        String cssLayout =
                "-fx-border-insets: 5;\n" +
                "-fx-background-color: #262626;\n" +
                "-fx-background-radius: 0 150 0 0;\n" ;

        main_menu.setStyle(cssLayout);
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

        ttPhieuDtoList.forEach(item -> ttPhieuModelList.add(new TTPhieuModel(item.getSo(),item.getNgaytao(), item.getLoai_phieu(), item.getDvn(), item.getDvvc(),item.getTcn(),item.getHang_hoa(),String.valueOf(item.getTong()))));
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
        ngaytao.setCellValueFactory(item -> new SimpleStringProperty(item.getValue().getNgaytao()));
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
        List<TTPhieuDto> ttPhieuDtoList = soCaiService.getTTPhieu();
        List<TTPhieuModel> ttPhieuModelList = new ArrayList<>();

        ttPhieuDtoList.forEach(item -> ttPhieuModelList.add(new TTPhieuModel(item.getSo(),item.getNgaytao(), item.getLoai_phieu(), item.getDvn(), item.getDvvc(),item.getTcn(),item.getHang_hoa(),String.valueOf(item.getTong()))));
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

    @FXML
    public void nxt_menu_action(MouseEvent event) {
        String cssLayout =
                "-fx-border-color: #aaaaaa;\n" +
                "-fx-background-color: #aaaaaa;\n" ;
        nxt_menu.setStyle(cssLayout);
        dvi_menu.setStyle(resetStyle());
        loai_xd_menu.setStyle(resetStyle());
        haohut_menu.setStyle(resetStyle());
        dinhmuc_menu.setStyle(resetStyle());

        borderpane_base.setCenter(nxt_hbox);
    }

    @FXML
    public void dvi_menu_action(MouseEvent event) {
        String cssLayout =
                "-fx-border-color: #aaaaaa;\n" +
                "-fx-background-color: #aaaaaa;\n" ;
        dvi_menu.setStyle(cssLayout);
        loai_xd_menu.setStyle(resetStyle());
        haohut_menu.setStyle(resetStyle());
        dinhmuc_menu.setStyle(resetStyle());
        nxt_menu.setStyle(resetStyle());


        Label label = new Label("Dvi clicked");
        borderpane_base.setCenter(label);
    }

    @FXML
    public void lxd_menu_action(MouseEvent event) {
        String cssLayout =
                "-fx-border-color: #aaaaaa;\n" +
                        "-fx-background-color: #aaaaaa;\n" ;
        loai_xd_menu.setStyle(cssLayout);
        dvi_menu.setStyle(resetStyle());
        haohut_menu.setStyle(resetStyle());
        dinhmuc_menu.setStyle(resetStyle());
        nxt_menu.setStyle(resetStyle());
    }

    @FXML
    public void haohut_menu_action(MouseEvent event) {
        String cssLayout =
                "-fx-border-color: #aaaaaa;\n" +
                        "-fx-background-color: #aaaaaa;\n" ;
        haohut_menu.setStyle(cssLayout);
        dvi_menu.setStyle(resetStyle());
        loai_xd_menu.setStyle(resetStyle());
        dinhmuc_menu.setStyle(resetStyle());
        nxt_menu.setStyle(resetStyle());
    }

    @FXML
    public void dinhmuc_menu_action(MouseEvent event) {
        String cssLayout =
                "-fx-border-color: #aaaaaa;\n" +
                        "-fx-background-color: #aaaaaa;\n" ;
        dinhmuc_menu.setStyle(cssLayout);
        dvi_menu.setStyle(resetStyle());
        haohut_menu.setStyle(resetStyle());
        loai_xd_menu.setStyle(resetStyle());
        nxt_menu.setStyle(resetStyle());
    }

    private String resetStyle(){
        String cssLayout =
                "-fx-cursor: hand;\n" +
                        "-fx-background-color: #262626;\n" ;
        return cssLayout;
    }
}
