package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.F371Application;
import com.agasa.xd_f371_v0_0_1.dto.LichsuXNK;
import com.agasa.xd_f371_v0_0_1.dto.SoCaiDto;
import com.agasa.xd_f371_v0_0_1.dto.TonKho;
import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;
import com.agasa.xd_f371_v0_0_1.model.LoaiNXEnum;
import com.agasa.xd_f371_v0_0_1.model.TCN;
import com.agasa.xd_f371_v0_0_1.model.ValidateFiledBol;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
import javafx.application.Platform;
import javafx.beans.property.ObjectProperty;
import javafx.beans.property.SimpleObjectProperty;
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
import javafx.util.StringConverter;
import org.controlsfx.control.textfield.AutoCompletionBinding;

import java.net.URL;
import java.text.*;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class CreateFormController implements Initializable {
    @FXML
    private TextField soTf, recvTf,tcNhap,lenhKHso,soXe,
            donGiaTf, phaiXuatTf,thucXuatTf,tThucTe, vcf,tyTrong;
    @FXML
    private Label dateIf, lb_chungloai;
    @FXML
    private DatePicker tungay, denngay;
    @FXML
    private Button addbtn, delbtn, importbtn, cancelbtn, refresh_btn,editbtn;
    private static List<SoCaiDto> ls_socai;

    private static boolean validateSuccessful = false;
    private static int stt = 0;
    private static String tinhchatnhap_buf;
    private static ValidateFiledBol validateFiledBol = new ValidateFiledBol();
    private static int click_index;
    @FXML
    private TableColumn<SoCaiDto, String> tbTT,tbTenXD,tbDonGia, tbPx,tbNhietDo, tbTyTrong, tbVCf, tbTx, tbThanhTien;
    @FXML
    private TableView<SoCaiDto> tableView;
    @FXML
    private ComboBox<NguonNx> cmb_dvvc, cmb_dvn;
    @FXML
    private ComboBox<LoaiXangDau> cmb_tenxd;
    @FXML
    private CheckBox ckb_sscd;

    private TonKhoService tonKhoService = new TonkhoImp();
    private LichsuNXKService lichsuNXKService = new LichsuNXKImp();
    private LoaiXdService loaiXdService = new LoaiXdImp();
    private SoCaiService soCaiService = new SoCaiImp();
    private NguonNXService nguonNXService = new NguonNXImp();
    private AutoCompletionBinding<String> autoCompletionBinding;
    ObservableList<SoCaiDto> initialData1(){
        return FXCollections.observableArrayList();
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        click_index = -1;
        stt=0;
        tinhchatnhap_buf = null;
        ls_socai = new ArrayList<>();
        tableView.setItems(initialData1());
        setEventForTF();

        setTenXDToCombobox();
        setDvCombobox(LoaiNXEnum.KHAC.getNameChungloai());
        setDvnCombobox(LoaiNXEnum.KHAC.getNameChungloai());

        if (click_index == -1 && ls_socai.isEmpty()){
            delbtn.setDisable(true);
            editbtn.setDisable(true);
        }
        tableView.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                try {
                    SoCaiDto soCaiDto =  tableView.getSelectionModel().getSelectedItem();
                    click_index = soCaiDto.getStt() - 1;
                    if (click_index != -1 && !ls_socai.isEmpty()){
                        delbtn.setDisable(false);
                        editbtn.setDisable(false);
                        addbtn.setDisable(true);
                    }
                    fillDataToTextField(soCaiDto);
                }catch (NullPointerException nullPointerException){
                    nullPointerException.printStackTrace();
                }
            }
        });
        refresh_btn.setOnAction(event -> {
            clearHH();
            addbtn.setDisable(false);
        });
    }

    private void setTenXDToCombobox(){
        Callback<ListView<LoaiXangDau>, ListCell<LoaiXangDau>> cellFactory = lv -> new ListCell<LoaiXangDau>() {
            @Override
            protected void updateItem(LoaiXangDau item, boolean empty) {
                super.updateItem(item, empty);
                setText(empty ? "" : item.getTenxd());
            }
        };
        cmb_tenxd.setButtonCell(cellFactory.call(null));
        cmb_tenxd.setCellFactory(cellFactory);
        cmb_tenxd.getItems().addAll(loaiXdService.getAll());
        cmb_tenxd.getSelectionModel().selectFirst();
    }

    private void setDvCombobox(String type){
        cmb_dvvc.setConverter(new StringConverter<NguonNx>() {
            @Override
            public String toString(NguonNx object) {
                return object==null ? "" : object.getTen();
            }

            @Override
            public NguonNx fromString(String string) {
                return nguonNXService.findNguonNXByName(string, type);
            }
        });

        ObservableList<NguonNx> observableArrayList =
                FXCollections.observableArrayList(nguonNXService.getAllWithType(type));
        cmb_dvvc.setItems(observableArrayList);
    }

    private void setDvnCombobox(String type){
        cmb_dvn.setConverter(new StringConverter<NguonNx>() {
            @Override
            public String toString(NguonNx object) {
                return object==null ? "" : object.getTen();
            }

            @Override
            public NguonNx fromString(String string) {
                return nguonNXService.findNguonNXByName(string, type);
            }
        });
        ObservableList<NguonNx> observableArrayList =
                FXCollections.observableArrayList(nguonNXService.getAllWithType(type));
        cmb_dvn.setItems(observableArrayList);
        cmb_dvn.getSelectionModel().select(37);
    }

    private SoCaiDto getDataFromField(){
        SoCaiDto soCaiDto = new SoCaiDto();
        soCaiDto.setDvi(cmb_dvn.getValue().getTen());
        soCaiDto.setNgay(tungay.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        soCaiDto.setTen_xd(cmb_tenxd.getValue().getTenxd());
        soCaiDto.setLoai_phieu("N");
        soCaiDto.setSo(soTf.getText());
        soCaiDto.setTheo_lenh_so(lenhKHso.getText());
        soCaiDto.setNhiem_vu(tcNhap.getText());
        soCaiDto.setNguoi_nhan_hang(recvTf.getText());
        soCaiDto.setSo_xe(soXe.getText());
        soCaiDto.setDon_gia(Integer.parseInt(donGiaTf.getText()));
        soCaiDto.setPhai_xuat(phaiXuatTf.getText().isEmpty() ? 0 : Integer.parseInt(phaiXuatTf.getText()));
        soCaiDto.setThuc_xuat(Integer.parseInt(thucXuatTf.getText()));
        soCaiDto.setNhiet_do_tt(tThucTe.getText().isEmpty() ? 0 : Double.parseDouble(tThucTe.getText()));
        soCaiDto.setHe_so_vcf(vcf.getText().isEmpty() ? 0 : Integer.parseInt(vcf.getText()));
        soCaiDto.setTy_trong(tyTrong.getText().isEmpty() ? 0 : Double.parseDouble(tyTrong.getText()));
        soCaiDto.setThanh_tien(Integer.parseInt(thucXuatTf.getText()) * Integer.parseInt(donGiaTf.getText()));
        soCaiDto.setDvvc(cmb_dvvc.getValue().getTen());
        soCaiDto.setXd(cmb_tenxd.getValue());
        soCaiDto.setDvvc_obj(cmb_dvvc.getValue());
        soCaiDto.setDvn_obj(cmb_dvn.getValue());
        soCaiDto.setDenngay(denngay.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        soCaiDto.setSscd(ckb_sscd.isSelected() ? "YES" : "NO");
        return soCaiDto;
    }

    private void fillDataToTextField(SoCaiDto soCaiDto){
        cmb_tenxd.getSelectionModel().select(soCaiDto.getXd());
        donGiaTf.setText(String.valueOf(soCaiDto.getDon_gia()));
        phaiXuatTf.setText(String.valueOf(soCaiDto.getPhai_xuat()));
        thucXuatTf.setText(String.valueOf(soCaiDto.getThuc_xuat()));
        tThucTe.setText(String.valueOf(soCaiDto.getNhiet_do_tt()));
        vcf.setText(String.valueOf(soCaiDto.getHe_so_vcf()));
        tyTrong.setText(String.valueOf(soCaiDto.getTy_trong()));
        ckb_sscd.setSelected(soCaiDto.getSscd().equals("YES"));
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
                editbtn.setDisable(true);
                clearHH();
                if (ls_socai.isEmpty()){
                    click_index = -1;
                    addbtn.setDisable(false);
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
                delbtn.setDisable(true);
                editbtn.setDisable(true);
                addbtn.setDisable(false);
                clearHH();
                ObservableList<SoCaiDto> observableList = FXCollections.observableList(ls_socai);
                tableView.setItems(observableList);
            } else if (response==cancel) {
                System.out.println("CAncel");
            }
        });
    }

    private void clearHH(){
        cmb_tenxd.getSelectionModel().select(0);
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

                    Parent root = FXMLLoader.load(getClass().getResource("../dashboard2.fxml"));
                    Scene scene = new Scene(root);
                    F371Application.rootStage.setMaximized(true);
                    F371Application.rootStage.setScene(scene);
                    F371Application.rootStage.show();
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
    }

    @FXML
    public void soValid(KeyEvent keyEvent) {
        String text = soTf.getText();
        if (!text.matches("[0-9]{0,5}")){
            soTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setSo(false);
        }else {
            soTf.setStyle(null);
            validateFiledBol.setSo(true);
        }
    }

    @FXML
    public void validate_nnh(KeyEvent keyEvent) {
        String text = recvTf.getText();
        if (!text.matches(".{0,50}")){
            recvTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setNguoinhanhang(false);
        }else{
            recvTf.setStyle(null);
            validateFiledBol.setNguoinhanhang(true);
        }

    }

    public void validate_dongia(KeyEvent keyEvent) {
        String text = donGiaTf.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,18}")){
            donGiaTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setDongia(false);
        }else{
            donGiaTf.setStyle(null);
            validateFiledBol.setDongia(true);
        }
//        if (text.trim().matches("[^0A-Za-z][0-9\\w]{0,18}")){
//            donGiaTf.setStyle(null);
//            Locale locale = new Locale("vi", "VN");
//            Currency currency = Currency.getInstance("VND");
//
//
//            DecimalFormat numberFormat = (DecimalFormat) NumberFormat.getCurrencyInstance(locale);
//            DecimalFormatSymbols symbols = numberFormat.getDecimalFormatSymbols();
//            symbols.setCurrencySymbol("");
//            numberFormat.setDecimalFormatSymbols(symbols);
//            numberFormat.setCurrency(currency);
//            String num = numberFormat.format(Double.parseDouble(text));
//            System.out.println("length num");
//            donGiaTf.setText(num.trim());
//        }else {
//            donGiaTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
//        }
    }

    public void validate_phaixuat(KeyEvent keyEvent) {
        String text = phaiXuatTf.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,9}")){
            phaiXuatTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setPhaixuat(false);
        }else{
            phaiXuatTf.setStyle(null);
            validateFiledBol.setPhaixuat(true);
        }
    }

    public void validate_tcn(KeyEvent keyEvent) {
        String text = tcNhap.getText();
        if (!text.matches(".{0,50}")){
            tcNhap.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setTinhchatnhap(false);
        }else{
            tcNhap.setStyle(null);
            validateFiledBol.setTinhchatnhap(true);
        }
    }

    public void validate_lenhso(KeyEvent keyEvent) {
        String text = lenhKHso.getText();
        if (!text.matches(".{0,50}")){
            lenhKHso.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setLenhso(false);
        }else{
            lenhKHso.setStyle(null);
            validateFiledBol.setLenhso(true);
        }
    }

    public void validate_thucxuat(KeyEvent keyEvent) {
        String text = thucXuatTf.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,9}")){
            thucXuatTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setThucxuat(false);
        }else{
            thucXuatTf.setStyle(null);
            validateFiledBol.setThucxuat(true);
        }
    }

    public void validate_nhietdo(KeyEvent keyEvent) {
        String text = tThucTe.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,5}")){
            tThucTe.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setNhietdo(false);
        }else{
            tThucTe.setStyle(null);
            validateFiledBol.setNhietdo(true);
        }
    }

    public void validate_tytrong(KeyEvent keyEvent) {
        String text = tyTrong.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,5}")){
            tyTrong.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setTytrong(false);
        }else{
            tyTrong.setStyle(null);
            validateFiledBol.setTytrong(true);
        }
    }

    public void validate_vcf(KeyEvent keyEvent) {
        String text = vcf.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,5}")){
            vcf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setVcf(false);
        }else{
            vcf.setStyle(null);
            validateFiledBol.setVcf(true);
        }
    }

    public void validate_soxe(KeyEvent keyEvent) {
        String text = soXe.getText();
        if (!text.matches(".{0,8}")){
            soXe.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setSoxe(false);
        }else{
            soXe.setStyle(null);
            validateFiledBol.setSoxe(true);
        }
    }

    @FXML
    public void setSelected(ActionEvent actionEvent) {
        String tcn_buf = TCN.getTinhChatNhap().get(cmb_dvvc.getValue().getLoai());
        tcNhap.setText(tcn_buf);
    }
}
