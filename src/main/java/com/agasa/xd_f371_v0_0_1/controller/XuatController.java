package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.*;
import com.agasa.xd_f371_v0_0_1.entity.*;
import com.agasa.xd_f371_v0_0_1.fatory.CommonFactory;
import com.agasa.xd_f371_v0_0_1.model.*;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
import com.agasa.xd_f371_v0_0_1.util.Common;
import com.agasa.xd_f371_v0_0_1.util.TextToNumber;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.util.StringConverter;
import org.controlsfx.control.textfield.AutoCompletionBinding;
import org.controlsfx.control.textfield.TextFields;

import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

public class XuatController extends CommonFactory implements Initializable {

    private static int stt = 0;
    private static final String DEFAUL_NGUONNX = "f Bộ";
    private static final int ROOT_NGUONNX_ID = 54;
    private static final String LOAI_TRUCTHUOC = "tt_xm";
    private static int nguonnx_id_selected = 0;
    private static int tcx_id_selected_tab_k = 0;
    private static int nguonnx_id_selected_dvvc_cbb = 0;
    private static int pt_id_selected_by_cbb = 0;
    private static Mucgia mucgia_id_selected_mucgia_cbb = new Mucgia();
    private static Mucgia mucgia_id_selected_mucgia_cbb_nv = new Mucgia();
    private static List<Tcn> tcx_ls_buf = new ArrayList<>();
    private static NguonNx_tructhuoc nguonNxTructhuoc_selected = new NguonNx_tructhuoc();
    private static NguonNx_tructhuoc nguonNxTructhuoc_selected_nv = new NguonNx_tructhuoc();
    private static List<NhiemVu> nhiemvu_ls_buf = new ArrayList<>();
    private static List<PhuongTien> phuongtien_ls_buf = new ArrayList<>();
    private static PhuongTien phuongTien_buf = new PhuongTien();
    private static int phuongtien_id_selected_by_cbb = 0;
    private static int tructhuoc_id_selected_by_cbb = 0;
    private static Tcn pre_createNewTcn_tab_k = new Tcn();
    private static NguonNxTcn nguonNxTcn_selected_tab_k = new NguonNxTcn();
    private static int click_index;
    private boolean addedBySelection_lstb = false;
    private static List<LedgerDetails> ls_socai;
    List<Inventory> tonKhos_pref = new ArrayList<>();
    private static NguonNx_nhiemvu nguonNxNhiemvu_selected_nv = new NguonNx_nhiemvu();
    private static PhuongTienNhiemVu phuongTienNhiemVu_selected = new PhuongTienNhiemVu();
    private static List<ChiTietNhiemVuDTO> chiTietNhiemVuDTO_list = new ArrayList<>();
    private static ChiTietNhiemVuDTO nhiemVu_selected=  new ChiTietNhiemVuDTO();

    @FXML
    private TextField so_tf_k,nguoinhan_tf_k,tcx_tf_k,lenhso_tf_k,soxe_tf_k,phaixuat_tf_k,nhietdothucte_tf_k,vcf_tf_k,tytrong_tf_k,thucxuat_tf_k,
            so_tf_nv,nguoinhan_tf_nv,tcx_tf_nhiemvu,lenhso_tf_nv,soxe_tf_nv,sokm_tf_nv,sogio_tf_nv,
            sophut_tf_nv,phaixuat_tf_nv,nhietdothucte_tf_nv,vcf_tf_nv,tytrong_tf_nv,thucxuat_tf_nv;
    @FXML
    private CheckBox maybay_chkbox,xe_chkbox,may_chkbox;
    @FXML
    private Button editBtn_k,addBtn_k, delBtn_k, xuatButton_k,cancelBtn_k, addBtn_nv,editBtn_nv,delBtn_nv,xuatBtn_nv,cancelBtn_nv;
    @FXML
    private Label lb_slt_nv,lb_slt_k;
    @FXML
    private ComboBox<NguonNx> cbb_dvn_xk, cbb_dvx_k,  cbb_dvx_nv;
    @FXML
    private ComboBox<PhuongTien> cbb_dvn_nv;
    @FXML
    private ComboBox<LoaiXangDau> cbb_tenxd_k,cbb_tenxd_nv;
    @FXML
    private ComboBox<Mucgia> cbb_dongia_k, cbb_dongia_nv;
    @FXML
    private TableView<LedgerDetails> tbXuat_k, tbXuat_nv;
    @FXML
    private Tab tab_khac, tab_nhiemvu;
    @FXML
    private DatePicker tungay_dp_k, denngay_dp_k,tungay_dp_nv,denngay_dp_nv;
    @FXML
    private TableColumn<LedgerDetails, String> col_stt_k, col_tenxd_k, col_dongia_k,col_phaixuat_k,col_nhietdo_k,col_tytrong_k,col_vcf_k,col_thucxuat_k,col_thanh_tien_k;
    @FXML
    private TableColumn<LedgerDetails, String> col_stt_nv, col_tenxd_nv, col_dongia_nv,col_phaixuat_nv,col_nhietdo_nv,
            col_tytrong_nv,col_vcf_nv, col_thucxuat_nv, col_thanh_tien_nv;

    private TonKhoService tonKhoService = new TonkhoImp();
    private NhiemVuService nhiemVuService = new NhiemVuImp();
    private LoaiXdService loaiXdService = new LoaiXdImp();
    private LedgerDetailsService ledgerDetailsService = new LedgerDetailsImp();
    private NguonNXService nguonNXService = new NguonNXImp();
    private MucgiaService mucgiaService = new MucgiaImp();
    private PhuongTienService phuongTienService = new PhuongTienImp();
    private NguonNx_tructhuocService nguonNxTructhuocService = new NguonNx_tructhuocImp();
    private TcnService tcnService = new TcnImp();
    private LedgerService ledgerService = new LedgerImp();
    private LoaiPhieuService loaiPhieuService = new LoaiPhieuImp();

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        ls_socai = new ArrayList<>();
        tcx_ls_buf = tcnService.getAll();
        phuongtien_ls_buf = phuongTienService.getAll();
        nhiemvu_ls_buf = nhiemVuService.getAll();
        chiTietNhiemVuDTO_list = nhiemVuService.getNvAndCtnv();
        lp_id_pre = loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_XUAT);
        ls_tcn = tcnService.getAllByBillTypeId(lp_id_pre.getId());
        tabKhac_assignment();
        setActionForTab();
    }

    private void setActionForTab(){
        tab_khac.setOnSelectionChanged(event -> {
            if (tab_khac.isSelected()){
                tabKhac_assignment();
            }
        });
        tab_nhiemvu.setOnSelectionChanged(event -> {
            if (tab_nhiemvu.isSelected()){
                tabNhiemVu_assignment();
            }
        });
    }

    private void tabKhac_assignment(){
        ls_socai = new ArrayList<>();
        setTenXDToCombobox_tab_k();
        setDvnCombobox_tab_k();
        setDvxCombobox_tab_k();
        setUpTcx_tab_k_ForSearchCompleteTion();
        //tab_nhiemvu

        if (click_index == -1 || ls_socai.isEmpty()){
            delBtn_k.setDisable(true);
            editBtn_k.setDisable(true);
        }
        tbXuat_k.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                LedgerDetails ledgerDetails =  tbXuat_k.getSelectionModel().getSelectedItem();
                click_index = ledgerDetails.getStt() - 1;
                if (click_index != -1 && !ls_socai.isEmpty()){
                    delBtn_k.setDisable(false);
                    editBtn_k.setDisable(false);
                }
                fillDataToTextField_tab_k(ledgerDetails);
            }
        });
        addBtn_k.setOnAction(actionEvent -> {
            identify_nguonnx_tructhuoc();
            LedgerDetails ledgerDetails = getDataFromField_tab_k();
            stt = ls_socai.size();
            stt = stt+1;
            ledgerDetails.setStt(stt);
            setCellValueFactory_fortable_tab_k();
            ls_socai.add(ledgerDetails);
            ObservableList<LedgerDetails> observableList = FXCollections.observableList(ls_socai);
            tbXuat_k.setItems(observableList);
            clear_textfield_tab_k();
        });
        editBtn_k.setOnAction(actionEvent -> {
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
                    LedgerDetails ledgerDetails = getDataFromField_tab_k();
                    ledgerDetails.setStt(click_index+1);
                    ls_socai.set(click_index, ledgerDetails);
                    ObservableList<LedgerDetails> observableList = FXCollections.observableList(ls_socai);
                    tbXuat_k.setItems(observableList);
                } else if (response==cancel) {
                    System.out.println("CAncel");
                }
            });
        });
        delBtn_k.setOnAction(actionEvent -> {
            ButtonType delete = new ButtonType("Delete");
            ButtonType cancel = new ButtonType("Cancel");
            Alert a = new Alert(Alert.AlertType.NONE, "", delete, cancel);
            a.setTitle("Delete");
            a.setContentText("Do you really want delete number " + ls_socai.get(click_index).getStt());
            a.showAndWait().ifPresent(response -> {
                if (response==delete){
                    ls_socai.remove(click_index);
                    int index = 1;
                    for (LedgerDetails i : ls_socai){
                        i.setStt(index);
                        index= index +1;
                    }
                    ObservableList<LedgerDetails> observableList = FXCollections.observableList(ls_socai);
                    tbXuat_k.setItems(observableList);
                    delBtn_k.setDisable(true);
                    if (ls_socai.isEmpty()){
                        click_index = -1;
                        stt = 0;
                    }
                } else if (response==cancel) {
                    System.out.println("CAncel");
                }
            });
        });
        xuatButton_k.setOnAction(actionEvent -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("XUẤT");
            alert.setHeaderText("Tạo phiếu XUẤT.");
            alert.setContentText("Xác nhận tạo phiếu XUẤT ?");
            if (alert.showAndWait().get() == ButtonType.OK){
                if (!ls_socai.isEmpty()){
                    createNewLedger(so_tf_k.getText(), tungay_dp_k.getValue(), denngay_dp_k.getValue());
                    Ledger l = ledgerService.findByBillId(DashboardController.findByTime.getId(), Integer.parseInt(so_tf_k.getText()));
                    ls_socai.forEach(soCaiDto -> {
                        if (l!=null){
                            soCaiDto.setLedger_id(l.getId());
                        }else{
                            soCaiDto.setLedger_id(0);
                        }
                        saveLichsuxnk(soCaiDto);
                        saveMucgia(soCaiDto);
                        recognized_tcx();
                        soCaiDto.setTcn_id(pre_createNewTcn.getId());
                        ledgerDetailsService.create(soCaiDto);
                        updateInvReport(soCaiDto, nguonNxTructhuoc_selected.getTructhuoc_id());
                    });
                    ls_socai = new ArrayList<>();
                    DashboardController.xuatStage.close();
                } else {
                    Alert error= new Alert(Alert.AlertType.ERROR);
                    error.setTitle("Lỗi");
                    error.setContentText("Phiếu xuất trống");
                    error.showAndWait();
                }
            }
        });
        cancelBtn_k.setOnAction(actionEvent -> {
            DashboardController.xuatStage.close();
        });
        cbb_tenxd_k.setOnAction(event -> {
            setDongiaCombobox_tab_k(cbb_tenxd_k.getSelectionModel().getSelectedItem().getId());
        });
        cbb_dvn_xk.setOnAction(event -> {
        });
    }

    // tab khac
    private void setUpTcx_tab_k_ForSearchCompleteTion(){
        List<String> search_arr = new ArrayList<>();
        for(int i = 0; i< ls_tcn.size(); i++){
            search_arr.add(ls_tcn.get(i).getName());
        }
        TextFields.bindAutoCompletion(tcx_tf_k, t -> {
            return search_arr.stream().filter(elem
                    -> {
                return elem.toLowerCase().startsWith(t.getUserText().toLowerCase().trim());
            }).collect(Collectors.toList());
        });
    }
    private void recognized_tcx(){
        List<Tcn> tcnList = ls_tcn.stream().filter(x -> tcx_tf_k.getText().toLowerCase().trim().equals(x.getName().toLowerCase().trim())).toList();
        if (!tcnList.isEmpty()){
            pre_createNewTcn = tcnList.get(0);
        } else {
            pre_createNewTcn.setStatus("ACTIVE");
            pre_createNewTcn.setName(tcx_tf_k.getText());
            pre_createNewTcn.setLoaiphieu_id(lp_id_pre.getId());
            pre_createNewTcn.setConcert(1);
            tcnService.create(pre_createNewTcn);
            pre_createNewTcn = tcnService.findByName(tcx_tf_k.getText());
        }
    }
    private void setTenXDToCombobox_tab_k(){
        cbb_tenxd_k.setConverter(new StringConverter<LoaiXangDau>() {
            @Override
            public String toString(LoaiXangDau object) {
                return object == null ? "": object.getTenxd();
            }
            @Override
            public LoaiXangDau fromString(String string) {
                return loaiXdService.findLoaiXdByID(string);
            }
        });
        cbb_tenxd_k.getItems().addAll(loaiXdService.getAll());
        cbb_tenxd_k.getSelectionModel().selectFirst();
        setDongiaCombobox_tab_k(cbb_tenxd_k.getSelectionModel().getSelectedItem().getId());
    }
    private void setDvxCombobox_tab_k(){
        ObservableList<NguonNx> observableArrayList =
                FXCollections.observableArrayList(nguonNXService.findNguonNXByName_NON(LoaiPhieu_cons.ROOT_NAME_NGUONNX));
        cbb_dvx_k.setItems(observableArrayList);
        cbb_dvx_k.setConverter(new StringConverter<NguonNx>() {
            @Override
            public String toString(NguonNx object) {
                if (object!=null){
                    nguonnx_id_selected_dvvc_cbb = object.getId();
                }
                return object==null ? "" : object.getTen();
            }

            @Override
            public NguonNx fromString(String string) {
                return nguonNXService.findById(nguonnx_id_selected_dvvc_cbb);
            }
        });
        cbb_dvx_k.getSelectionModel().selectFirst();
    }
    private void setDvnCombobox_tab_k(){
        cbb_dvn_xk.setConverter(new StringConverter<NguonNx>() {
            @Override
            public String toString(NguonNx object) {
                if (object!=null){
                    nguonnx_id_selected = object.getId();
                }
                return object==null ? "" : object.getTen();
            }

            @Override
            public NguonNx fromString(String string) {
                return nguonNXService.findById(nguonnx_id_selected);
            }
        });
        ObservableList<NguonNx> observableArrayList =
                FXCollections.observableArrayList(nguonNXService.getAllByLoaiPhieu(loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_XUAT).getId()));
        cbb_dvn_xk.setItems(observableArrayList);
        cbb_dvn_xk.getSelectionModel().selectFirst();
    }
    private void setDongiaCombobox_tab_k(int xd_id){
        cbb_dongia_k.setConverter(new StringConverter<Mucgia>() {
            @Override
            public String toString(Mucgia object) {
                if (object!=null){
                    mucgia_id_selected_mucgia_cbb = object;
                }
                return object==null ? "": TextToNumber.textToNum(String.valueOf(object.getPrice()));
            }

            @Override
            public Mucgia fromString(String string) {
                return mucgiaService.findMucGiaByID(mucgia_id_selected_mucgia_cbb.getId(), MucGiaEnum.IN_STOCK.getStatus());
            }
        });
        List<Mucgia> mucgials = mucgiaService.getPriceAndQuanTityByAssId2(mucgiaService.findByName(AssignTypeEnum.NVDX.getName()).getId(),xd_id,DashboardController.findByTime.getId());
        cbb_dongia_k.setItems(FXCollections.observableArrayList(mucgials));
        cbb_dongia_k.getSelectionModel().selectFirst();
        setDongia_k_Label();
    }
    private void fillDataToTextField_tab_k(LedgerDetails ledgerDetails){
        cbb_tenxd_k.getSelectionModel().select(ledgerDetails.getXd());
        phaixuat_tf_k.setText(String.valueOf(ledgerDetails.getPhai_xuat()));
        thucxuat_tf_k.setText(String.valueOf(ledgerDetails.getThuc_xuat()));
        nhietdothucte_tf_k.setText(String.valueOf(ledgerDetails.getNhiet_do_tt()));
        vcf_tf_k.setText(String.valueOf(ledgerDetails.getHe_so_vcf()));
        tytrong_tf_k.setText(String.valueOf(ledgerDetails.getTy_trong()));
    }

    private void setCellValueFactory_fortable_tab_k(){
        col_stt_k.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("stt"));
        col_tenxd_k.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("ten_xd"));
        col_dongia_k.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("don_gia"));
        col_phaixuat_k.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("phai_xuat"));
        col_thucxuat_k.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("thuc_xuat"));
        col_nhietdo_k.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("nhiet_do_tt"));
        col_vcf_k.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("he_so_vcf"));
        col_tytrong_k.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("ty_trong"));
        col_thanh_tien_k.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("thanh_tien"));
    }

    private void setCellValueFactory_fortable_tab_nv(){
        col_stt_nv.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("stt"));
        col_tenxd_nv.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("ten_xd"));
        col_dongia_nv.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("don_gia"));
        col_phaixuat_nv.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("phai_xuat"));
        col_thucxuat_nv.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("thuc_xuat"));
        col_nhietdo_nv.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("nhiet_do_tt"));
        col_vcf_nv.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("he_so_vcf"));
        col_tytrong_nv.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("ty_trong"));
        col_thanh_tien_nv.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("thanh_tien"));
    }
    private void clear_textfield_tab_k(){
        phaixuat_tf_k.clear();
        thucxuat_tf_k.clear();
        nhietdothucte_tf_k.clear();
        vcf_tf_k.clear();
        tytrong_tf_k.clear();
    }
    private void clear_textfield_tab_nv(){
        phaixuat_tf_nv.clear();
        thucxuat_tf_nv.clear();
        nhietdothucte_tf_nv.clear();
        vcf_tf_nv.clear();
        tytrong_tf_nv.clear();
    }
    private LedgerDetails getDataFromField_tab_k(){
        LedgerDetails ledgerDetails = new LedgerDetails();
        try{
            ledgerDetails.setXd(cbb_tenxd_k.getSelectionModel().getSelectedItem());
            ledgerDetails.setNgay(tungay_dp_k.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
            ledgerDetails.setTen_xd(cbb_tenxd_k.getSelectionModel().getSelectedItem().getTenxd());
            LoaiPhieu loaiPhieu = loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_XUAT);
            ledgerDetails.setLoai_phieu(loaiPhieu.getType());
            ledgerDetails.setSo(so_tf_k.getText());
            ledgerDetails.setTheo_lenh_so(lenhso_tf_k.getText());
            ledgerDetails.setNhiem_vu(tcx_tf_k.getText());
            ledgerDetails.setNguoi_nhan_hang(nguoinhan_tf_k.getText());
            ledgerDetails.setSo_xe(soxe_tf_k.getText());
            ledgerDetails.setDon_gia(mucgia_id_selected_mucgia_cbb.getPrice());
            ledgerDetails.setPhai_xuat(Integer.parseInt(phaixuat_tf_k.getText()));
            ledgerDetails.setThuc_xuat(Integer.parseInt(thucxuat_tf_k.getText()));
            ledgerDetails.setNhiet_do_tt(Double.parseDouble(nhietdothucte_tf_k.getText().isEmpty() ? "0" : nhietdothucte_tf_k.getText()));
            ledgerDetails.setHe_so_vcf(Integer.parseInt(vcf_tf_k.getText().isEmpty() ? "0" : vcf_tf_k.getText()));
            ledgerDetails.setTy_trong(Double.parseDouble(tytrong_tf_k.getText().isEmpty() ? "0" : tytrong_tf_k.getText()));
            ledgerDetails.setThanh_tien(Long.parseLong(thucxuat_tf_k.getText()) * mucgia_id_selected_mucgia_cbb.getPrice());
            ledgerDetails.setDvvc(cbb_dvx_k.getSelectionModel().getSelectedItem().getTen());
            ledgerDetails.setDvi(cbb_dvn_xk.getSelectionModel().getSelectedItem().getTen());
            ledgerDetails.setDvn_obj(cbb_dvn_xk.getSelectionModel().getSelectedItem());
            ledgerDetails.setDenngay(denngay_dp_k.getValue()==null ? "" : denngay_dp_k.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
            ledgerDetails.setXd(cbb_tenxd_k.getSelectionModel().getSelectedItem());
            ledgerDetails.setQuarter_id(DashboardController.findByTime.getId());
            ledgerDetails.setNguonnx_tructhuoc(nguonNxTructhuoc_selected.getId());
            ledgerDetails.setDvvc_obj(cbb_dvx_k.getSelectionModel().getSelectedItem());
            ledgerDetails.setLoaixd_id(cbb_tenxd_k.getSelectionModel().getSelectedItem().getId());
        } catch (NullPointerException e) {
            throw new NullPointerException(e.getMessage());
        }
        return ledgerDetails;
    }
    private void setDongia_k_Label() {
        try {
            Mucgia mucgia = mucgiaService.findMucGiaByID(cbb_dongia_k.getSelectionModel().getSelectedItem().getId(), MucGiaEnum.IN_STOCK.getStatus());
            if (mucgia!=null){
                lb_slt_k.setText("Số lượng tồn: "+ TextToNumber.textToNum(String.valueOf(mucgia.getAmount())));
            } else {
                lb_slt_k.setText("Số lượng tồn: "+ "0");
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    private void setDongia_nv_Label() {
        try {
            Mucgia mucgia = mucgiaService.findMucGiaByID(cbb_dongia_nv.getSelectionModel().getSelectedItem().getId(),MucGiaEnum.IN_STOCK.getStatus());
            if (mucgia!=null){
                lb_slt_nv.setText("Số lượng tồn: "+ TextToNumber.textToNum(String.valueOf(mucgia.getAmount())));
            } else {
                lb_slt_nv.setText("Số lượng tồn: "+ "0");
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    private void tabNhiemVu_assignment(){
        ls_socai = new ArrayList<>();
        setTenXDToCombobox_tab_nv();
        setDvxCombobox_tab_nv();
        setNhiemVuForTextField();
        if (maybay_chkbox.isSelected()){
            setPhuongTienNhan(LoaiPTEnum.MAYBAY.getNameVehicle());
        } else if (may_chkbox.isSelected()) {
            setPhuongTienNhan(LoaiPTEnum.MAYCHAY.getNameVehicle());
        }else if (xe_chkbox.isSelected()) {
            setPhuongTienNhan(LoaiPTEnum.XECHAY.getNameVehicle());
        }else{
            maybay_chkbox.setSelected(true);
            setPhuongTienNhan(LoaiPTEnum.MAYBAY.getNameVehicle());
        }
        if (click_index == -1 || ls_socai.isEmpty()){
            delBtn_nv.setDisable(true);
            editBtn_nv.setDisable(true);
        }
        tbXuat_nv.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                LedgerDetails ledgerDetails =  tbXuat_nv.getSelectionModel().getSelectedItem();
                click_index = ledgerDetails.getStt() - 1;
                if (click_index != -1 && !ls_socai.isEmpty()){
                    delBtn_nv.setDisable(false);
                    editBtn_nv.setDisable(false);
                }
                fillDataToTextField_tab_k(ledgerDetails);
            }
        });
        addBtn_nv.setOnAction(actionEvent -> {
            setNGuonNx_tructhuoc_nv();
            setNguonnx_Nhiemvu_nv();
            setPhuongtienNhiemVu();
            LedgerDetails ledgerDetails = getDataFromField_tab_nhiemvu();
            stt = ls_socai.size();
            stt = stt+1;
            ledgerDetails.setStt(stt);
            setCellValueFactory_fortable_tab_nv();
            ls_socai.add(ledgerDetails);
            ObservableList<LedgerDetails> observableList = FXCollections.observableList(ls_socai);
            tbXuat_nv.setItems(observableList);
            clear_textfield_tab_nv();
        });
        editBtn_nv.setOnAction(actionEvent -> {
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
                    LedgerDetails ledgerDetails = getDataFromField_tab_nhiemvu();
                    ledgerDetails.setStt(click_index+1);
                    ls_socai.set(click_index, ledgerDetails);
                    ObservableList<LedgerDetails> observableList = FXCollections.observableList(ls_socai);
                    tbXuat_nv.setItems(observableList);
                } else if (response==cancel) {
                    System.out.println("CAncel");
                }
            });
        });
        delBtn_nv.setOnAction(actionEvent -> {
            ButtonType delete = new ButtonType("Delete");
            ButtonType cancel = new ButtonType("Cancel");
            Alert a = new Alert(Alert.AlertType.NONE, "", delete, cancel);
            a.setTitle("Delete");
            a.setContentText("Do you really want delete number " + ls_socai.get(click_index).getStt());
            a.showAndWait().ifPresent(response -> {
                if (response==delete){
                    ls_socai.remove(click_index);
                    int index = 1;
                    for (LedgerDetails i : ls_socai){
                        i.setStt(index);
                        index= index +1;
                    }
                    ObservableList<LedgerDetails> observableList = FXCollections.observableList(ls_socai);
                    tbXuat_k.setItems(observableList);
                    delBtn_k.setDisable(true);
                    if (ls_socai.isEmpty()){
                        click_index = -1;
                        stt = 0;
                    }

                } else if (response==cancel) {
                    System.out.println("CAncel");
                }
            });
        });
        xuatBtn_nv.setOnAction(actionEvent -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("XUẤT");
            alert.setHeaderText("Tạo phiếu XUẤT.");
            alert.setContentText("Xác nhận tạo phiếu XUẤT ?");
            if (alert.showAndWait().get() == ButtonType.OK){
                if (!ls_socai.isEmpty()){
                    createNewLedger(so_tf_nv.getText(), tungay_dp_nv.getValue(), denngay_dp_nv.getValue());
                    Ledger l = ledgerService.findByBillId(DashboardController.findByTime.getId(), Integer.parseInt(so_tf_nv.getText()));
                    ls_socai.forEach(soCaiDto -> {
                        if (l!=null){
                            soCaiDto.setLedger_id(l.getId());
                        }else{
                            soCaiDto.setLedger_id(0);
                        }
                        saveLichsuxnk(soCaiDto);
                        saveMucgia(soCaiDto);
                        ledgerDetailsService.create(soCaiDto);
                        updateInvReport(soCaiDto, nguonNxTructhuoc_selected_nv.getTructhuoc_id());
                    });
                    ls_socai = new ArrayList<>();
                    DashboardController.xuatStage.close();
                } else {
                    Alert error= new Alert(Alert.AlertType.ERROR);
                    error.setTitle("Lỗi");
                    error.setContentText("Phiếu xuất trống");
                    error.showAndWait();
                }
            }
        });
        cancelBtn_nv.setOnAction(actionEvent -> {
            DashboardController.xuatStage.close();
        });
        cbb_tenxd_nv.setOnAction(event -> {
            setDongiaCombobox_tab_nv(cbb_tenxd_nv.getSelectionModel().getSelectedItem().getId());
        });
    }

    private void saveLichsuxnk(LedgerDetails soCaiDto) {
        Inventory inventory = tonKhoService.findByUniqueId(soCaiDto.getLoaixd_id(), DashboardController.findByTime.getId());
        int tonsau = inventory.getPre_nvdx() - soCaiDto.getThuc_xuat();
        int tontruoc = inventory.getPre_nvdx();
        createNewTransaction(soCaiDto, tontruoc, tonsau);
    }

    private void saveMucgia(LedgerDetails soCaiDto){
        Mucgia mucgia_existed = mucgiaService.findMucgiaByGia(soCaiDto.getXd().getId(), soCaiDto.getQuarter_id(), soCaiDto.getDon_gia(),DashboardController.assignType.getId());
        if (mucgia_existed==null){
            createNewMucgia(soCaiDto, soCaiDto.getThuc_xuat()*(-1));
        }else{
            int quantityPerPrice = mucgia_existed.getAmount() - soCaiDto.getThuc_xuat();
            updateMucgia(quantityPerPrice, mucgia_existed);
        }
    }

    private void createNewLedger(String so, LocalDate tungay, LocalDate denngay) {
        Ledger ledger = new Ledger();
        ledger.setBill_id(Integer.parseInt(so));
        ledger.setQuarter_id(DashboardController.findByTime.getId());
        int amount = 0;
        for (int i =0; i< ls_socai.size(); i++){
            LedgerDetails ledgerDetails = ls_socai.get(i);
            amount = amount + (ledgerDetails.getDon_gia()*ledgerDetails.getThuc_xuat());
        }
        ledger.setAmount(amount);
        ledger.setFrom_date(java.sql.Date.valueOf(tungay));
        ledger.setEnd_date(java.sql.Date.valueOf(denngay));
        ledger.setStatus("ACTIVE");
        ledgerService.createNew(ledger);
    }

    private void setNhiemVuForTextField() {
        setUpForSearchCompleteTion();
    }

    private void setUpForSearchCompleteTion(){
        List<String> search_arr = new ArrayList<>();
        for(int i = 0; i< chiTietNhiemVuDTO_list.size(); i++){
            if (chiTietNhiemVuDTO_list.get(i).getChiTietNhiemVu()==null){
                search_arr.add(chiTietNhiemVuDTO_list.get(i).getNhiemvu());
            }else{
                search_arr.add(chiTietNhiemVuDTO_list.get(i).getNhiemvu() + " - "+chiTietNhiemVuDTO_list.get(i).getChiTietNhiemVu());
            }
        }
        TextFields.bindAutoCompletion(tcx_tf_nhiemvu, t -> {
            return search_arr.stream().filter(elem
                    -> {
                return elem.toLowerCase().startsWith(t.getUserText().toLowerCase().trim());
            }).collect(Collectors.toList());
        });
        tcx_tf_nhiemvu.setOnKeyPressed(e -> {
            addedBySelection_lstb = false;
        });

        tcx_tf_nhiemvu.setOnKeyReleased(e -> {
            addedBySelection_lstb = true;
        });
        tcx_tf_nhiemvu.textProperty().addListener(e -> {
            if (addedBySelection_lstb) {
                identifyNhiemvu();
                addedBySelection_lstb = false;
            }
        });
    }
    private boolean identifyNhiemvu(){
        String text = tcx_tf_nhiemvu.getText();
        String[] arr = splitAssignment(text);
        if (arr[1]==null){
            for (int i = 0; i< chiTietNhiemVuDTO_list.size(); i++){
                ChiTietNhiemVuDTO chiTietNhiemVuDTO = chiTietNhiemVuDTO_list.get(i);
                if (arr[0].equals(chiTietNhiemVuDTO.getNhiemvu())){
                    nhiemVu_selected = chiTietNhiemVuDTO;
                    return true;
                }
            }
        }else{
            if (arr[1].contains("-")){
                throw new RuntimeException("Chitietnv contains dash  - ");
            }else {
                for (int i = 0; i< chiTietNhiemVuDTO_list.size(); i++){
                    ChiTietNhiemVuDTO chiTietNhiemVuDTO = chiTietNhiemVuDTO_list.get(i);
                    if (arr[0].equals(chiTietNhiemVuDTO.getNhiemvu())){
                        if (arr[1].equals(chiTietNhiemVuDTO.getChiTietNhiemVu())){
                            nhiemVu_selected = chiTietNhiemVuDTO;
                            return true;
                        }
                    }
                }
                return false;
            }
        }
        return false;
    }

    private String[] splitAssignment(String text) {
        if (text.contains("-")){
            String nhiemvu = text.substring(0, text.indexOf("-")).trim();
            String ctnv = text.substring(text.indexOf("-") + 1).trim();
            String[] arr = new String[]{nhiemvu, ctnv};
            return arr;
        }
        return new String[]{text.trim(), null};
    }

    private void setNguonnx_Nhiemvu_nv() {
        nguonNxNhiemvu_selected_nv.setNguonnx_id(nguonNxTructhuoc_selected_nv.getNguonnx_id());
        nguonNxNhiemvu_selected_nv.setNvu_id(nhiemVu_selected.getId());
    }
    private void setNGuonNx_tructhuoc_nv() {
        int nguonnx_from_vh = cbb_dvn_nv.getSelectionModel().getSelectedItem().getNguonnx_id();
        int loaiphieu = loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_XUAT).getId();
        NguonNx_tructhuoc nguonNxTructhuocs = nguonNxTructhuocService.findNguonnx_tructhuocByNnx_lp(nguonnx_from_vh, loaiphieu);
        if (nguonNxTructhuocs!=null){
            nguonNxTructhuoc_selected_nv = nguonNxTructhuocs;
        }else {
            throw new RuntimeException("Nguonnxtructhuoc is null");
        }
    }
    private void setPhuongtienNhiemVu(){
        phuongTien_buf = cbb_dvn_nv.getSelectionModel().getSelectedItem();
        phuongTienNhiemVu_selected.setPhuongtien_id(phuongTien_buf.getId());
        phuongTienNhiemVu_selected.setNhiemvu_id(nhiemVu_selected.getId());
    }
    //tab nhiemvu
    private void setTenXDToCombobox_tab_nv(){
        cbb_tenxd_nv.setConverter(new StringConverter<LoaiXangDau>() {
            @Override
            public String toString(LoaiXangDau object) {
                return object == null ? "": object.getTenxd();
            }
            @Override
            public LoaiXangDau fromString(String string) {
                return loaiXdService.findLoaiXdByID(string);
            }
        });
        cbb_tenxd_nv.getItems().addAll(loaiXdService.getAll());
        cbb_tenxd_nv.getSelectionModel().selectFirst();
        setDongiaCombobox_tab_nv(cbb_tenxd_nv.getSelectionModel().getSelectedItem().getId());
    }
    private void setDvxCombobox_tab_nv(){
        ObservableList<NguonNx> observableArrayList =
                FXCollections.observableArrayList(nguonNXService.findNguonNXByName_NON(LoaiPhieu_cons.ROOT_NAME_NGUONNX));
        cbb_dvx_nv.setItems(observableArrayList);
        cbb_dvx_nv.setConverter(new StringConverter<NguonNx>() {
            @Override
            public String toString(NguonNx object) {
                if (object!=null){
                    nguonnx_id_selected_dvvc_cbb = object.getId();
                }
                return object==null ? "" : object.getTen();
            }

            @Override
            public NguonNx fromString(String string) {
                return nguonNXService.findById(nguonnx_id_selected_dvvc_cbb);
            }
        });
        cbb_dvx_nv.getSelectionModel().selectFirst();
    }
    private void setPhuongTienNhan(String type){
        List<PhuongTien> pt = phuongTienService.findPhuongTienByType(type);
        cbb_dvn_nv.setConverter(new StringConverter<PhuongTien>() {
            @Override
            public String toString(PhuongTien object) {
                if (object!=null){
                    pt_id_selected_by_cbb = object.getId();
                }
                return object==null ? "": object.getName();
            }

            @Override
            public PhuongTien fromString(String string) {
                return phuongTienService.findPhuongTienById(pt_id_selected_by_cbb);
            }
        });
        cbb_dvn_nv.setItems(FXCollections.observableArrayList(pt));
        cbb_dvn_nv.getSelectionModel().selectFirst();
    }
    private void setDongiaCombobox_tab_nv(int xd_id){
        cbb_dongia_nv.setConverter(new StringConverter<Mucgia>() {
            @Override
            public String toString(Mucgia object) {
                if (object!=null){
                    mucgia_id_selected_mucgia_cbb_nv = object;
                }
                return object==null ? "": TextToNumber.textToNum(String.valueOf(object.getPrice()));
            }

            @Override
            public Mucgia fromString(String string) {
                return mucgiaService.findMucGiaByID(mucgia_id_selected_mucgia_cbb_nv.getId(), MucGiaEnum.IN_STOCK.getStatus());
            }
        });
        List<Mucgia> mucgials = mucgiaService.getPriceAndQuanTityByAssId2(mucgiaService.findByName(AssignTypeEnum.NVDX.getName()).getId(),xd_id,DashboardController.findByTime.getId());
        cbb_dongia_nv.setItems(FXCollections.observableArrayList(mucgials));
        cbb_dongia_nv.getSelectionModel().selectFirst();
        setDongia_nv_Label();
    }
    private LedgerDetails getDataFromField_tab_nhiemvu(){
        LedgerDetails ledgerDetails = new LedgerDetails();
        try{
            ledgerDetails.setXd(cbb_tenxd_nv.getSelectionModel().getSelectedItem());
            ledgerDetails.setNgay(tungay_dp_nv.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
            ledgerDetails.setTen_xd(cbb_tenxd_nv.getSelectionModel().getSelectedItem().getTenxd());
            LoaiPhieu loaiPhieu = loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_XUAT);
            ledgerDetails.setLoai_phieu(loaiPhieu.getType());
            ledgerDetails.setSo(so_tf_nv.getText());
            ledgerDetails.setTheo_lenh_so(lenhso_tf_nv.getText());
            ledgerDetails.setNhiem_vu(tcx_tf_nhiemvu.getText());
            ledgerDetails.setNguoi_nhan_hang(nguoinhan_tf_nv.getText());
            ledgerDetails.setSo_xe(soxe_tf_nv.getText());
            ledgerDetails.setDon_gia(cbb_dongia_nv.getSelectionModel().getSelectedItem().getPrice());
            ledgerDetails.setPhai_xuat(Integer.parseInt(phaixuat_tf_nv.getText()));
            ledgerDetails.setThuc_xuat(Integer.parseInt(thucxuat_tf_nv.getText()));
            ledgerDetails.setNhiet_do_tt(Double.parseDouble(nhietdothucte_tf_nv.getText().isEmpty() ? "0" : nhietdothucte_tf_nv.getText()));
            ledgerDetails.setHe_so_vcf(Integer.parseInt(vcf_tf_nv.getText().isEmpty() ? "0" : vcf_tf_nv.getText()));
            ledgerDetails.setTy_trong(Double.parseDouble(tytrong_tf_nv.getText().isEmpty() ? "0" : tytrong_tf_nv.getText()));
            ledgerDetails.setThanh_tien(Long.parseLong(thucxuat_tf_nv.getText()) * mucgia_id_selected_mucgia_cbb_nv.getPrice());
            ledgerDetails.setDvvc(cbb_dvx_nv.getSelectionModel().getSelectedItem().getTen());
            ledgerDetails.setDvi(cbb_dvn_nv.getSelectionModel().getSelectedItem().getName());
            ledgerDetails.setNhiemvu_id(nhiemVu_selected.getId());
            ledgerDetails.setSo_gio(Integer.parseInt(sogio_tf_nv.getText()=="" ? "0" : sogio_tf_nv.getText()));
            ledgerDetails.setSo_phut(Integer.parseInt(sophut_tf_nv.getText()=="" ? "0" : sophut_tf_nv.getText()));
            ledgerDetails.setSo_km(Integer.parseInt(sokm_tf_nv.getText()=="" ? "0" : sokm_tf_nv.getText()));
            ledgerDetails.setDenngay(denngay_dp_nv.getValue()==null ? "" : denngay_dp_nv.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
            ledgerDetails.setXd(cbb_tenxd_nv.getSelectionModel().getSelectedItem());
            ledgerDetails.setQuarter_id(DashboardController.findByTime.getId());
            ledgerDetails.setNguonnx_tructhuoc(nguonNxTructhuoc_selected_nv.getId());
            ledgerDetails.setNguonnx_nvu_id(nguonNxNhiemvu_selected_nv.getId());
            ledgerDetails.setPhuongtien_nvu_id(phuongTienNhiemVu_selected.getId());
            ledgerDetails.setPhuongtien_id(pt_id_selected_by_cbb);
            ledgerDetails.setDvvc_obj(cbb_dvx_nv.getSelectionModel().getSelectedItem());
            ledgerDetails.setLoaixd_id(cbb_tenxd_nv.getSelectionModel().getSelectedItem().getId());
        } catch (NullPointerException e) {
            throw new NullPointerException(e.getMessage());
        }
        return ledgerDetails;
    }






    private void setnguonNx_Tcn(int tcn_id, int nguonnx_id){
        nguonNxTcn_selected_tab_k.setTcn_id(tcn_id);
        nguonNxTcn_selected_tab_k.setNguonnx_id(nguonnx_id);
    }

    private void identify_nguonnx_tructhuoc(){
        int id_dvn_xk =  cbb_dvn_xk.getSelectionModel().getSelectedItem().getId();
        int lp_id = loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_XUAT).getId();
        NguonNx_tructhuoc nguonNxTructhuoc = nguonNxTructhuocService.findNguonnx_tructhuocByNnx_lp(id_dvn_xk, lp_id);
        if (nguonNxTructhuoc!=null){
            nguonNxTructhuoc_selected = nguonNxTructhuoc;
        }else {
            throw new RuntimeException("NguonnxTrucThuoc is null--");
        }
    }

    @FXML
    public void setActionDongia_tab_k(ActionEvent actionEvent) {
        setDongia_k_Label();
    }
    @FXML
    public void setActionDongia_tab_nhiemvu(ActionEvent actionEvent) {
        setDongia_nv_Label();
    }

    @FXML
    public void maybay_chk_onAction(ActionEvent actionEvent) {
        setCheckBox(true, false,false);
        if (maybay_chkbox.isSelected()){
            setPhuongTienNhan(LoaiPTEnum.MAYBAY.getNameVehicle());
        }
    }

    @FXML
    public void xe_chk_onAction(ActionEvent actionEvent) {
        setCheckBox(false,false, true);
        if (xe_chkbox.isSelected()){
            setPhuongTienNhan(LoaiPTEnum.XECHAY.getNameVehicle());
        }
    }

    @FXML
    public void may_chk_onAction(ActionEvent actionEvent) {
        setCheckBox(false, true, false);
        if (may_chkbox.isSelected()){
            setPhuongTienNhan(LoaiPTEnum.MAYCHAY.getNameVehicle());
        }
    }

    private void setCheckBox(Boolean mb, boolean m, boolean x){
        maybay_chkbox.setSelected(mb);
        may_chkbox.setSelected(m);
        xe_chkbox.setSelected(x);
    }

    @FXML
    public void dvnSelectedAction(ActionEvent actionEvent) {
        System.out.println("dvn_: "+  cbb_dvn_xk.getSelectionModel().getSelectedItem().getTen());

    }

}
