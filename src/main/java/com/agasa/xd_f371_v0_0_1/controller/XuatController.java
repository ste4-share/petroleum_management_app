package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.F371Application;
import com.agasa.xd_f371_v0_0_1.dto.LichsuXNK;
import com.agasa.xd_f371_v0_0_1.dto.SoCaiDto;
import com.agasa.xd_f371_v0_0_1.dto.TTPhieuDto;
import com.agasa.xd_f371_v0_0_1.dto.TonKho;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
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
import javafx.stage.Stage;
import org.controlsfx.control.textfield.AutoCompletionBinding;
import org.controlsfx.control.textfield.TextFields;

import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class XuatController implements Initializable {

    private static int stt = 0;
    private static int click_index;
    private static List<SoCaiDto> ls_socai;

    @FXML
    private TextField fx_dvn, fx_dvvc, fx_so, fx_nguoinhan,fx_tcn,fx_lenhkhso,fx_soxe,
            fx_sokm, fx_sogio, fx_tenxd,fx_dongia,fx_phaixuat, fx_nhietdothucte,fx_vcf, fx_tytrong,fx_thucxuat;
    @FXML
    private Button editBtn,addBtn, delBtn, exportBtn,cancelBtn;
    @FXML
    private TableView<SoCaiDto> tbXuat;
    @FXML
    private DatePicker tungay, denngay;
    @FXML
    private TableColumn<SoCaiDto, String> col_stt, col_tenxd, col_dongia,col_phaixuat,col_nhietdo,col_tytrong,col_vcf,col_thucxuat,col_thanh_tien;

    private TonKhoService tonKhoService = new TonkhoImp();
    private LichsuNXKService lichsuNXKService = new LichsuNXKImp();
    private LoaiXdService loaiXdService = new LoaiXdImp();
    private SoCaiService soCaiService = new SoCaiImp();
    private NguonNXService nguonNXService = new NguonNXImp();
    private AutoCompletionBinding<String> autoCompletionBinding;
    private Set<String> possibleSuggestions_loaiXd;
    private Set<String> getPossibleSuggestions_NguonNx;


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        ls_socai = new ArrayList<>();
        TextFields.bindAutoCompletion(fx_tenxd, _possibleSuggestion());
        TextFields.bindAutoCompletion(fx_dvn, _possibleSuggestion_nguonnx());
        if (click_index == -1 && ls_socai.isEmpty()){
            delBtn.setDisable(true);
        }
        tbXuat.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                SoCaiDto soCaiDto =  tbXuat.getSelectionModel().getSelectedItem();
                click_index = soCaiDto.getStt() - 1;
                if (click_index != -1 && !ls_socai.isEmpty()){
                    delBtn.setDisable(false);
                }
                fillDataToTextField(soCaiDto);
            }
        });
        addBtn.setOnAction(actionEvent -> {
            SoCaiDto soCaiDto= getDataFromField();
            stt = ls_socai.size();
            stt = stt+1;
            soCaiDto.setStt(stt);
            addNewImport();
            ls_socai.add(soCaiDto);
            ObservableList<SoCaiDto> observableList = FXCollections.observableList(ls_socai);
            tbXuat.setItems(observableList);
//        soCaiService.create(soCaiDto);
            clearHH();
        });
        editBtn.setOnAction(actionEvent -> {
            ButtonType edit = new ButtonType("Sửa");
            ButtonType cancel = new ButtonType("Hủy " +
                    "bỏ");
            Alert a = new Alert(Alert.AlertType.WARNING, "", edit, cancel);
            a.setTitle("" +
                    "Sửa");
            a.setContentText("Xác nhận chỉnh " +
                    "sửa: " + ls_socai.get(click_index).getStt());
            a.showAndWait().ifPresent(response -> {
                if (response==edit){
                    SoCaiDto soCaiDto = getDataFromField();
                    soCaiDto.setStt(click_index+1);
                    ls_socai.set(click_index, soCaiDto);
                    ObservableList<SoCaiDto> observableList = FXCollections.observableList(ls_socai);
                    tbXuat.setItems(observableList);
                } else if (response==cancel) {
                    System.out.println("CAncel");
                }
            });
        });
        delBtn.setOnAction(actionEvent -> {
            ButtonType delete = new ButtonType("Delete");
            ButtonType cancel = new ButtonType("Cancel");
            Alert a = new Alert(Alert.AlertType.NONE, "", delete, cancel);
            a.setTitle("Delete");
            a.setContentText("Do you really want delete number " + ls_socai.get(click_index).getStt());
            a.showAndWait().ifPresent(response -> {
                if (response==delete){
                    ls_socai.remove(click_index);
                    int index = 1;
                    for (SoCaiDto i : ls_socai){
                        i.setStt(index);
                        index= index +1;
                    }
                    ObservableList<SoCaiDto> observableList = FXCollections.observableList(ls_socai);
                    tbXuat.setItems(observableList);
                    delBtn.setDisable(true);
                    if (ls_socai.isEmpty()){
                        click_index = -1;
                        stt = 0;
                    }

                } else if (response==cancel) {
                    System.out.println("CAncel");
                }
            });
        });
        exportBtn.setOnAction(actionEvent -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("XUẤT");
            alert.setHeaderText("Tạo phiếu XUẤT.");
            alert.setContentText("Xác nhận tạo phiếu XUẤT ?");
            if (alert.showAndWait().get() == ButtonType.OK){
                if (!ls_socai.isEmpty()){
                    ls_socai.forEach(soCaiDto -> {
                        soCaiService.create(soCaiDto);
                        List<TonKho> tonKhos =tonKhoService.findByLoaiXD(soCaiDto.getTen_xd(), soCaiDto.getDon_gia());
                        if (tonKhos.size()==0){
                            createNewTonKho(soCaiDto);
                        }else {
                            int sl_ton_truoc = tonKhos.get(0).getSoluong();
                            updateTonKho(soCaiDto, sl_ton_truoc);
                        }
                    });
                    try {
                        F371Application.rootStage.close();
                        Stage stage = new Stage();
                        Parent root = FXMLLoader.load(getClass().getResource("../dashboard2.fxml"));
                        Scene scene = new Scene(root);
                        stage.setMaximized(true);
                        stage.setScene(scene);
                        stage.show();
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                    DashboardController.xuatStage.close();
                }
                else {
                    Alert error= new Alert(Alert.AlertType.ERROR);
                    error.setTitle("Lỗi");
                    error.setContentText("Phiếu xuất trống");
                    error.showAndWait();
                }
            }
        });
        cancelBtn.setOnAction(actionEvent -> {
            DashboardController.xuatStage.close();
        });
    }
    private void createNewTonKho(SoCaiDto soCaiDto){
        createNewTransaction(soCaiDto, 0, soCaiDto.getThuc_xuat()*(-1));
        TonKho tonKho = new TonKho();
        tonKho.setLoai_xd(soCaiDto.getTen_xd().trim());
        tonKho.setMucgia(soCaiDto.getDon_gia());
        tonKho.setSoluong(soCaiDto.getThuc_xuat());
        // get current day
        String pattern = "MM/dd/yyyy HH:mm:ss";
        DateFormat df = new SimpleDateFormat(pattern);
        Date today = Calendar.getInstance().getTime();
        String todayAsString = df.format(today);
        tonKho.setCreatetime(todayAsString);
        tonKho.setStatus("CREATED");
        tonKhoService.create(tonKho);
    }
    private void updateTonKho(SoCaiDto soCaiDto, int sl_tt){
        int sl_xuat = soCaiDto.getThuc_xuat();
        int sl_ton_sau = sl_tt - sl_xuat;
        createNewTransaction(soCaiDto, sl_tt, sl_ton_sau);
        TonKho tonKho = new TonKho();
        tonKho.setLoai_xd(soCaiDto.getTen_xd().trim());
        tonKho.setMucgia(soCaiDto.getDon_gia());
        tonKho.setSoluong(sl_ton_sau);
        // get current day
        String pattern = "MM-dd-yyyy HH:mm:ss";
        DateFormat df = new SimpleDateFormat(pattern);
        Date today = Calendar.getInstance().getTime();
        String todayAsString = df.format(today);
        tonKho.setCreatetime(todayAsString);
        tonKho.setStatus("CREATED");
        tonKhoService.update(tonKho);
    }
    private void createNewTransaction(SoCaiDto soCaiDto,  int tontruoc, int tonsau){
        LichsuXNK lichsuXNK = new LichsuXNK();
        lichsuXNK.setTen_xd(soCaiDto.getTen_xd());
        lichsuXNK.setLoai_phieu(soCaiDto.getLoai_phieu().equals("N") ? "Nhập" : "Xuất");
        lichsuXNK.setSoluong(soCaiDto.getThuc_xuat());
        lichsuXNK.setCreateTime(soCaiDto.getNgay());
        lichsuXNK.setTontruoc(tontruoc);
        lichsuXNK.setTonsau(tonsau);
        lichsuXNK.setMucgia(String.valueOf(soCaiDto.getDon_gia()));
        lichsuNXKService.createNew(lichsuXNK);
    }

    private void fillDataToTextField(SoCaiDto soCaiDto){
        fx_tenxd.setText(String.valueOf(soCaiDto.getTen_xd()));
        fx_dongia.setText(String.valueOf(soCaiDto.getDon_gia()));
        fx_phaixuat.setText(String.valueOf(soCaiDto.getPhai_xuat()));
        fx_thucxuat.setText(String.valueOf(soCaiDto.getThuc_xuat()));
        fx_nhietdothucte.setText(String.valueOf(soCaiDto.getNhiet_do_tt()));
        fx_vcf.setText(String.valueOf(soCaiDto.getHe_so_vcf()));
        fx_tytrong.setText(String.valueOf(soCaiDto.getTy_trong()));
    }

    private void addNewImport(){
        col_stt.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("stt"));
        col_tenxd.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("ten_xd"));
        col_dongia.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("don_gia"));
        col_phaixuat.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("phai_xuat"));
        col_thucxuat.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("thuc_xuat"));
        col_nhietdo.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("nhiet_do_tt"));
        col_vcf.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("he_so_vcf"));
        col_tytrong.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("ty_trong"));
        col_thanh_tien.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("thanh_tien"));
    }

    private void clearHH(){
        fx_tenxd.clear();
        fx_dongia.clear();
        fx_phaixuat.clear();
        fx_thucxuat.clear();
        fx_nhietdothucte.clear();
        fx_vcf.clear();
        fx_tytrong.clear();
    }

    private SoCaiDto getDataFromField(){
        SoCaiDto soCaiDto = new SoCaiDto();
        soCaiDto.setDvi(fx_dvn.getText());
        soCaiDto.setNgay(tungay.getValue().format(DateTimeFormatter.ofPattern("YYYY-MM-dd")));
        String str = fx_tenxd.getText();
        soCaiDto.setTen_xd(str.substring(0, str.indexOf("[")).trim());
        soCaiDto.setLoai_phieu("X");
        soCaiDto.setSo(fx_so.getText());
        soCaiDto.setTheo_lenh_so(fx_lenhkhso.getText());
        soCaiDto.setNhiem_vu(fx_tcn.getText());
        soCaiDto.setNguoi_nhan_hang(fx_nguoinhan.getText());
        soCaiDto.setSo_xe(fx_soxe.getText());
        soCaiDto.setDon_gia(Integer.parseInt(fx_dongia.getText()));
        soCaiDto.setPhai_xuat(Integer.parseInt(fx_phaixuat.getText()));
        soCaiDto.setThuc_xuat(Integer.parseInt(fx_thucxuat.getText()));
        soCaiDto.setNhiet_do_tt(Double.parseDouble(fx_nhietdothucte.getText()));
        soCaiDto.setHe_so_vcf(Integer.parseInt(fx_vcf.getText()));
        soCaiDto.setTy_trong(Double.parseDouble(fx_tytrong.getText()));
        soCaiDto.setThanh_tien(Integer.parseInt(fx_thucxuat.getText()) * Integer.parseInt(fx_dongia.getText()));
        soCaiDto.setDvvc(fx_dvvc.getText());
        soCaiDto.setSo_gio(fx_sogio.getText());
        soCaiDto.setSo_km(fx_sokm.getText());
        return soCaiDto;
    }

    private Set<String> _possibleSuggestion(){
        List<String> list = new ArrayList<>();
        loaiXdService.getAll().forEach(x -> list.add(x.getTenxd().trim()+ " ["+x.getChungloai().trim()+"]"));
        possibleSuggestions_loaiXd = new HashSet<>(list);
        return possibleSuggestions_loaiXd;
    }

    private Set<String> _possibleSuggestion_nguonnx() {
        List<String> list = new ArrayList<>();
        nguonNXService.getAll().forEach(x -> list.add(x.getTen().trim()));
        getPossibleSuggestions_NguonNx = new HashSet<>(list);
        return getPossibleSuggestions_NguonNx;
    }
}
