package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.F371Application;
import com.agasa.xd_f371_v0_0_1.dto.LichsuXNK;
import com.agasa.xd_f371_v0_0_1.dto.SoCaiDto;
import com.agasa.xd_f371_v0_0_1.dto.TonKho;
import com.agasa.xd_f371_v0_0_1.model.TTPhieuModel;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
import javafx.application.Application;
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
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;
import javafx.util.Callback;
import org.controlsfx.control.textfield.AutoCompletionBinding;
import org.controlsfx.control.textfield.TextFields;


import java.lang.reflect.Constructor;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class CreateFormController implements Initializable {
    @FXML
    private TextField dvnTf, dvvcTf, soTf, recvTf,tcNhap,lenhKHso,soXe,
            donGiaTf, phaiXuatTf, tenXDTf,thucXuatTf,tThucTe, vcf,tyTrong;
    @FXML
    private Label dateIf, lb_chungloai;
    @FXML
    private DatePicker tungay, denngay;
    @FXML
    private Button addbtn, delbtn, importbtn, cancelbtn;
    private static List<SoCaiDto> ls_socai;

    private static int stt = 0;
    private static int click_index;
    @FXML
    private TableColumn<SoCaiDto, String> tbTT,tbTenXD,tbDonGia, tbPx,tbNhietDo, tbTyTrong, tbVCf, tbTx, tbThanhTien;
    @FXML
    private TableView<SoCaiDto> tableView;

    private TonKhoService tonKhoService = new TonkhoImp();
    private LichsuNXKService lichsuNXKService = new LichsuNXKImp();
    private LoaiXdService loaiXdService = new LoaiXdImp();
    private SoCaiService soCaiService = new SoCaiImp();
    private NguonNXService nguonNXService = new NguonNXImp();
    private AutoCompletionBinding<String> autoCompletionBinding;
    private Set<String> possibleSuggestions_loaiXd;
    private Set<String> getPossibleSuggestions_NguonNx;
    ObservableList<SoCaiDto> initialData1(){
        return FXCollections.observableArrayList();
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        click_index = -1;
        stt=0;
        ls_socai = new ArrayList<>();
        tableView.setItems(initialData1());
        dvvcTf.requestFocus();
        setEventForTF();
        TextFields.bindAutoCompletion(tenXDTf, _possibleSuggestion());

        TextFields.bindAutoCompletion(dvvcTf, _possibleSuggestion_nguonnx());
        if (click_index == -1 && ls_socai.isEmpty()){
            delbtn.setDisable(true);
        }
        tableView.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                SoCaiDto soCaiDto =  tableView.getSelectionModel().getSelectedItem();
                click_index = soCaiDto.getStt() - 1;
                if (click_index != -1 && !ls_socai.isEmpty()){
                    delbtn.setDisable(false);
                }
                fillDataToTextField(soCaiDto);
            }
        });
    }

    private Set<String> _possibleSuggestion(){
        List<String> list = new ArrayList<>();

        loaiXdService.getAll().forEach(x -> list.add(x.getTenxd().trim() + " ["+x.getChungloai().trim()+"]"));
        possibleSuggestions_loaiXd = new HashSet<>(list);
        return possibleSuggestions_loaiXd;
    }

    private Set<String> _possibleSuggestion_nguonnx() {
        List<String> list = new ArrayList<>();
        nguonNXService.getAll().forEach(x -> list.add(x.getTen().trim()));
        getPossibleSuggestions_NguonNx = new HashSet<>(list);
        return getPossibleSuggestions_NguonNx;
    }

    private SoCaiDto getDataFromField(){
        SoCaiDto soCaiDto = new SoCaiDto();
        soCaiDto.setDvi(dvnTf.getText());
        soCaiDto.setNgay(tungay.getValue().format(DateTimeFormatter.ofPattern("YYYY-MM-dd")));
        String str = tenXDTf.getText();
        soCaiDto.setTen_xd(str.substring(0, str.indexOf("[")).trim());
        soCaiDto.setLoai_phieu("N");
        soCaiDto.setSo(soTf.getText());
        soCaiDto.setTheo_lenh_so(lenhKHso.getText());
        soCaiDto.setNhiem_vu(tcNhap.getText());
        soCaiDto.setNguoi_nhan_hang(recvTf.getText());
        soCaiDto.setSo_xe(soXe.getText());
        soCaiDto.setDon_gia(Integer.parseInt(donGiaTf.getText()));
        soCaiDto.setPhai_xuat(Integer.parseInt(phaiXuatTf.getText()));
        soCaiDto.setThuc_xuat(Integer.parseInt(thucXuatTf.getText()));
        soCaiDto.setNhiet_do_tt(Double.parseDouble(tThucTe.getText()));
        soCaiDto.setHe_so_vcf(Integer.parseInt(vcf.getText()));
        soCaiDto.setTy_trong(Double.parseDouble(tyTrong.getText()));
        soCaiDto.setThanh_tien(Integer.parseInt(thucXuatTf.getText()) * Integer.parseInt(donGiaTf.getText()));
        soCaiDto.setDvvc(dvvcTf.getText());
        return soCaiDto;
    }
    private boolean validateF(){
        if (dvnTf.getText().isEmpty()){
            dvnTf.setStyle("-fx-border-color: red; -fx-border-with:4px;");
            return true;
        }
        return false;
    }

    private void fillDataToTextField(SoCaiDto soCaiDto){
        tenXDTf.setText(String.valueOf(soCaiDto.getTen_xd()));
        donGiaTf.setText(String.valueOf(soCaiDto.getDon_gia()));
        phaiXuatTf.setText(String.valueOf(soCaiDto.getPhai_xuat()));
        thucXuatTf.setText(String.valueOf(soCaiDto.getThuc_xuat()));
        tThucTe.setText(String.valueOf(soCaiDto.getNhiet_do_tt()));
        vcf.setText(String.valueOf(soCaiDto.getHe_so_vcf()));
        tyTrong.setText(String.valueOf(soCaiDto.getTy_trong()));
    }

    private void addNewImport(){
        tbTT.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("stt"));
        tbTenXD.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("ten_xd"));
        tbDonGia.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("don_gia"));
        tbPx.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("phai_xuat"));
        tbTx.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("thuc_xuat"));
        tbNhietDo.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("nhiet_do_tt"));
        tbVCf.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("he_so_vcf"));
        tbTyTrong.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("ty_trong"));
        tbThanhTien.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("thanh_tien"));
    }

    @FXML
    private void btnInsert(ActionEvent event){
        SoCaiDto soCaiDto= getDataFromField();
        stt = stt+1;
        soCaiDto.setStt(stt);
        addNewImport();
        ls_socai.add(soCaiDto);
        ObservableList<SoCaiDto> observableList = FXCollections.observableList(ls_socai);
        tableView.setItems(observableList);
//        soCaiService.create(soCaiDto);
        clearHH();
    }

    @FXML
    public void delAction(ActionEvent actionEvent) {
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
                tableView.setItems(observableList);
                delbtn.setDisable(true);
                if (ls_socai.isEmpty()){
                    click_index = -1;
                    stt = 0;
                    tableView.refresh();
                }

            } else if (response==cancel) {
                System.out.println("CAncel");
            }
        });
    }

    @FXML
    public void editAction(ActionEvent actionEvent) {
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
                tableView.setItems(observableList);
            } else if (response==cancel) {
                System.out.println("CAncel");
            }
        });
    }

    private void autoCompletionLearnWord(String newWord) {

        possibleSuggestions_loaiXd.add(newWord);

        if (autoCompletionBinding != null){
            autoCompletionBinding.dispose();
        }
        autoCompletionBinding = TextFields.bindAutoCompletion(tenXDTf,possibleSuggestions_loaiXd);
    }
    private void autoCompletionLearnWord_nguonnx(String newWord) {

        getPossibleSuggestions_NguonNx.add(newWord);

        if (autoCompletionBinding != null){
            autoCompletionBinding.dispose();
        }
        autoCompletionBinding = TextFields.bindAutoCompletion(tenXDTf,getPossibleSuggestions_NguonNx);
    }

    private void clearHH(){
        tenXDTf.clear();
        donGiaTf.clear();
        phaiXuatTf.clear();
        thucXuatTf.clear();
        tThucTe.clear();
        vcf.clear();
        tyTrong.clear();
    }

    @FXML
    public void btnImport(ActionEvent actionEvent) {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("NHẬP");
        alert.setHeaderText("Tạo phiếu nhập.");
        alert.setContentText("Xác nhận tạo phiếu nhập ?");
        if (alert.showAndWait().get() == ButtonType.OK){
            if (!ls_socai.isEmpty()){
                try {
                ls_socai.forEach(soCaiDto -> {
                    soCaiDto.setSo_km("0");
                    soCaiDto.setSo_gio("0");
                    soCaiService.create(soCaiDto);
                    List<TonKho> tonKhos =tonKhoService.findByLoaiXD(soCaiDto.getTen_xd().trim(), soCaiDto.getDon_gia());


                    if (tonKhos.isEmpty()){
                        createNewTonKho(soCaiDto);
                    }else {
                        int sl_ton_truoc = tonKhos.get(0).getSoluong();
                        updateTonKho(soCaiDto, sl_ton_truoc);
                    }
                });

                    F371Application.rootStage.close();

                    Stage stage = new Stage();
                    Parent root = FXMLLoader.load(getClass().getResource("../dashboard2.fxml"));
                    Scene scene = new Scene(root);
                    stage.setMaximized(true);
                    stage.setScene(scene);
                    stage.show();
                } catch (Exception e) {
                    Alert error= new Alert(Alert.AlertType.ERROR);
                    error.setTitle("Lỗi");
                    error.setContentText("Có lỗi xảy ra");
                    error.showAndWait();
                    throw new RuntimeException(e);
                }
                DashboardController.primaryStage.close();
            }
            else {
                Alert error= new Alert(Alert.AlertType.ERROR);
                error.setTitle("Lỗi");
                error.setContentText("Phiếu nhập trống");
                error.showAndWait();
            }
        }
    }
    @FXML
    public void btnCancel(ActionEvent actionEvent) {
        DashboardController.primaryStage.close();
    }

    private void createNewTonKho(SoCaiDto soCaiDto){
        createNewTransaction(soCaiDto, 0, soCaiDto.getThuc_xuat());
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
        int sl_nhap = soCaiDto.getThuc_xuat();
        int sl_ton_sau = sl_tt + sl_nhap;
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
        lichsuXNK.setMucgia(String.valueOf(soCaiDto.getDon_gia()));
        lichsuXNK.setTonsau(tonsau);
        lichsuNXKService.createNew(lichsuXNK);
    }


    private void setEventForTF(){
        tenXDTf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case ENTER :
                        autoCompletionLearnWord(tenXDTf.getText().trim());
                        break;
                    case TAB:
                        donGiaTf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        dvvcTf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case ENTER :
                        autoCompletionLearnWord_nguonnx(dvvcTf.getText().trim());
                        break;
                    case TAB:
                        dvnTf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        dvnTf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        soTf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        soTf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        recvTf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        recvTf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        tcNhap.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        tcNhap.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        lenhKHso.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        lenhKHso.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        soXe.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        soXe.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        tungay.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        soXe.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        tenXDTf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        tenXDTf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        donGiaTf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        donGiaTf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        phaiXuatTf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        phaiXuatTf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        thucXuatTf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        thucXuatTf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        tThucTe.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        tThucTe.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        vcf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        vcf.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        tyTrong.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
        tyTrong.setOnKeyPressed(new EventHandler<KeyEvent>() {
            @Override
            public void handle(KeyEvent keyEvent) {
                switch (keyEvent.getCode()){
                    case TAB:
                        tenXDTf.requestFocus();
                        break;
                    default:
                        break;
                }
            }
        });
    }
}
