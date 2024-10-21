package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.TitleDto;
import com.agasa.xd_f371_v0_0_1.dto.TonKho;
import com.agasa.xd_f371_v0_0_1.entity.*;
import com.agasa.xd_f371_v0_0_1.model.ChungLoaiModel;
import com.agasa.xd_f371_v0_0_1.model.ChungloaiMap;
import com.agasa.xd_f371_v0_0_1.service.*;
import com.agasa.xd_f371_v0_0_1.service.impl.*;
import com.agasa.xd_f371_v0_0_1.util.Common;
import com.agasa.xd_f371_v0_0_1.util.TextToNumber;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.paint.Color;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import javafx.util.StringConverter;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.ss.util.RegionUtil;
import org.apache.poi.xssf.usermodel.*;
import org.controlsfx.control.textfield.TextFields;

import java.io.*;
import java.net.URL;
import java.nio.file.Files;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

public class TonkhoController implements Initializable {

    public static Stage quarter_stage;
    public static Stage ChangeSScd_stage;
    private static List<TonkhoTong> tkt;
    private static Quarter findByTime;
    public static TonkhoTong pickTonKho = new TonkhoTong();
    private static Map<String, String> chungloaiXd = new HashMap<>();
    private static  Map<String, Map<Integer, Integer>> map_coodinate_title = new HashMap<>();

    @FXML
    public TableView<TonkhoTong> tb_tonkho, tb_quater_inv;
    @FXML
    public TableColumn<TonkhoTong, String> col_stt_tk,col_maxd_tk,col_tenxd_tk,col_nvdx_tk,col_sscd_tk,col_sum_tk,
            col_stt_qt, col_ma_qt, col_tenxd_qt, col_chungloai_qt, col_nvdx_tdk, col_sscd_tdk, col_sum_tdk,col_nvdx_tck,col_sscd_tck,col_sum_tck;
    @FXML
    private TextField tf_search_inv_qt, search_inventory;
    @FXML
    private DatePicker start_date_qt, end_date_qt;

    @FXML
    private Button addNewQuarter_btn, createQuarterBtn, cancel_quaterbtn,printBcNxt;

    @FXML
    private ComboBox<Quarter> cbb_quarter;
    @FXML
    private Label lb_end_date,lb_start_date;

    private QuarterService quarterService = new QuarterImp();
    private TonkhoTongService tonkhoTongService = new TonkhoTongImp();
    private TonKhoService tonKhoService = new TonkhoImp();
    private LoaiXdService loaiXdService = new LoaiXdImp();
    private LedgerDetailsService ledgerDetailsService = new LedgerDetailsImp();
    private TrucThuocService trucThuocService = new TrucThuocImp();
    private InvReportService invReportService = new InvReportImp();
    private InvReportDetailService invReportDetailService = new invReportDetailImp();
    private CategoryService categoryService = new CategoryImp();
    private MucgiaService mucgiaService = new MucgiaImp();

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        tkt = new ArrayList<>();
        pickTonKho = new TonkhoTong();
        findByTime = new Quarter();
        chungloaiXd = loaiXdService.getChungLoaiCount();
        findByTime = quarterService.findByDatetime(LocalDate.now());
        setQuarterListToCbb();

        setTonkhoTongToCol();
        setTonkhoTongToCol2();
        fillDataToTableTonkho();
        setClickToTonTb();
    }

    private void setQuarterListToCbb(){
        lb_start_date.setTextFill(Color.rgb(33, 12, 162));
        lb_end_date.setTextFill(Color.rgb(33, 12, 162));
        try {
            cbb_quarter.setConverter(new StringConverter<Quarter>() {
                @Override
                public String toString(Quarter object) {
                    return object==null ? "" : object.getName();
                }

                @Override
                public Quarter fromString(String string) {
                    return quarterService.findByName(string);
                }
            });

            ObservableList<Quarter> observableArrayList =
                    FXCollections.observableArrayList(quarterService.getAll());
            cbb_quarter.setItems(observableArrayList);
            cbb_quarter.getSelectionModel().select(findByTime);
            lb_end_date.setText(cbb_quarter.getValue().getEnd_date().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
            lb_start_date.setText(cbb_quarter.getValue().getStart_date().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        }catch (NullPointerException nullPointerException){
            nullPointerException.printStackTrace();
        }
    }

    @FXML
    public void addNewQuarter(ActionEvent actionEvent) throws IOException {
        Parent root = FXMLLoader.load(getClass().getResource("../quater_form.fxml"));
        Scene scene = new Scene(root);
        quarter_stage = new Stage();
        quarter_stage.setScene(scene);
        quarter_stage.initStyle(StageStyle.DECORATED);
        quarter_stage.initModality(Modality.APPLICATION_MODAL);
        quarter_stage.setTitle("Tạo Quý");
        quarter_stage.show();
    }

    @FXML
    public void selectQuarter(ActionEvent actionEvent) {
        Quarter selected = cbb_quarter.getValue();
        lb_end_date.setText(selected.getEnd_date().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        lb_start_date.setText(selected.getStart_date().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        fillDataToTable(selected);
    }

    private void fillDataToTableTonkho(){
        tkt = tonkhoTongService.findByQuarterAll(findByTime.getId());
        List<String> search_arr = new ArrayList<>();
        for(int i=0; i< tkt.size(); i++){
            String tenxd_1 = loaiXdService.findLoaiXdByID_non(tkt.get(i).getId_xd()).getTenxd();
            TonkhoTong tkt_item = tkt.get(i);
            tkt_item.setTenxd(tenxd_1);
            tkt_item.setStt(i+1);
            tkt_item.setTck_nvdx_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTck_nvdx()).equals("") ? "0" : String.valueOf(tkt_item.getTck_nvdx())));
            tkt_item.setTck_sscd_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTck_sscd()).equals("") ? "0" : String.valueOf(tkt_item.getTck_sscd())));
            tkt_item.setTck_sum_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTck_sum()).equals("") ? "0" : String.valueOf(tkt_item.getTck_sum())));
            tkt_item.setTdk_sscd_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTdk_sscd()).equals("") ? "0" : String.valueOf(tkt_item.getTdk_sscd())));
            tkt_item.setTdk_nvdx_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTdk_nvdx()).equals("") ? "0" : String.valueOf(tkt_item.getTdk_nvdx())));
            tkt_item.setTdk_sum_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTdk_sum()).equals("") ? "0" : String.valueOf(tkt_item.getTdk_sum())));
            search_arr.add(tenxd_1);
        }

        searching(search_arr);
        ObservableList<TonkhoTong> observableList = FXCollections.observableArrayList(tkt);
        tb_tonkho.setItems(observableList);
    }
    private void setTonkhoTongToCol(){
        col_stt_tk.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("stt"));
        col_maxd_tk.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("id_xd"));
        col_tenxd_tk.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tenxd"));
        col_nvdx_tk.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tck_nvdx_str"));
        col_sscd_tk.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tck_sscd_str"));
        col_sum_tk.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tck_sum_str"));
    }

    private boolean addedBySelection = false;

    private void searching(List<String> search_arr){
        TextFields.bindAutoCompletion(search_inventory,t -> {
            return search_arr.stream().filter(elem
                    -> {
                return elem.toLowerCase().startsWith(t.getUserText().toLowerCase());
            }).collect(Collectors.toList());
        });
        search_inventory.setOnKeyPressed(e -> {
            addedBySelection = false;
        });

        search_inventory.setOnKeyReleased(e -> {
            if (search_inventory.getText().trim().isEmpty()){
                fillDataToTableTonkho();
            }
            addedBySelection = true;
        });

        search_inventory.textProperty().addListener(e -> {
            if (addedBySelection) {
                List<TonkhoTong> tkt_buf = tkt.stream().filter(tonkhoTong -> tonkhoTong.getTenxd().equals(search_inventory.getText())).toList();
                ObservableList<TonkhoTong> observableList = FXCollections.observableArrayList(tkt_buf);
                tb_tonkho.setItems(observableList);
                addedBySelection = false;
            }
        });
    }

    private void fillDataToTable(Quarter selected){
        List<TonkhoTong> tkt_2 = tonkhoTongService.findByQuarterAll(selected.getId());
        for(int i =0; i< tkt_2.size(); i++){
            TonkhoTong tkt_item = tkt_2.get(i);
            tkt_item.setTenxd(loaiXdService.findLoaiXdByID_non(tkt_2.get(i).getId_xd()).getTenxd());
            tkt_item.setChungloai(loaiXdService.findLoaiXdByID_non(tkt_2.get(i).getId_xd()).getChungloai());
            tkt_item.setStt(i+1);
            tkt_item.setTck_nvdx_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTck_nvdx()).equals("") ? "0" : String.valueOf(tkt_item.getTck_nvdx())));
            tkt_item.setTck_sscd_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTck_sscd()).equals("") ? "0" : String.valueOf(tkt_item.getTck_sscd())));
            tkt_item.setTck_sum_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTck_sum()).equals("") ? "0" : String.valueOf(tkt_item.getTck_sum())));
            tkt_item.setTdk_sscd_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTdk_sscd()).equals("") ? "0" : String.valueOf(tkt_item.getTdk_sscd())));
            tkt_item.setTdk_nvdx_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTdk_nvdx()).equals("") ? "0" : String.valueOf(tkt_item.getTdk_nvdx())));
            tkt_item.setTdk_sum_str(TextToNumber.textToNum(String.valueOf(tkt_item.getTdk_sum()).equals("") ? "0" : String.valueOf(tkt_item.getTdk_sum())));
        };
        ObservableList<TonkhoTong> observableList = FXCollections.observableArrayList(tkt_2);
        tb_quater_inv.setItems(observableList);
    }

    private void setTonkhoTongToCol2(){
        col_stt_qt.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("stt"));
        col_ma_qt.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("id_xd"));
        col_tenxd_qt.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tenxd"));
        col_chungloai_qt.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("chungloai"));
        col_nvdx_tdk.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tdk_nvdx_str"));
        col_sscd_tdk.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tdk_sscd_str"));
        col_sum_tdk.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tdk_sum_str"));
        col_nvdx_tck.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tck_nvdx_str"));
        col_sscd_tck.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tck_sscd_str"));
        col_sum_tck.setCellValueFactory(new PropertyValueFactory<TonkhoTong, String>("tck_sum_str"));
    }

    @FXML
    public void changeTabTheoQuy(Event event) {
        Quarter selected = cbb_quarter.getValue();
        lb_end_date.setText(selected.getEnd_date().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        lb_start_date.setText(selected.getStart_date().format(DateTimeFormatter.ofPattern("dd-MM-YYYY")));
        fillDataToTable(selected);
    }

    public void setClickToTonTb() {
        tb_tonkho.setOnMouseClicked(event1 -> {
            pickTonKho = tb_tonkho.getSelectionModel().getSelectedItem();
            Parent root = null;
            try {
                root = FXMLLoader.load(getClass().getResource("../changesscd-form.fxml"));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            Scene scene = new Scene(root);
            ChangeSScd_stage = new Stage();
            ChangeSScd_stage.setScene(scene);
            ChangeSScd_stage.initStyle(StageStyle.DECORATED);
            ChangeSScd_stage.initModality(Modality.APPLICATION_MODAL);
            ChangeSScd_stage.showAndWait();
            fillDataToTableTonkho();
        });
    }

    @FXML
    public void printtingBcNXT(ActionEvent actionEvent) {
        printing_xnt();
    }

    private void printing_xnt(){
        String file_name = "bao_cao_xnt.xlsx";
        String source_name = "baocao.xlsx";
        String sheetName = "NXT";
        copyFileExcel(source_name, file_name);
        try{
            File file = new File(file_name);
            XSSFWorkbook wb = null;
            if (file.exists()) {

                FileInputStream fileInputStream = new FileInputStream(file);
                wb = new XSSFWorkbook(fileInputStream);
                new XSSFWorkbook(new FileInputStream(file));
                // Now creating Sheets using sheet object
                XSSFSheet sheet1 = wb.getSheet(sheetName);

                fillDataToNXTSheet(sheet1, wb);
                FileOutputStream fileOutputStream = new FileOutputStream(file_name);

                wb.write(fileOutputStream);
                fileOutputStream.close();
                try {
                    Runtime.getRuntime().exec("start excel "+ file_name);
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

    protected void setMerge(XSSFSheet sheet, int numRow, int untilRow, int numCol, int untilCol, boolean border) {
        CellRangeAddress cellMerge = new CellRangeAddress(numRow, untilRow, numCol, untilCol);
        sheet.addMergedRegion(cellMerge);
        if (border) {
            setBordersToMergedCells(sheet, cellMerge);
        }
    }

    protected void setBordersToMergedCells(XSSFSheet sheet, CellRangeAddress rangeAddress) {
        RegionUtil.setBorderTop(BorderStyle.THIN, rangeAddress, sheet);
        RegionUtil.setBorderLeft(BorderStyle.THIN, rangeAddress, sheet);
        RegionUtil.setBorderRight(BorderStyle.THIN, rangeAddress, sheet);
        RegionUtil.setBorderBottom(BorderStyle.THIN, rangeAddress, sheet);

    }

    private void setTitleCEl(XSSFSheet sheet, XSSFWorkbook wb){

        int row_title =4;
        int begin_col_NHAP = 6;
        List<TrucThuoc> trucThuocLisTNHAP = trucThuocService.getAllByType("NHAP");

        XSSFRow row5 = sheet.createRow(row_title);
        XSSFRow row6 = sheet.createRow(row_title+1);
        // stt
        XSSFCell col_stt = row5.createCell(1);
        col_stt.setCellStyle(setDefaulCellStyle(wb));
        col_stt.setCellValue("STT");
        setMerge(sheet,row_title, row_title+2,begin_col_NHAP-5, begin_col_NHAP-5, true);
        setCellAlightment(col_stt);

        //ten xd
        XSSFCell col_tenxd = row5.createCell(2);
        col_tenxd.setCellStyle(setDefaulCellStyle(wb));
        col_tenxd.setCellValue("TÊN MÃ KÝ HIỆU XĂNG DẦU");
        setMerge(sheet,row_title, row_title+2,begin_col_NHAP-4, begin_col_NHAP-4, true);
        setCellAlightment(col_tenxd);

        // ton dau ky
        XSSFCell col_tontruoc = row5.createCell(3);
        col_tontruoc.setCellStyle(setDefaulCellStyle(wb));
        col_tontruoc.setCellValue("Tồn đầu kỳ");
        setMerge(sheet,row_title, row_title,begin_col_NHAP-3, begin_col_NHAP-1, true);
        setCellAlightment(col_tontruoc);
        //nhap
        XSSFCell cell_nhap_tt = row5.createCell(6);
        cell_nhap_tt.setCellStyle(setDefaulCellStyle(wb));
        cell_nhap_tt.setCellValue("Nhập");
        setMerge(sheet, row_title, row_title, begin_col_NHAP, begin_col_NHAP+trucThuocLisTNHAP.size(), true);
        setCellAlightment(cell_nhap_tt);

        //
        XSSFCell col_NVDX = row6.createCell(3);
        col_NVDX.setCellStyle(setDefaulCellStyle(wb));
        col_NVDX.setCellValue("NVDX");
        setMerge(sheet,row_title+1, row_title+2,begin_col_NHAP-3, begin_col_NHAP-3, true);
        setCellAlightment(col_NVDX);

        XSSFCell col_SSCD = row6.createCell(4);
        col_SSCD.setCellStyle(setDefaulCellStyle(wb));
        col_SSCD.setCellValue("SSCD");
        setMerge(sheet,row_title+1, row_title+2,begin_col_NHAP-2, begin_col_NHAP-2, true);
        setCellAlightment(col_SSCD);

        XSSFCell col_tondk_tong = row6.createCell(5);
        col_tondk_tong.setCellStyle(setDefaulCellStyle(wb));
        col_tondk_tong.setCellValue("Tổng");
        setMerge(sheet,row_title+1, row_title+2,begin_col_NHAP-1, begin_col_NHAP-1, true);
        setCellAlightment(col_tondk_tong);

        for (int i =0 ; i < trucThuocLisTNHAP.size(); i++){
            XSSFCell cell = row6.createCell(begin_col_NHAP+i);
            cell.setCellValue(trucThuocLisTNHAP.get(i).getName());
            cell.setCellStyle(setDefaulCellStyle(wb));
            setMerge(sheet, row_title+1, row_title+2,begin_col_NHAP+i,begin_col_NHAP+i, true);
            setCellAlightment(cell);
        }
        XSSFCell col_nhap_tong = row6.createCell(begin_col_NHAP+trucThuocLisTNHAP.size());
        col_nhap_tong.setCellStyle(setDefaulCellStyle(wb));
        col_nhap_tong.setCellValue("Tổng");
        setMerge(sheet,row_title+1, row_title+2,begin_col_NHAP+trucThuocLisTNHAP.size(), begin_col_NHAP+trucThuocLisTNHAP.size(), true);
        setCellAlightment(col_nhap_tong);

        int begin_col_XUAT = begin_col_NHAP+trucThuocLisTNHAP.size()+1;
        List<TrucThuoc> trucThuocListXuat = trucThuocService.getAllByType("XUAT");
        int index_tonck = begin_col_XUAT+trucThuocListXuat.size();
        //nhap
        XSSFCell cell_xuat = row5.createCell(begin_col_XUAT);
        cell_xuat.setCellStyle(setDefaulCellStyle(wb));
        cell_xuat.setCellValue("Xuất");
        setMerge(sheet, row_title, row_title, begin_col_XUAT, index_tonck, true);
        setCellAlightment(cell_xuat);
        for (int i =0 ; i < trucThuocListXuat.size(); i++){
            XSSFCell cell = row6.createCell(begin_col_XUAT+i);
            cell.setCellValue(trucThuocListXuat.get(i).getName());
            cell.setCellStyle(setDefaulCellStyle(wb));
            setMerge(sheet, row_title+1, row_title+2,begin_col_XUAT+i,begin_col_XUAT+i, true);
            setCellAlightment(cell);
        }
        XSSFCell col_tong_x = row6.createCell(index_tonck);
        col_tong_x.setCellStyle(setDefaulCellStyle(wb));
        col_tong_x.setCellValue("Tổng");
        setMerge(sheet,row_title+1, row_title+2,index_tonck, index_tonck, true);
        setCellAlightment(col_tong_x);

        // ton cuoi ky
        XSSFCell col_tonsau = row5.createCell(index_tonck+1);
        col_tonsau.setCellStyle(setDefaulCellStyle(wb));
        col_tonsau.setCellValue("Tồn cuối kỳ");
        setMerge(sheet,row_title, row_title,index_tonck+1, index_tonck+3, true);
        setCellAlightment(col_tonsau);

        //
        XSSFCell col_NVDX_x = row6.createCell(index_tonck+1);
        col_NVDX_x.setCellStyle(setDefaulCellStyle(wb));
        col_NVDX_x.setCellValue("NVDX");
        setMerge(sheet,row_title+1, row_title+2,index_tonck+1, index_tonck+1, true);
        setCellAlightment(col_NVDX_x);

        XSSFCell col_SSCD_x = row6.createCell(index_tonck+2);
        col_SSCD_x.setCellStyle(setDefaulCellStyle(wb));
        col_SSCD_x.setCellValue("SSCD");
        setMerge(sheet,row_title+1, row_title+2,index_tonck+2, index_tonck+2, true);
        setCellAlightment(col_SSCD_x);

        XSSFCell col_tonck_tong = row6.createCell(index_tonck+3);
        col_tonck_tong.setCellStyle(setDefaulCellStyle(wb));
        col_tonck_tong.setCellValue("Tổng");
        setMerge(sheet,row_title+1, row_title+2,index_tonck+3, index_tonck+3, true);
        setCellAlightment(col_tonck_tong);
    }

    private void setCellAlightment(XSSFCell cell){
        CellUtil.setAlignment(cell,HorizontalAlignment.CENTER);
        CellUtil.setVerticalAlignment(cell, VerticalAlignment.CENTER);
    }

    private CellStyle setDefaulCellStyle(XSSFWorkbook wb){
        CellStyle cellStyle = wb.createCellStyle();
        Font font = wb.createFont();
        font.setFontName("Times New Roman");
        font.setBold(true);
        cellStyle.setFont(font);
        cellStyle.setWrapText(true);
        return cellStyle;
    }

    private Map<String, Map<String, Integer>> setMapForNxtCell(XSSFSheet sheet){
        Map<String, Map<String, Integer>> n_MAp = new HashMap<>();

        List<String> ls_map =List.of("NL","DMN-MD", "DMN-HK");
        int root_num= 7;
        int cell_num = 2;
        for (String s : ls_map) {
            List<LoaiXangDau> loaiXangDauList = loaiXdService.findLoaiXdByType(s);
            setCEll(sheet, ChungloaiMap.type_Str_detail().get(s), root_num,cell_num);
            int rowNum = root_num+2;
            for (int i = 0; i<loaiXangDauList.size(); i++){
                setCEll(sheet, loaiXangDauList.get(i).getTenxd(), rowNum+i,cell_num);
            }
            root_num = root_num+loaiXangDauList.size()+2;
        }
        return n_MAp;
    }

    private void fillDataToNXTSheet(XSSFSheet sheet, XSSFWorkbook wb){
        setTitleCEl(sheet, wb);
        setMapForNxtCell(sheet);
    }

    private void setCEll(XSSFSheet sheet, String value, int row_num, int cell_num){
        sheet.createRow(row_num).createCell(cell_num).setCellValue(value);
    }
    private void getAndsetCEll(XSSFSheet sheet, String value, int row_num, int cell_num){
        sheet.getRow(row_num).getCell(cell_num).setCellValue(value);
    }


    public static void copyFileExcel(String sourceName, String destName){
        deleteExcel(destName);
        File source = new File(sourceName);
        File dest = new File(destName);
        if (source.exists()){
            long start = System.nanoTime();
            try {
                copyFileUsingJava7Files(source, dest);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }else {
            throw new RuntimeException("source file doesn't exists");
        }
    }

    private static void deleteExcel(String f){
        File file = new File(f);
        try
        {
            if(file.delete())                      //returns Boolean value
            {
                System.out.println(file.getName() + " deleted");   //getting and printing the file name
            }
            else
            {
                System.out.println("failed");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    private static void copyFileUsingJava7Files(File source, File dest) throws IOException {
        Files.copy(source.toPath(), dest.toPath());
    }

    @FXML
    public void mockdataAction(ActionEvent actionEvent) {
        mockInventoryData();
    }

    private void mockInventoryData(){
        int tondk_nvdx_mock = 20000;
        int tondk_sscd_mock = 20000;
        int tondk_sum_mock = tondk_sscd_mock+tondk_nvdx_mock;
        for (LoaiXangDau loaiXangDau : loaiXdService.getAll()) {

            // mock tonkhotong
            TonkhoTong tonkhoTong = new TonkhoTong();
            tonkhoTong.setId_quarter(DashboardController.findByTime.getId());
            tonkhoTong.setId_xd(loaiXangDau.getId());
            tonkhoTong.setAmount(0);

            tonkhoTong.setTdk_nvdx(tondk_nvdx_mock);
            tonkhoTong.setTdk_sscd(tondk_sscd_mock);
            tonkhoTong.setTdk_sum(tondk_sum_mock);

            tonkhoTong.setTck_nvdx(tondk_nvdx_mock);
            tonkhoTong.setTck_sscd(tondk_sscd_mock);
            tonkhoTong.setTck_sum(tondk_sum_mock);

            //mock mucgia
            Mucgia mucgia = new Mucgia();
            mucgia.setQuarter_id(DashboardController.findByTime.getId());
            mucgia.setAmount(40000);
            mucgia.setPrice(142857);
            mucgia.setItem_id(loaiXangDau.getId());
            mucgia.setStatus("IN_STOCK");
            mucgiaService.createNew(mucgia);
            Mucgia mucgia1 = mucgiaService.findMucgiaByGia(loaiXangDau.getId(),DashboardController.findByTime.getId(), mucgia.getPrice());

            //mock tonkho
            TonKho tonKho = new TonKho();
            tonKho.setLoaixd_id(loaiXangDau.getId());
            tonKho.setMucgia_id(mucgia1.getId());
            tonKho.setSoluong(40000);
            tonKho.setMucgia(142857);
            tonKho.setLoai_xd(loaiXangDau.getTenxd());
            tonKhoService.create(tonKho);
            tonkhoTongService.create(tonkhoTong);
        }
        fillDataToTableTonkho();
    }

    @FXML
    public void mapDataNxt(ActionEvent actionEvent) {
        initMap();
    }

    private void initMap(){
        List<LoaiXangDau> loaiXangDauList = loaiXdService.getAll();
        List<Category> categories = categoryService.getAll();
        try {
            int quarter_id = DashboardController.findByTime.getId();
            for (int i =0; i< loaiXangDauList.size(); i++){
                TonkhoTong tonkhoTong = tonkhoTongService.findByQuarterAndXdAll(quarter_id, loaiXangDauList.get(i).getId());
                for (int j=0; j< categories.size(); j++){
                    Category catelos = categories.get(j);
                    InvReport invReport = new InvReport();
                    InvReportDetail invReportDetail = new InvReportDetail();
                    TitleDto titleDto = new TitleDto(catelos.getHeader_lv1(), catelos.getHeader_lv2(),catelos.getHeader_lv3());

                    Common.getInvCatalogField(titleDto, tonkhoTong, invReport, invReportDetail);
                    invReport.setReport_header(categories.get(j).getId());
                    invReport.setPetroleum_id(loaiXangDauList.get(i).getId());
                    invReport.setQuarter_id(DashboardController.findByTime.getId());
                    invReportService.create(invReport);
                    InvReport invReport1 = invReportService.findByPetroleum(invReport.getPetroleum_id(), invReport.getQuarter_id(), invReport.getReport_header());

                    //inventory detail
                    invReportDetail.setLoaixd(loaiXangDauList.get(i).getTenxd());
                    invReportDetail.setTitle_lv1(titleDto.getLv1());
                    invReportDetail.setTitle_lv2(titleDto.getLv2());
                    invReportDetail.setTitle_lv3(titleDto.getLv3());
                    Map<String, String> titleMap = ChungloaiMap.getMapChungloai();
                    invReportDetail.setTitle_lxd_lv1(titleMap.get(loaiXangDauList.get(i).getChungloai()));
                    invReportDetail.setTitle_lxd_lv2(titleMap.get(loaiXangDauList.get(i).getType()));
                    invReportDetail.setTitle_lxd_lv3(titleMap.get(loaiXangDauList.get(i).getRtype()));
                    invReportDetail.setInv_report_id(invReport1.getId());
                    invReportDetailService.createNew(invReportDetail);
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
