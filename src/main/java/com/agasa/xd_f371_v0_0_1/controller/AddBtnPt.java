package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.dto.NormDto;
import com.agasa.xd_f371_v0_0_1.dto.StatusActive;
import com.agasa.xd_f371_v0_0_1.entity.LoaiPhuongTien;
import com.agasa.xd_f371_v0_0_1.entity.Norm;
import com.agasa.xd_f371_v0_0_1.entity.PhuongTien;
import com.agasa.xd_f371_v0_0_1.service.PhuongTienService;
import com.agasa.xd_f371_v0_0_1.service.impl.PhuongTienImp;
import com.agasa.xd_f371_v0_0_1.util.DialogMessage;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.util.StringConverter;

import java.net.URL;
import java.util.ResourceBundle;

public class AddBtnPt implements Initializable {

    private static int lpt_id=0;

    @FXML
    TextField pt_name, quantity,h,km,md,tk,ct_tk,ct_md,ct_km;
    @FXML
    ComboBox<LoaiPhuongTien> lpt_cmb;
    @FXML
    ComboBox<StatusActive> status_cbb;

    private PhuongTienService phuongTienService = new PhuongTienImp();

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        initLoaiPt();
        initStatus();
        initField();
    }

    private void initField() {
        h.setText(String.valueOf(NormController.normDto.getDm_xm_gio()));
        km.setText(String.valueOf(NormController.normDto.getDm_xm_km()));
        md.setText(String.valueOf(NormController.normDto.getDm_md_gio()));
        tk.setText(String.valueOf(NormController.normDto.getDm_tk_gio()));
        pt_name.setText(NormController.normDto.getNamePt());
        quantity.setText(String.valueOf(NormController.normDto.getQuantity()));
        status_cbb.getSelectionModel().select(phuongTienService.findStatusByName(NormController.normDto.getStatus()));
        lpt_cmb.getSelectionModel().select(phuongTienService.findPtById(NormController.normDto.getLoaiphuongtien_id()));
    }

    private void initStatus() {
        status_cbb.setItems(FXCollections.observableList(phuongTienService.getAllStatus()));
        status_cbb.setConverter(new StringConverter<StatusActive>() {
            @Override
            public String toString(StatusActive statusActive) {
                return statusActive==null ? ""  : statusActive.getStatusName();
            }

            @Override
            public StatusActive fromString(String s) {
                return phuongTienService.findStatusByName(s);
            }
        });
        status_cbb.getSelectionModel().selectFirst();
    }

    private void initLoaiPt() {
        lpt_cmb.setItems(FXCollections.observableList(phuongTienService.getAllLoaiPt()));
        lpt_cmb.setConverter(new StringConverter<LoaiPhuongTien>() {
            @Override
            public String toString(LoaiPhuongTien loaiPhuongTien) {
                if (loaiPhuongTien!=null){
                    lpt_id=loaiPhuongTien.getId();
                }
                return loaiPhuongTien==null ? "" : loaiPhuongTien.getTypeName();
            }

            @Override
            public LoaiPhuongTien fromString(String s) {
                return phuongTienService.findPtById(lpt_id);
            }
        });
        lpt_cmb.getSelectionModel().selectFirst();
    }

    @FXML
    public void addBtn(ActionEvent actionEvent) {
        if(DialogMessage.callAlert()== ButtonType.OK){
            PhuongTien phuongTien = new PhuongTien();
            if(NormController.normDto.getPt_id()==0){
                phuongTien.setName(pt_name.getText());
                phuongTien.setQuantity(Integer.parseInt(quantity.getText()));
                phuongTien.setNguonnx_id(NormController.nguonnx_id);
                phuongTien.setDm_md(Integer.parseInt(md.getText()));
                phuongTien.setDm_tk(Integer.parseInt(tk.getText()));
                phuongTien.setDm_xm_km(Integer.parseInt(km.getText()));
                phuongTien.setDm_xm_gio(Integer.parseInt(h.getText()));
                phuongTien.setStatus(status_cbb.getValue().getStatusName());
                phuongTien.setLoaiphuongtien_id(lpt_cmb.getValue().getId());
                int ptId= phuongTienService.createNew(phuongTien);
                if (phuongTienService.createNewNorm(new Norm(Integer.parseInt(md.getText()), Integer.parseInt(tk.getText()), Integer.parseInt(h.getText()),Integer.parseInt(km.getText()), ptId, DashboardController.findByTime.getId())) ==1){
                    DialogMessage.callAlertWithMessage("Thông báo", "Thông báo","Thêm phương tiện thành công");
                    NormController.norm_stage.close();
                }
            }else{
                // update phuong tien
                phuongTien.setName(pt_name.getText());
                phuongTien.setId(NormController.normDto.getPt_id());
                phuongTien.setQuantity(Integer.parseInt(quantity.getText()));
                phuongTien.setStatus(status_cbb.getValue().getStatusName());
                phuongTien.setLoaiphuongtien_id(lpt_cmb.getValue().getId());
                phuongTienService.updateNew(phuongTien);
                // update dinhmuc
                if (phuongTienService.createNewNorm(new Norm(Integer.parseInt(md.getText()), Integer.parseInt(tk.getText()), Integer.parseInt(h.getText()),Integer.parseInt(km.getText()), NormController.normDto.getPt_id(), DashboardController.findByTime.getId())) ==1){
                    DialogMessage.callAlertWithMessage("Thông báo", "Thông báo","Cập nhật phương tiện thành công");
                    NormController.norm_stage.close();
                }
            }
        }

    }
    @FXML
    public void cancelBtn(ActionEvent actionEvent) {
        NormController.norm_stage.close();
    }
}
