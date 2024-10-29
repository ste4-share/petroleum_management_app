package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.entity.Category;
import com.agasa.xd_f371_v0_0_1.entity.NguonnxTitle;
import com.agasa.xd_f371_v0_0_1.entity.TrucThuoc;
import com.agasa.xd_f371_v0_0_1.service.CategoryService;
import com.agasa.xd_f371_v0_0_1.service.NguonNXService;
import com.agasa.xd_f371_v0_0_1.service.TrucThuocService;
import com.agasa.xd_f371_v0_0_1.service.impl.CategoryImp;
import com.agasa.xd_f371_v0_0_1.service.impl.NguonNXImp;
import com.agasa.xd_f371_v0_0_1.service.impl.TrucThuocImp;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;

import javafx.fxml.Initializable;

import javafx.scene.control.*;

import javafx.stage.Stage;
import javafx.util.StringConverter;


import java.net.URL;
import java.util.ResourceBundle;

public class UnitDetailController implements Initializable {
    public static Stage unit_detail_stage;
    private static int tt_id =0;
    private TrucThuocService trucThuocService = new TrucThuocImp();
    private NguonNXService nguonNXService = new NguonNXImp();
    private CategoryService categoryService = new CategoryImp();
    @FXML
    TextField unit_name_tf;
    @FXML
    CheckBox n_chkb,x_chkb,all_chkb;
    @FXML
    ComboBox<TrucThuoc> tructhuoc_cbb;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

        unit_name_tf.setText(DonviController.selectedUnit.getTen());
        setcheckboxLoaiphieu();
        setTructhuocCombobox();
    }

    private void setTructhuocCombobox(){
        tructhuoc_cbb.setItems(FXCollections.observableList(trucThuocService.getAll()));
        tructhuoc_cbb.setConverter(new StringConverter<TrucThuoc>() {
            @Override
            public String toString(TrucThuoc trucThuoc) {
                if (trucThuoc!=null){
                    tt_id=trucThuoc.getId();
                }
                return trucThuoc==null ? "" : trucThuoc.getName();
            }

            @Override
            public TrucThuoc fromString(String s) {
                return trucThuocService.findById(tt_id);
            }
        });
        tructhuoc_cbb.getSelectionModel().select(trucThuocService.findById(DonviController.selectedUnit.getTructhuoc_id()));
    }
    private void setcheckboxLoaiphieu() {
        String lp = DonviController.selectedUnit.getLoaiphieu();
        if(lp.contains("NHAP") && lp.contains("XUAT")){
            setCheckBox(true, false, false);
        } else if(lp.contains("NHAP")){
            setCheckBox(false, true, false);
        } else if(lp.contains("XUAT")){
            setCheckBox(false, false, true);
        }
    }
    private void setCheckBox(boolean all, boolean n, boolean x){
        all_chkb.setSelected(all);
        n_chkb.setSelected(n);
        x_chkb.setSelected(x);
    }

    @FXML
    public void exitScreen(ActionEvent actionEvent) {
        DonviController.unit_stage.close();
    }

    @FXML
    public void saveUnit(ActionEvent actionEvent) {
        String lp = DonviController.selectedUnit.getLoaiphieu();
        String lp_db = categoryService.checkByTructhuocId(DonviController.selectedUnit.getTructhuoc_id());

        categoryService.checkByTructhuocId()
        nguonNXService.createNew(nguonnxTitle)
    }

    private boolean isChangeBillType(){
        String lp = DonviController.selectedUnit.getLoaiphieu();
        if (all_chkb.isSelected()){
            if(lp.contains("NHAP") && lp.contains("XUAT")){
                return true;
            }
        }else if (n_chkb.isSelected()){
            if(lp.contains("NHAP")){
                return true;
            }
        }else if (x_chkb.isSelected()){
            if(lp.contains("XUAT")){
                return true;
            }
        }
        return false;
    }
}
