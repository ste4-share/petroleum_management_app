package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.F371Application;
import com.agasa.xd_f371_v0_0_1.dto.LichsuXNK;
import com.agasa.xd_f371_v0_0_1.dto.SoCaiDto;
import com.agasa.xd_f371_v0_0_1.dto.TTPhieuDto;
import com.agasa.xd_f371_v0_0_1.dto.TonKho;
import com.agasa.xd_f371_v0_0_1.entity.ChiTietNhiemVu;
import com.agasa.xd_f371_v0_0_1.entity.DviNvu;
import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;
import com.agasa.xd_f371_v0_0_1.model.LoaiNXEnum;
import com.agasa.xd_f371_v0_0_1.model.TCN;
import com.agasa.xd_f371_v0_0_1.model.ValidateFiledBol;
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
import javafx.scene.input.InputMethodEvent;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;
import javafx.util.Callback;
import javafx.util.StringConverter;
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
    private TextField fx_so, fx_nguoinhan,fx_lenhkhso,fx_soxe,
            fx_sokm, fx_sogio,fx_phaixuat, fx_nhietdothucte,fx_vcf, fx_tytrong,fx_thucxuat;
    @FXML
    private Button editBtn,addBtn, delBtn, exportBtn,cancelBtn;
    private static ValidateFiledBol validateFiledBol = new ValidateFiledBol();
    @FXML
    private CheckBox ck_kehoach, ck_nhiemvu, ck_khac;
    @FXML
    private ComboBox<NguonNx> cbb_dvn, cbb_dvvc;
    @FXML
    private ComboBox<LoaiXangDau> cbb_tenxd;
    @FXML
    private ComboBox<ChiTietNhiemVu> cbb_tcn;
    @FXML
    private ComboBox<String> cbb_dongia;
    @FXML
    private TableView<SoCaiDto> tbXuat;
    @FXML
    private DatePicker tungay, denngay;
    @FXML
    private TableColumn<SoCaiDto, String> col_stt, col_tenxd, col_dongia,col_phaixuat,col_nhietdo,col_tytrong,col_vcf,col_thucxuat,col_thanh_tien;

    private TonKhoService tonKhoService = new TonkhoImp();
    private ChiTietNhiemVuService chiTietNhiemVuService = new ChiTietNhiemVuImp();
    private LichsuNXKService lichsuNXKService = new LichsuNXKImp();
    private LoaiXdService loaiXdService = new LoaiXdImp();
    private SoCaiService soCaiService = new SoCaiImp();
    private DvNvService dvNvService = new DvNvImp();
    private NguonNXService nguonNXService = new NguonNXImp();

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        ls_socai = new ArrayList<>();
        setTenXDToCombobox();
        setDvCombobox(LoaiNXEnum.KHAC.getNameChungloai());
        ck_khac.setSelected(true);
        setDvnCombobox(LoaiNXEnum.KHAC.getNameChungloai());
        if (click_index == -1 || ls_socai.isEmpty()){
            delBtn.setDisable(true);
            editBtn.setDisable(true);
        }
        tbXuat.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                SoCaiDto soCaiDto =  tbXuat.getSelectionModel().getSelectedItem();
                click_index = soCaiDto.getStt() - 1;
                if (click_index != -1 && !ls_socai.isEmpty()){
                    delBtn.setDisable(false);
                    editBtn.setDisable(false);
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

                        Parent root = FXMLLoader.load(getClass().getResource("../dashboard2.fxml"));
                        Scene scene = new Scene(root);
                        F371Application.rootStage.setMaximized(true);
                        F371Application.rootStage.setScene(scene);
                        F371Application.rootStage.show();
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
        cbb_dvvc.setOnAction(event -> {

        });
        cbb_tenxd.setOnAction(event -> {
            setTonKhoCombobox(cbb_tenxd.getValue().getTenxd());
        });
        cbb_dvn.setOnAction(event -> {
            setNhiemVuToCombobox();
        });
    }

    private void setNhiemVuToCombobox(){
        cbb_tcn.setConverter(new StringConverter<ChiTietNhiemVu>() {
            @Override
            public String toString(ChiTietNhiemVu object) {
                if (object.getChi_tiet() == null){
                    return object == null ? "": object.getTen_nv();
                }
                return object == null ? "": object.getTen_nv()+  "-"+object.getChi_tiet();
            }
            @Override
            public ChiTietNhiemVu fromString(String str) {
                if (str.contains("-")){
                    String[] arrOfStr = str.split("-", 2);
                    return chiTietNhiemVuService.findByTenNv(arrOfStr[0], arrOfStr[1]);
                }
                return chiTietNhiemVuService.findByTenNv(str, "");
            }
        });
        try {
            List<DviNvu> list_nv =  dvNvService.findByDvId(cbb_dvn.getValue().getId());
            List<ChiTietNhiemVu> chiTietNhiemVuList = new ArrayList<>();
            list_nv.forEach(e -> {
                chiTietNhiemVuList.add(chiTietNhiemVuService.findById(e.getNv_id()));
            });

            ObservableList<ChiTietNhiemVu> observableArrayList =
                    FXCollections.observableArrayList(chiTietNhiemVuList);
            cbb_tcn.setItems(observableArrayList);
            cbb_dvvc.getSelectionModel().selectFirst();
        }catch (NullPointerException nullPointerException){
            System.out.println("null nv");
        }
    }

    private void setTenXDToCombobox(){
        cbb_tenxd.setConverter(new StringConverter<LoaiXangDau>() {
            @Override
            public String toString(LoaiXangDau object) {
                return object == null ? "": object.getTenxd();
            }
            @Override
            public LoaiXangDau fromString(String string) {
                return loaiXdService.findLoaiXdByID(string);
            }
        });
        cbb_tenxd.getItems().addAll(loaiXdService.getAll());
    }

    private void setDvCombobox(String type){
        cbb_dvvc.setConverter(new StringConverter<NguonNx>() {
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
        cbb_dvvc.setItems(observableArrayList);
        cbb_dvvc.getSelectionModel().select(37);
    }

    private void setDvnCombobox(String type){
        cbb_dvn.setConverter(new StringConverter<NguonNx>() {
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
        cbb_dvn.setItems(observableArrayList);
    }

    private void setTonKhoCombobox(String tenxd){
        cbb_dongia.setConverter(new StringConverter<String>() {
            @Override
            public String toString(String object) {
                return object == null ? "" : object;
            }
            @Override
            public String fromString(String string) {
                return string;
            }
        });

        List<String> arrls = new ArrayList<>();
        List<TonKho> tonKho = tonKhoService.findByLoaiXD_nonGia(tenxd);
        tonKho.forEach(x -> arrls.add(String.valueOf(x.getMucgia())));
        ObservableList<String> observableArrayList =
                FXCollections.observableArrayList(arrls);
        cbb_dongia.setItems(observableArrayList);
        cbb_dongia.getSelectionModel().selectFirst();
        if (!tonKho.isEmpty()){
            fx_phaixuat.setText(String.valueOf(tonKho.get(0).getSoluong()));
            fx_thucxuat.setText(String.valueOf(tonKho.get(0).getSoluong()));
        }
        else {
            fx_phaixuat.setText("");
            fx_thucxuat.setText("");
        }
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
        cbb_tenxd.getSelectionModel().select(soCaiDto.getXd());
        setTonKhoCombobox(cbb_tenxd.getValue().getTenxd());
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
        fx_phaixuat.clear();
        fx_thucxuat.clear();
        fx_nhietdothucte.clear();
        fx_vcf.clear();
        fx_tytrong.clear();
    }

    private SoCaiDto getDataFromField(){
        SoCaiDto soCaiDto = new SoCaiDto();
        soCaiDto.setDvi(cbb_dvn.getValue().getTen());
        soCaiDto.setXd(cbb_tenxd.getValue());
        soCaiDto.setNgay(tungay.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        soCaiDto.setTen_xd(cbb_tenxd.getValue().getTenxd());
        soCaiDto.setLoai_phieu("X");
        soCaiDto.setSo(fx_so.getText());
        soCaiDto.setTheo_lenh_so(fx_lenhkhso.getText());
        soCaiDto.setNhiem_vu(cbb_tcn.getValue().getTen_nv());
        soCaiDto.setNguoi_nhan_hang(fx_nguoinhan.getText());
        soCaiDto.setSo_xe(fx_soxe.getText());
        soCaiDto.setDon_gia(Integer.parseInt(cbb_dongia.getValue()));
        soCaiDto.setPhai_xuat(Integer.parseInt(fx_phaixuat.getText()));
        soCaiDto.setThuc_xuat(Integer.parseInt(fx_thucxuat.getText()));
        soCaiDto.setNhiet_do_tt(Double.parseDouble(fx_nhietdothucte.getText().isEmpty() ? "" : fx_nhietdothucte.getText()));
        soCaiDto.setHe_so_vcf(Integer.parseInt(fx_vcf.getText().isEmpty() ? "" : fx_vcf.getText()));
        soCaiDto.setTy_trong(Double.parseDouble(fx_tytrong.getText().isEmpty() ? "" : fx_tytrong.getText()));
        soCaiDto.setThanh_tien(Integer.parseInt(fx_thucxuat.getText()) * Integer.parseInt(cbb_dongia.getValue()));
        soCaiDto.setDvvc(cbb_dvvc.getValue().getTen());
        soCaiDto.setSo_gio(fx_sogio.getText());
        soCaiDto.setSo_km(fx_sokm.getText());
        soCaiDto.setDenngay(denngay.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        soCaiDto.setXd(cbb_tenxd.getValue());
        soCaiDto.setDvvc_obj(cbb_dvvc.getValue());
        soCaiDto.setDvn_obj(cbb_dvn.getValue());
//        soCaiDto.setSscd("YES");
//        soCaiDto.setSscd(ckb_sscd.isSelected() ? "YES" : "NO");
        return soCaiDto;
    }

    @FXML
    public void setActionDongia(ActionEvent actionEvent) {
        String dongia = cbb_dongia.getValue();
        if (dongia != "" || dongia!=null){
            try {

                List<TonKho> tonKhos = tonKhoService.findByLoaiXD(cbb_tenxd.getValue().getTenxd(), Integer.parseInt(dongia));
                if (!tonKhos.isEmpty()){
                    fx_phaixuat.setText(String.valueOf(tonKhos.get(0).getSoluong()));
                }
            }
            catch (NumberFormatException e){
                System.out.println("null");
                e.printStackTrace();
            }
        }
    }

    public void ck_khacAction(ActionEvent actionEvent) {

        ck_khac.setSelected(true);

        if (ck_khac.isSelected()){
            ck_kehoach.setSelected(false);
            ck_nhiemvu.setSelected(false);
            setDvnCombobox(LoaiNXEnum.KHAC.getNameChungloai());
        }

    }

    public void ck_nhiemvuAction(ActionEvent actionEvent) {
        ck_nhiemvu.setSelected(true);
        if (ck_nhiemvu.isSelected()){
            ck_kehoach.setSelected(false);
            ck_khac.setSelected(false);
            setDvnCombobox(LoaiNXEnum.NHIEM_VU.getNameChungloai());
        }
    }

    public void ck_kehoachAction(ActionEvent actionEvent) {
        ck_kehoach.setSelected(true);
        if (ck_kehoach.isSelected()){
            ck_khac.setSelected(false);
            ck_nhiemvu.setSelected(false);
            setDvnCombobox(LoaiNXEnum.KE_HOACH.getNameChungloai());
        }
    }

    // validate
    @FXML
    public void soValid(KeyEvent keyEvent) {
        String text = fx_so.getText();
        if (!text.matches("[0-9]{0,5}")){
            fx_so.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setSo(false);
        }else {
            fx_so.setStyle(null);
            validateFiledBol.setSo(true);
        }
    }


    public void lenhKHValid(KeyEvent keyEvent) {
        String text = fx_lenhkhso.getText();
        if (!text.matches(".{0,50}")){
            fx_lenhkhso.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setLenhso(false);
        }else{
            fx_lenhkhso.setStyle(null);
            validateFiledBol.setLenhso(true);
        }
    }

    public void soXeValid(KeyEvent keyEvent) {
        String text = fx_soxe.getText();
        if (!text.matches(".{0,8}")){
            fx_soxe.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setSoxe(false);
        }else{
            fx_soxe.setStyle(null);
            validateFiledBol.setSoxe(true);
        }
    }

    public void soKmValid(KeyEvent keyEvent) {
        String text = fx_sokm.getText();
        if (!text.matches("[0-9]{0,5}")){
            fx_sokm.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setSo(false);
        }else {
            fx_sokm.setStyle(null);
            validateFiledBol.setSo(true);
        }
    }

    public void soGioValid(KeyEvent keyEvent) {
        String text = fx_sogio.getText();
        if (!text.matches("[^0A-Za-z][0-9\\:]{0,9}")){
            fx_sogio.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setPhaixuat(false);
        }else{
            if (text.length()==2){
                fx_sogio.setText(text+":");
                fx_sogio.positionCaret(3);
            }
            fx_sogio.setStyle(null);
            validateFiledBol.setPhaixuat(true);
        }
    }

    public void phaixuatValid(KeyEvent keyEvent) {
        String text = fx_phaixuat.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,9}")){
            fx_phaixuat.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setPhaixuat(false);
        }else{
            fx_phaixuat.setStyle(null);
            validateFiledBol.setPhaixuat(true);
        }
    }

    public void nhietdoValid(KeyEvent keyEvent) {
        String text = fx_nhietdothucte.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,5}")){
            fx_nhietdothucte.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setNhietdo(false);
        }else{
            fx_nhietdothucte.setStyle(null);
            validateFiledBol.setNhietdo(true);
        }
    }

    public void vcfValid(KeyEvent keyEvent) {
        String text = fx_vcf.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,5}")){
            fx_vcf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setVcf(false);
        }else{
            fx_vcf.setStyle(null);
            validateFiledBol.setVcf(true);
        }
    }

    public void tyTrongValid(KeyEvent keyEvent) {
        String text = fx_tytrong.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,5}")){
            fx_tytrong.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setTytrong(false);
        }else{
            fx_tytrong.setStyle(null);
            validateFiledBol.setTytrong(true);
        }
    }

    public void thucXuatValid(KeyEvent keyEvent) {
        String text = fx_thucxuat.getText();
        if (!text.matches("[^0A-Za-z][0-9]{0,9}")){
            fx_thucxuat.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setThucxuat(false);
        }else{
            fx_thucxuat.setStyle(null);
            validateFiledBol.setThucxuat(true);
        }
    }

    public void tfnguoinhanValid(KeyEvent keyEvent) {
        String text = fx_nguoinhan.getText();
        if (!text.matches(".{0,50}")){
            fx_nguoinhan.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
            validateFiledBol.setSoxe(false);
        }else{
            fx_nguoinhan.setStyle(null);
            validateFiledBol.setSoxe(true);
        }
    }
}
