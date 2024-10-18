package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.LichsuXNK;
import com.agasa.xd_f371_v0_0_1.dto.QuantityByTructhuocDTO;
import com.agasa.xd_f371_v0_0_1.dto.TitleDto;
import com.agasa.xd_f371_v0_0_1.entity.LedgerDetails;
import com.agasa.xd_f371_v0_0_1.dto.TonKho;
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
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;
import javafx.util.Callback;
import javafx.util.StringConverter;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.controlsfx.control.textfield.TextFields;
import org.jfree.util.Log;

import java.io.*;
import java.net.URL;
import java.text.*;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.logging.Logger;
import java.util.stream.Collectors;

public class NhapController extends CommonFactory implements Initializable {
    private static List<LedgerDetails> ls_socai;
    private static int stt = 0;
    private static int dvvc_id =0;
    private static int tructhuc_id_combobox_selected =0;
    private static int lxd_id_combobox_selected =0;
    private static ValidateFiledBol validateFiledBol = new ValidateFiledBol(true, true,true, true,true, true,true, true,true, true,true, true,true, true,true,true,true);
    private static int click_index;
    private static NguonNxTcn nguonNxTcn_selected = new NguonNxTcn();
    private static NguonNx_tructhuoc nguonNxTructhuoc_selected = new NguonNx_tructhuoc();
    private static Tcn pre_createNewTcn = new Tcn();
    private boolean addedBySelection_lstb = false;
    Logger logger = Logger.getLogger(NhapController.class.getName());

    @FXML
    private TextField soTf, recvTf,tcNhap,lenhKHso,soXe,
            donGiaTf, phaiXuatTf,thucXuatTf,tThucTe, vcf,tyTrong;
    @FXML
    private Label lb_tontheoxd;
    @FXML
    private DatePicker tungay, denngay;
    @FXML
    private Button addbtn, delbtn, refresh_btn,editbtn;
    @FXML
    private TableColumn<LedgerDetails, String> tbTT,tbTenXD,tbDonGia, tbPx,tbNhietDo, tbTyTrong, tbVCf, tbTx, tbThanhTien;
    @FXML
    private TableView<LedgerDetails> tableView;
    @FXML
    private ComboBox<NguonNx> cmb_dvvc, cmb_dvn;
    @FXML
    private ComboBox<LoaiXangDau> cmb_tenxd;

    private TonKhoService tonKhoService = new TonkhoImp();
    private LichsuNXKService lichsuNXKService = new LichsuNXKImp();
    private LoaiXdService loaiXdService = new LoaiXdImp();
    private LedgerDetailsService ledgerDetailsService = new LedgerDetailsImp();
    private NguonNXService nguonNXService = new NguonNXImp();
    private TonkhoTongService tonkhoTongService = new TonkhoTongImp();
    private MucgiaService mucgiaService = new MucgiaImp();
    private TcnService tcnService = new TcnImp();
    private NguonNx_tcnService nguonNxTcnService = new NguonNx_tcnImp();
    private NguonNx_tructhuocService nguonNxTructhuocService = new NguonNx_tructhuocImp();
    private TrucThuocService trucThuocService = new TrucThuocImp();
    private LedgerService ledgerService = new LedgerImp();
    private LoaiPhieuService loaiPhieuService = new LoaiPhieuImp();
    private InvReportService invReportService = new InvReportImp();
    private InvReportDetailService invReportDetailService = new invReportDetailImp();
    private TructhuocLoaiphieuService tructhuocLoaiphieuService = new Tructhuoc_LoaiphieuImp();
    private CategoryService categoryService = new CategoryImp();
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

        click_index = -1;
        stt=0;
        ls_socai = new ArrayList<>();
        tableView.setItems(FXCollections.observableArrayList(new ArrayList<>()));

        setTenXDToCombobox();
        setDvvcCombobox();
        setDvnCombobox();

        if (click_index == -1 && ls_socai.isEmpty()){
            delbtn.setDisable(true);
            editbtn.setDisable(true);
        }
        tableView.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                try {
                    LedgerDetails ledgerDetails =  tableView.getSelectionModel().getSelectedItem();
                    click_index = ledgerDetails.getStt() - 1;
                    if (click_index != -1 && !ls_socai.isEmpty()){
                        delbtn.setDisable(false);
                        editbtn.setDisable(false);
                        addbtn.setDisable(true);
                    }
                    fillDataToTextField(ledgerDetails);
                }catch (NullPointerException nullPointerException){
                    nullPointerException.printStackTrace();
                }
            }
        });

        refresh_btn.setOnAction(event -> {
            clearHH();
            addbtn.setDisable(false);
        });

        setUpForSearchCompleteTion();
        searchingFor_tcn();
    }

    private void setUpForSearchCompleteTion(){
        List<String> search_arr = new ArrayList<>();
        List<Tcn> tcnList = tcnService.getAllByName(LoaiPhieu_cons.NHAP);
        for(int i = 0; i< tcnList.size(); i++){
            search_arr.add(tcnList.get(i).getName());
        }
        TextFields.bindAutoCompletion(tcNhap, t -> {
            return search_arr.stream().filter(elem
                    -> {
                return elem.toLowerCase().startsWith(t.getUserText().toLowerCase().trim());
            }).collect(Collectors.toList());
        });
        tcNhap.setOnKeyPressed(e -> {
            addedBySelection_lstb = false;
        });

        tcNhap.setOnKeyReleased(e -> {
            String text = tcNhap.getText().trim();
            pre_createNewTcn.setName(text);
            pre_createNewTcn.setConcert(1);
            pre_createNewTcn.setStatus("ACTIVE");
            addedBySelection_lstb = true;
        });
    }

    private void searchingFor_tcn(){
        tcNhap.textProperty().addListener(e -> {
            if (addedBySelection_lstb) {
                List<Tcn> tcnList = tcnService.findByName(tcNhap.getText().trim());
                if (!tcnList.isEmpty()){
                    pre_createNewTcn = tcnList.get(0);
                    setnguonNx_Tcn(pre_createNewTcn.getId(), cmb_dvvc.getValue().getId());
                }
                addedBySelection_lstb= false;
            }
        });
    }

    private void setnguonNx_Tcn(int tcn_id, int nguonnx_id){
        nguonNxTcn_selected.setTcn_id(tcn_id);
        nguonNxTcn_selected.setNguonnx_id(nguonnx_id);
    }

    private void setTenXDToCombobox(){
        cmb_tenxd.setConverter(new StringConverter<LoaiXangDau>() {
            @Override
            public String toString(LoaiXangDau loaiXangDau) {
                if (loaiXangDau!=null){
                    lxd_id_combobox_selected = loaiXangDau.getId();
                }
                return loaiXangDau==null ? "" : loaiXangDau.getTenxd();
            }

            @Override
            public LoaiXangDau fromString(String s) {
                return loaiXdService.findLoaiXdByID_non(lxd_id_combobox_selected);
            }
        });
        cmb_tenxd.setItems(FXCollections.observableList(loaiXdService.getAll()));
        cmb_tenxd.getSelectionModel().selectFirst();
        cmb_tenxd.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent actionEvent) {
                lxd_id_combobox_selected = cmb_tenxd.getSelectionModel().getSelectedItem().getId();
                setTonKhoLabel();
            }
        });
        setTonKhoLabel();
    }

    private void setDvvcCombobox(){
        cmb_dvvc.setConverter(new StringConverter<NguonNx>() {
            @Override
            public String toString(NguonNx object) {
                if (object !=null){
                    dvvc_id = object.getId();
                }
                return object==null ? "" : object.getTen();
            }
            @Override
            public NguonNx fromString(String string) {
                return nguonNXService.findById(dvvc_id);
            }
        });

        ObservableList<NguonNx> observableArrayList =
                FXCollections.observableArrayList(nguonNXService.getAllUnless(LoaiPhieu_cons.ROOT_NAME_NGUONNX));
        cmb_dvvc.setItems(observableArrayList);
        cmb_dvvc.getSelectionModel().selectFirst();
    }

    private void setDvnCombobox() {
        cmb_dvn.setConverter(new StringConverter<NguonNx>() {
            @Override
            public String toString(NguonNx object) {
                return object==null ? "" : object.getTen();
            }

            @Override
            public NguonNx fromString(String string) {
                return nguonNXService.findNguonNXByName_NON(LoaiPhieu_cons.ROOT_NAME_NGUONNX);
            }
        });
        ObservableList<NguonNx> observableArrayList =
                FXCollections.observableArrayList(nguonNXService.findNguonNXByName_NON(LoaiPhieu_cons.ROOT_NAME_NGUONNX));
        cmb_dvn.setItems(observableArrayList);
        cmb_dvn.getSelectionModel().selectFirst();
    }

    private LedgerDetails getDataFromField(){
        LedgerDetails ledgerDetails = new LedgerDetails();
        ledgerDetails.setDvi(cmb_dvn.getSelectionModel().getSelectedItem().getTen());
        ledgerDetails.setNgay(tungay.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        ledgerDetails.setTen_xd(cmb_tenxd.getSelectionModel().getSelectedItem().getTenxd());
        LoaiPhieu loaiPhieu = loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_NHAP);
        ledgerDetails.setLoai_phieu(loaiPhieu.getType());
        ledgerDetails.setSo(soTf.getText());
        ledgerDetails.setTheo_lenh_so(lenhKHso.getText());
        ledgerDetails.setNhiem_vu(tcNhap.getText());
        ledgerDetails.setNguoi_nhan_hang(recvTf.getText());
        ledgerDetails.setSo_xe(soXe.getText());
        ledgerDetails.setDon_gia(Integer.parseInt(donGiaTf.getText()));
        ledgerDetails.setPhai_xuat(phaiXuatTf.getText().isEmpty() ? 0 : Integer.parseInt(phaiXuatTf.getText()));
        ledgerDetails.setThuc_xuat(Integer.parseInt(thucXuatTf.getText()));
        ledgerDetails.setNhiet_do_tt(tThucTe.getText().isEmpty() ? 0 : Double.parseDouble(tThucTe.getText()));
        ledgerDetails.setHe_so_vcf(vcf.getText().isEmpty() ? 0 : Integer.parseInt(vcf.getText()));
        ledgerDetails.setTy_trong(tyTrong.getText().isEmpty() ? 0 : Double.parseDouble(tyTrong.getText()));
        ledgerDetails.setThanh_tien(Long.parseLong(thucXuatTf.getText()) * Long.parseLong(donGiaTf.getText()));
        ledgerDetails.setDvvc(cmb_dvvc.getValue().getTen());
        ledgerDetails.setXd(cmb_tenxd.getSelectionModel().getSelectedItem());
        ledgerDetails.setDvvc_obj(cmb_dvvc.getValue());
        ledgerDetails.setDvn_obj(cmb_dvn.getSelectionModel().getSelectedItem());
        ledgerDetails.setDenngay(denngay.getValue().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        ledgerDetails.setQuarter_id(DashboardController.findByTime.getId());
        ledgerDetails.setNguonnx_tcn(nguonNxTcn_selected.getId());
        ledgerDetails.setNguonnx_tructhuoc(nguonNxTructhuoc_selected.getId());
        ledgerDetails.setLoaixd_id(cmb_tenxd.getSelectionModel().getSelectedItem().getId());
        return ledgerDetails;
    }


    private void fillDataToTextField(LedgerDetails ledgerDetails){
        cmb_tenxd.getSelectionModel().select(ledgerDetails.getXd());
        donGiaTf.setText(String.valueOf(ledgerDetails.getDon_gia()));
        phaiXuatTf.setText(String.valueOf(ledgerDetails.getPhai_xuat()));
        thucXuatTf.setText(String.valueOf(ledgerDetails.getThuc_xuat()));
        tThucTe.setText(String.valueOf(ledgerDetails.getNhiet_do_tt()));
        vcf.setText(String.valueOf(ledgerDetails.getHe_so_vcf()));
        tyTrong.setText(String.valueOf(ledgerDetails.getTy_trong()));
    }

    private void addNewImport(){
        tbTT.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("stt"));
        tbTenXD.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("ten_xd"));
        tbDonGia.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("don_gia"));
        tbPx.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("phai_xuat"));
        tbTx.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("thuc_xuat"));
        tbNhietDo.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("nhiet_do_tt"));
        tbVCf.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("he_so_vcf"));
        tbTyTrong.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("ty_trong"));
        tbThanhTien.setCellValueFactory(new PropertyValueFactory<LedgerDetails, String>("thanh_tien"));
    }

    private void identify_NguonNX_tcn(){
        String text = tcNhap.getText().trim();
        List<Tcn> tcnList = tcnService.findByName(text);
        LoaiPhieu loaiPhieu = loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_NHAP);
        NguonNx dvvc = cmb_dvvc.getValue();
        if (tcnList.isEmpty()){
            tcnService.create(pre_createNewTcn);
            List<Tcn> pretcn = tcnService.findByName(text);
            if (!pretcn.isEmpty()){
                pre_createNewTcn.setId(pretcn.get(0).getId());
                setnguonNx_Tcn(pre_createNewTcn.getId(), dvvc.getId());
                nguonNxTcn_selected.setTcn_id(pre_createNewTcn.getId());
                nguonNxTcn_selected.setNguonnx_id(dvvc.getId());
                nguonNxTcn_selected.setLoaiphieu_id(loaiPhieu.getId());
                nguonNxTcnService.createNew(nguonNxTcn_selected);
                List<NguonNxTcn> list = nguonNxTcnService.findByNnxTcn_( dvvc.getId(),loaiPhieu.getId(), nguonNxTcn_selected.getTcn_id());
                if (!list.isEmpty()){
                    nguonNxTcn_selected = list.get(0);
                }else{
                    throw new RuntimeException("one error had occur");
                }
            }else{
                System.out.println("--Tcn not found--line [300]--formnhap");
            }
        }else{
            setnguonNx_Tcn(tcnList.get(0).getId(), dvvc.getId());
            List<NguonNxTcn> list = nguonNxTcnService.findByNnxTcn_( dvvc.getId(),loaiPhieu.getId(),tcnList.get(0).getId());
            if (list.isEmpty()) {
                NguonNxTcn nguonNxTcn = new NguonNxTcn();
                nguonNxTcn.setNguonnx_id(dvvc.getId());
                nguonNxTcn.setTcn_id(tcnList.get(0).getId());
                nguonNxTcn.setLoaiphieu_id(loaiPhieu.getId());
                nguonNxTcnService.createNew(nguonNxTcn);
                List<NguonNxTcn> list2 = nguonNxTcnService.findByNnxTcn_(dvvc.getId(), loaiPhieu.getId(),nguonNxTcn.getTcn_id());
                if (!list2.isEmpty()) {
                    nguonNxTcn_selected = list2.get(0);
                } else {
                    throw new RuntimeException("có lỗi xảy ra.");
                }
            }else{
                nguonNxTcn_selected = list.get(0);
            }
        }
    }

    private void identify_nguonnx_tructhuoc(){
        NguonNx_tructhuoc nguonNxTructhuoc = nguonNxTructhuocService.findNguonnx_tructhuocByNnx_lp(cmb_dvvc.getSelectionModel().getSelectedItem().getId(), loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_NHAP).getId());
        if (nguonNxTructhuoc != null){
            nguonNxTructhuoc_selected = nguonNxTructhuoc;
        } else {
            throw new RuntimeException("Nguon_nx - truc thuoc didn't create");
        }
    }

    @FXML
    private void btnInsert(ActionEvent event){
        if (validField()){
            identify_NguonNX_tcn();
            identify_nguonnx_tructhuoc();
            LedgerDetails ledgerDetails = getDataFromField();
            stt = stt+1;
            ledgerDetails.setStt(stt);
            addNewImport();
            ls_socai.add(ledgerDetails);
            ObservableList<LedgerDetails> observableList = FXCollections.observableList(ls_socai);
            tableView.setItems(observableList);
            clearHH();
        }
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
                    createNewLedger();
                    Ledger l = ledgerService.findByBillId(DashboardController.findByTime.getId(), Integer.parseInt(soTf.getText()));
                    ls_socai.forEach(soCaiDto -> {
                        soCaiDto.setSo_km(0);
                        soCaiDto.setSo_gio(0);
                        if (l!=null){
                            soCaiDto.setLedger_id(l.getId());
                        }else{
                            soCaiDto.setLedger_id(0);
                        }
                        // add new so_cai
                        saveMucGia(soCaiDto);
                        savetk(soCaiDto);
                        savetkt(soCaiDto);
                        saveLichsunxk(soCaiDto);
                        ledgerDetailsService.create(soCaiDto);
                        updateInvReport(soCaiDto, nguonNxTructhuoc_selected.getTructhuoc_id());
                    });
                } catch (Exception e) {
                    Alert error= new Alert(Alert.AlertType.ERROR);
                    error.setTitle("Lỗi");
                    error.setContentText("Có lỗi xảy ra");
                    error.showAndWait();
                    throw new RuntimeException(e);
                }
                ls_socai = new ArrayList<>();
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

    private void saveLichsunxk(LedgerDetails soCaiDto) {
        int quarter_id = DashboardController.findByTime.getId();
        Mucgia mucgia = mucgiaService.findMucgiaByGia(soCaiDto.getLoaixd_id(), quarter_id, soCaiDto.getDon_gia());
        TonKho tonKho =tonKhoService.findBy3Id(quarter_id,soCaiDto.getLoaixd_id(), mucgia.getId());
        int tonsau = tonKho.getSoluong()+ soCaiDto.getThuc_xuat();
        int tontruoc = tonKho.getSoluong();
        createNewTransaction(soCaiDto, tontruoc, tonsau);
    }

    private void savetk(LedgerDetails soCaiDto) {
        int quarter_id = DashboardController.findByTime.getId();
        Mucgia mucgia = mucgiaService.findMucgiaByGia(soCaiDto.getLoaixd_id(), quarter_id, soCaiDto.getDon_gia());
        TonKho tonKho =tonKhoService.findBy3Id(quarter_id,soCaiDto.getLoaixd_id(), mucgia.getId());
        if (tonKho==null){
            createNewTonKho(soCaiDto, soCaiDto.getThuc_xuat());
            TonKho tonKho1 =tonKhoService.findBy3Id(quarter_id,soCaiDto.getLoaixd_id(), mucgia.getId());
            soCaiDto.setTonkho_id(tonKho1.getId());
        }else{
            int soluong = tonKho.getSoluong() + soCaiDto.getThuc_xuat();
            updateTonKho(tonKho, soluong);
            soCaiDto.setTonkho_id(tonKho.getId());
        }
    }

    private void saveMucGia(LedgerDetails soCaiDto){
        Mucgia mucgia_existed = mucgiaService.findMucgiaByGia(soCaiDto.getXd().getId(), soCaiDto.getQuarter_id(), soCaiDto.getDon_gia());
        if (mucgia_existed==null){
            createNewMucgia(soCaiDto, soCaiDto.getThuc_xuat());
        }else{
            int quantityPerPrice = mucgia_existed.getAmount() - soCaiDto.getThuc_xuat();
            updateMucgia(quantityPerPrice, mucgia_existed);
        }
    }

    private void savetkt(LedgerDetails soCaiDto) {
        TonkhoTong tonkhoTong = tonkhoTongService.findByQuarterAndXdAll(soCaiDto.getQuarter_id(), soCaiDto.getXd().getId());
        if (tonkhoTong!=null) {
            int tck = tonkhoTong.getTck_nvdx() + soCaiDto.getThuc_xuat();
            tonkhoTong.setTck_sum(tck + tonkhoTong.getTck_sscd());
            tonkhoTong.setTck_nvdx(tck);
            tonkhoTongService.update(tonkhoTong);
            soCaiDto.setTonkhotong_id(tonkhoTong.getId());
        }else{
            throw new NullPointerException("tonkhotong is null");
        }

    }

    private void createNewLedger() {
        LoaiPhieu loaiPhieu = loaiPhieuService.findLoaiPhieuByType(LoaiPhieu_cons.PHIEU_NHAP);
        Ledger ledger = new Ledger();
        ledger.setBill_id(Integer.parseInt(soTf.getText()));
        ledger.setQuarter_id(DashboardController.findByTime.getId());
        int amount = 0;
        for (int i =0; i< ls_socai.size(); i++){
            LedgerDetails ledgerDetails = ls_socai.get(i);
            amount = amount + (ledgerDetails.getDon_gia()*ledgerDetails.getThuc_xuat());
        }
        ledger.setAmount(amount);
        ledger.setFrom_date(java.sql.Date.valueOf(tungay.getValue()));
        ledger.setEnd_date(java.sql.Date.valueOf(denngay.getValue()));
        ledger.setStatus("ACTIVE");
        ledger.setBillType_id(loaiPhieu.getId());
        ledgerService.createNew(ledger);
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
                for (LedgerDetails i : ls_socai){
                    i.setStt(index);
                    index= index +1;
                }
                ObservableList<LedgerDetails> observableList = FXCollections.observableList(ls_socai);
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
                LedgerDetails ledgerDetails = getDataFromField();
                ledgerDetails.setStt(click_index+1);
                ls_socai.set(click_index, ledgerDetails);
                delbtn.setDisable(true);
                editbtn.setDisable(true);
                addbtn.setDisable(false);
                clearHH();
                ObservableList<LedgerDetails> observableList = FXCollections.observableList(ls_socai);
                tableView.setItems(observableList);
            } else if (response==cancel) {
                System.out.println("CAncel");
            }
        });
    }

    private boolean validField(){
        boolean isValid = true;
        try{
            if (!validateFiledBol.getSo() || validateFiledBol.getSo()==null){
                soTf.requestFocus();
                soTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            }
            else if (validateFiledBol.getDongia() == null || !validateFiledBol.getDongia()){
                donGiaTf.requestFocus();
                donGiaTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            } else if (!validateFiledBol.getLenhso() || validateFiledBol.getLenhso()==null){
                lenhKHso.requestFocus();
                lenhKHso.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            } else if (!validateFiledBol.getNguoinhanhang() || validateFiledBol.getNguoinhanhang()==null){
                recvTf.requestFocus();
                recvTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            }else if (!validateFiledBol.getSoxe() || validateFiledBol.getSoxe()==null){
                soXe.requestFocus();
                soXe.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            }else if (!validateFiledBol.getNhietdo() || validateFiledBol.getNhietdo()==null){
                tThucTe.requestFocus();
                tThucTe.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            }else if (!validateFiledBol.getPhaixuat() || validateFiledBol.getPhaixuat()==null){
                phaiXuatTf.requestFocus();
                phaiXuatTf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            }else if (!validateFiledBol.getTinhchatnhap() || validateFiledBol.getTinhchatnhap()==null){
                tcNhap.requestFocus();
                tcNhap.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            }else if (!validateFiledBol.getTytrong() || validateFiledBol.getTytrong()==null){
                tyTrong.requestFocus();
                tyTrong.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            }else if (!validateFiledBol.getVcf() || validateFiledBol.getVcf()==null){
                vcf.requestFocus();
                vcf.setStyle("-fx-border-color: red ; -fx-border-width: 2px ;");
                Alert alert = new Alert(Alert.AlertType.ERROR);
                alert.setTitle("INVALID");
                alert.setContentText("Dữ liệu nhập không hợp lệ.");
                alert.showAndWait();
                isValid=false;
            }
        } catch (NullPointerException e) {
            Alert alert = new Alert(Alert.AlertType.ERROR);
            alert.setTitle("INVALID");
            alert.setContentText("Dữ liệu nhập không được để trống.");
            alert.showAndWait();
            isValid=false;
            e.printStackTrace();
        }

        return isValid;
    }

    private void clearHH(){
        donGiaTf.clear();
        phaiXuatTf.clear();
        thucXuatTf.clear();
        tThucTe.clear();
        vcf.clear();
        tyTrong.clear();
    }


    private void insertToDataExcel() {
        openDataExcelFile();
    }

    private void openDataExcelFile(){
        String file_name = "data.xlsm";
        String sheetName = "socai";
        try{
            File file = new File(file_name);
            XSSFWorkbook wb = null;
            if (file.exists()) {

                FileInputStream fileInputStream = new FileInputStream(file);
                wb = new XSSFWorkbook(fileInputStream);
                new XSSFWorkbook(new FileInputStream(file));
                // Now creating Sheets using sheet object
                XSSFSheet sheet1 = wb.getSheet(sheetName);

                fillDataToSocaiSheet(sheet1, wb);
                FileOutputStream fileOutputStream = new FileOutputStream(file_name);

                wb.write(fileOutputStream);
                fileOutputStream.close();
                try {
                    Runtime.getRuntime().exec("cmd /c start excel "+ file_name);
                }catch (IOException io){
                    throw new RuntimeException(io);
                }
            }
        } catch (FileNotFoundException ex) {
            throw new RuntimeException(ex);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void fillDataToSocaiSheet(XSSFSheet sheet, XSSFWorkbook wb) {
        int begin_data_current = 2;
        List<Tcn> soCaiDtoList = tcnService.getAll();
        for(int i =0; i< soCaiDtoList.size(); i++){
            Tcn soCaiDto = soCaiDtoList.get(i);
            XSSFRow row = sheet.createRow(begin_data_current+i);
            row.createCell(1).setCellValue(soCaiDto.getId());
            row.createCell(2).setCellValue(soCaiDto.getName());
            row.createCell(3).setCellValue(soCaiDto.getStatus());
            row.createCell(4).setCellValue(soCaiDto.getConcert());
        }
    }


    @FXML
    public void btnCancel(ActionEvent actionEvent) {
        DashboardController.primaryStage.close();
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
    public void changedItemLoaiXd(ActionEvent actionEvent) {
        setTonKhoLabel();
    }

    private void setTonKhoLabel(){
        TonkhoTong tonkhoTong = tonkhoTongService.findByQuarterAndXdAll(DashboardController.findByTime.getId(), cmb_tenxd.getSelectionModel().getSelectedItem().getId());
        if (tonkhoTong!=null){
            String sl_ton = TextToNumber.textToNum(String.valueOf(tonkhoTong.getTck_sum()));
            lb_tontheoxd.setText("Số lượng tồn: "+ sl_ton +" (Lit)");
        }else{
            lb_tontheoxd.setText("Số lượng tồn: "+ 0 +" (Lit)");
        }
    }

    @FXML
    public void printTestData(ActionEvent actionEvent) {
        insertToDataExcel();
    }
}
