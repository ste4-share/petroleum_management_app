package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.AssignTypePriceDto;
import com.agasa.xd_f371_v0_0_1.entity.TonkhoTong;
import com.agasa.xd_f371_v0_0_1.model.AssignTypeEnum;
import com.agasa.xd_f371_v0_0_1.service.MucgiaService;
import com.agasa.xd_f371_v0_0_1.service.TonkhoTongService;
import com.agasa.xd_f371_v0_0_1.service.impl.MucgiaImp;
import com.agasa.xd_f371_v0_0_1.service.impl.TonkhoTongImp;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.KeyEvent;

import java.net.URL;
import java.util.List;
import java.util.ResourceBundle;

public class ChangingController implements Initializable {

    @FXML
    private TableView<AssignTypePriceDto> nvdx_tb,sscd_tb;
    @FXML
    private TableColumn<AssignTypePriceDto, String> nvdx_price,nvdx_quantity,sscd_price,sscd_quantity;
    private static int sum = 0;
    private static int nvdx = 0;
    private TonkhoTongService tonkhoTongService = new TonkhoTongImp();
    private MucgiaService mucgiaService = new MucgiaImp();

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        sum = TonkhoController.pickTonKho.getTck_sum();
        nvdx = TonkhoController.pickTonKho.getTdk_nvdx();

        setNvdxTable();
        setSScdTable();
    }

    private void setNvdxTable() {
        setDataToTable(nvdx_tb, AssignTypeEnum.NVDX.getName());
        setFieldFactoryTb(nvdx_price, nvdx_quantity);
    }
    private void setSScdTable() {
        setDataToTable(sscd_tb, AssignTypeEnum.SSCD.getName());
        setFieldFactoryTb(sscd_price, sscd_quantity);
    }
    private void setFieldFactoryTb(TableColumn<AssignTypePriceDto, String> col1,TableColumn<AssignTypePriceDto, String> col2){
        col1.setCellValueFactory(new PropertyValueFactory<AssignTypePriceDto, String>("price"));
        col2.setCellValueFactory(new PropertyValueFactory<AssignTypePriceDto, String>("soluong"));
    }
    private void setDataToTable(TableView<AssignTypePriceDto> tb, String assTypeName){
        int assId = mucgiaService.findByName(assTypeName).getId();
        int petroId = TonkhoController.pickTonKho.getId_xd();
        List<AssignTypePriceDto> list = mucgiaService.getPriceAndQuanTityByAssId(assId,petroId,DashboardController.findByTime.getId());
        tb.setItems(FXCollections.observableList(list));
    }

    public void cancelForm(ActionEvent actionEvent) {
        TonkhoController.ChangeSScd_stage.close();
    }


    @FXML
    public void nvdxToSscdAction(ActionEvent actionEvent) {
    }

    @FXML
    public void sscdToNvdxAction(ActionEvent actionEvent) {
    }

    @FXML
    public void changeSScd(ActionEvent actionEvent) {
    }
}
