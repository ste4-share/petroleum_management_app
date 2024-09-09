package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.SoCaiDto;
import com.agasa.xd_f371_v0_0_1.service.SoCaiService;
import com.agasa.xd_f371_v0_0_1.service.impl.SoCaiImp;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.print.*;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.VBox;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.text.RandomStringGenerator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellCopyPolicy;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.*;

import java.io.*;
import java.net.URL;
import java.util.*;

public class ChiTietSCController implements Initializable {

    private SoCaiService soCaiService = new SoCaiImp();
    private List<SoCaiDto> ls;
    @FXML
    private VBox vb_root;

    @FXML
    private TableView<SoCaiDto> tbChiTiet;

    @FXML
    private TableColumn<SoCaiDto,String> fct_stt, fct_tenxd, fct_dongia,fct_phaixuat, fct_nhietdo, fct_tytrong, fct_vcf, fct_thucxuat, fct_tong;
    @FXML
    private Label lb_dvvc, lb_dvn, lb_so, lb_nguoinhan, lb_tungay, lb_denngay, lb_tcn, lb_lenhkh, lb_soxe, lb_sokm, lb_sogio, lb_loaiphieu;
    @FXML
    private Button exitBtn, printBtn;
    private Label jobStatus = new Label();
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle){
        addNewImport();
        ls = new ArrayList<>();
        int index_val = 0;

        List<SoCaiDto> soCaiDtoList = soCaiService.getChiTietSoCai(DashboardController.so_clicked);
        for (SoCaiDto soCaiDto : soCaiDtoList) {
            soCaiDto.setStt(index_val + 1);
            ls.add(soCaiDto);
            index_val = index_val + 1;
        }
        ObservableList<SoCaiDto> observableList = FXCollections.observableList(soCaiDtoList);
        tbChiTiet.setItems(observableList);
        fillDataToLabels();
        exitBtn.setOnAction(actionEvent -> {
            DashboardController.ctStage.close();
        });


        printBtn.setOnAction(actionEvent -> {
            System.out.println("Print ...");
            String file_name = "baocao.xlsx";
            try{
                File file = new File(file_name);
                XSSFWorkbook wb = null;
                if (file.exists()) {

                    FileInputStream fileInputStream = new FileInputStream(file);
                    wb = new XSSFWorkbook(fileInputStream);
                    new XSSFWorkbook(new FileInputStream(file));


                    // Now creating Sheets using sheet object
                    XSSFSheet sheet1 = wb.getSheet("phieu_nhap");

                    fillDataToPhieuNhap(sheet1, wb);
                    FileOutputStream fileOutputStream = new FileOutputStream(file_name);
                    wb.write(fileOutputStream);
                    fileOutputStream.close();
                }


            } catch (FileNotFoundException ex) {
                throw new RuntimeException(ex);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }


//            try {
//                Parent root = FXMLLoader.load(getClass().getResource("../baocaonx.fxml"));
//                Stage stage = new Stage();
//                Scene scene = new Scene(root);
//                stage.setScene(scene);
//                stage.initStyle(StageStyle.DECORATED);
//                stage.initModality(Modality.APPLICATION_MODAL);
//                stage.setTitle("REPORT");
//                stage.show();
//
//
//            } catch (IOException e) {
//                throw new RuntimeException(e);
//            }

        });
    }

    private void fillDataToPhieuNhap(XSSFSheet sheet, XSSFWorkbook wb){
        setCEll(sheet, ls.get(0).getDvi(), 3,3);
        setCEll(sheet, ls.get(0).getDvvc(), 4,3);
        setCEll(sheet, ls.get(0).getNhiem_vu(), 5,3);
        setCEll(sheet, ls.get(0).getTheo_lenh_so(), 6,3);
        setCEll(sheet, ls.get(0).getNguoi_nhan_hang(), 7,3);
        setCEll(sheet, "ABC", 8,3);
        setCEll(sheet, "", 3,10);
        setCEll(sheet, ls.get(0).getSo_xe(), 4,10);

        setCEll(sheet, ls.get(0).getSo(), 3,7);
        setCEll(sheet, ls.get(0).getNgay(), 4,7);
        String generatedString = RandomStringUtils.randomAlphanumeric(5);

        System.out.println(generatedString);
//        for (int i = 0; i< ls.size()+2; i++) {
//            addNewRow(sheet);
//        }
//        for (int i = 0; i< ls.size()+2; i++) {
//            int row_num = 12;
//            setCEll(sheet, String.valueOf(i+1), row_num,1);
//            setCEll(sheet, ls.get(i).getMa_xd(), row_num,2);
//            setCEll(sheet, ls.get(i).getSo(), row_num,3);
//            setCEll(sheet, ls.get(i).getSo(), row_num,4);
//            setCEll(sheet, ls.get(i).getSo(), row_num,5);
//            setCEll(sheet, ls.get(i).getSo(), row_num,6);
//            setCEll(sheet, ls.get(i).getSo(), row_num,7);
//            setCEll(sheet, ls.get(i).getSo(), row_num,8);
//            setCEll(sheet, ls.get(i).getSo(), row_num,9);
//            setCEll(sheet, ls.get(i).getSo(), row_num,10);
//            setCEll(sheet, ls.get(i).getSo(), row_num,11);
//                String generatedString = RandomStringUtils.randomAlphanumeric(5);
//
//                System.out.println(generatedString);
//        }for (int i = 0; i< ls.size()+2; i++) {
//            addNewRow(sheet);
//        }
//        for (int i = 0; i< ls.size()+2; i++) {
//            int row_num = 12;
//            setCEll(sheet, String.valueOf(i+1), row_num,1);
//            setCEll(sheet, ls.get(i).getMa_xd(), row_num,2);
//            setCEll(sheet, ls.get(i).getSo(), row_num,3);
//            setCEll(sheet, ls.get(i).getSo(), row_num,4);
//            setCEll(sheet, ls.get(i).getSo(), row_num,5);
//            setCEll(sheet, ls.get(i).getSo(), row_num,6);
//            setCEll(sheet, ls.get(i).getSo(), row_num,7);
//            setCEll(sheet, ls.get(i).getSo(), row_num,8);
//            setCEll(sheet, ls.get(i).getSo(), row_num,9);
//            setCEll(sheet, ls.get(i).getSo(), row_num,10);
//            setCEll(sheet, ls.get(i).getSo(), row_num,11);
//                String generatedString = RandomStringUtils.randomAlphanumeric(5);
//
//                System.out.println(generatedString);
//        }
    }

    private void addNewRow(XSSFSheet sheet){
        int lastRow = sheet.getLastRowNum();
        sheet.shiftRows(13, lastRow, 1, true, true);
        sheet.copyRows(13,14,13,new CellCopyPolicy());
    }

    private void setCEll(XSSFSheet sheet, String value, int row_num, int cell_num){
        Row row =  sheet.getRow(row_num);
        Cell cell = row.getCell(cell_num);
        cell.setCellValue(value);
    }


    private void print(Node node){
        PrinterJob printerJob = PrinterJob.createPrinterJob();
        if (printerJob != null && printerJob.showPrintDialog(vb_root.getScene().getWindow())){

            if (printerJob.printPage(node)){
                printerJob.endJob();
            }else
            {
                System.out.println("print failed");            }
        }
        else {
            System.out.println("could not create a printer job");
        }
    }

    private void addNewImport(){
        fct_stt.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("stt"));
        fct_tenxd.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("ten_xd"));
        fct_dongia.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("don_gia"));
        fct_phaixuat.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("phai_xuat"));
        fct_thucxuat.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("thuc_xuat"));
        fct_nhietdo.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("nhiet_do_tt"));
        fct_vcf.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("he_so_vcf"));
        fct_tytrong.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("ty_trong"));
        fct_tong.setCellValueFactory(new PropertyValueFactory<SoCaiDto, String>("thanh_tien"));
    }

    private void fillDataToLabels(){
        lb_dvvc.setText(ls.get(0).getDvvc());
        lb_dvn.setText(ls.get(0).getDvi());
        lb_so.setText(ls.get(0).getSo());
        lb_nguoinhan.setText(ls.get(0).getNguoi_nhan_hang());
        lb_lenhkh.setText(ls.get(0).getTheo_lenh_so());
        lb_soxe.setText(ls.get(0).getSo_xe());
        lb_tcn.setText(ls.get(0).getNhiem_vu());
        lb_tungay.setText(ls.get(0).getNgay());
        lb_sokm.setText(ls.get(0).getSo_km());
        lb_sogio.setText(ls.get(0).getSo_gio());
        lb_loaiphieu.setText(ls.get(0).getLoai_phieu().equals("N") ? "Phiếu nhập" : "Phiếu xuất");
        lb_denngay.setText("32/12/2024");
    }
}
