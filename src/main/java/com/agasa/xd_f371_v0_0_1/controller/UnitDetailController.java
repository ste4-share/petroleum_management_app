package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.entity.NguonNx;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx_tructhuoc;
import com.agasa.xd_f371_v0_0_1.entity.TrucThuoc;
import com.agasa.xd_f371_v0_0_1.service.NguonNx_tructhuocService;
import com.agasa.xd_f371_v0_0_1.service.TrucThuocService;
import com.agasa.xd_f371_v0_0_1.service.impl.NguonNx_tructhuocImp;
import com.agasa.xd_f371_v0_0_1.service.impl.TrucThuocImp;
import javafx.collections.FXCollections;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.input.MouseEvent;
import javafx.scene.transform.Affine;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

public class UnitDetailController implements Initializable {
    public static Stage unit_detail_stage;
    private static TrucThuoc aff_selected;
    private static List<TrucThuoc> affList = new ArrayList<>();
    private NguonNx_tructhuocService nguonNxTructhuocService = new NguonNx_tructhuocImp();
    private TrucThuocService trucThuocService = new TrucThuocImp();
    @FXML
    Label unit_name_lb;
    @FXML
    CheckBox n_chkb,x_chkb,all_chkb;
    @FXML
    ListView<String> affilated_unit_listView;
    @FXML
    Button add_affilated;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        aff_selected = null;
        initSelectedValue();
    }

    private void initSelectedValue() {
        NguonNx nguonNx = DonviController.selectedUnit;
        unit_name_lb.setText(nguonNx.getTen());
        setValueForBillTypeChkb(nguonNx);
        setAffilateList(nguonNx);
    }

    private void setValueForBillTypeChkb(NguonNx nguonNx){
        List<Integer> lp_ids = nguonNxTructhuocService.findAllBillType(nguonNx.getId());
        int size = lp_ids.size();
        if (size==1){
            if (lp_ids.get(0).equals(1)){
                n_chkb.setSelected(true);
                x_chkb.setSelected(false);
                all_chkb.setSelected(false);
            } else if (lp_ids.get(0).equals(2)){
                n_chkb.setSelected(false);
                x_chkb.setSelected(true);
                all_chkb.setSelected(false);
            }
        } else if (size==2) {
            n_chkb.setSelected(false);
            x_chkb.setSelected(false);
            all_chkb.setSelected(true);
        }
    }

    private void setAffilateList(NguonNx nguonNx){
        affList = nguonNxTructhuocService.findAllTrucThuocByNGuonNxID(nguonNx.getId());
        affilated_unit_listView.setItems(FXCollections.observableList(affList.stream().map(x->x.getName()).toList()));
    }

    private void showAffilateUnitScreen() throws IOException {
        Parent root = FXMLLoader.load(getClass().getResource("../addAffilateForm.fxml"));
        Scene scene = new Scene(root);
        unit_detail_stage = new Stage();
        unit_detail_stage.setScene(scene);
        unit_detail_stage.initStyle(StageStyle.DECORATED);
        unit_detail_stage.initModality(Modality.APPLICATION_MODAL);
        unit_detail_stage.setTitle("Thêm mới trực thuộc");
        unit_detail_stage.showAndWait();
        aff_selected = trucThuocService.findById(AddAffForm.aff_id_selected);
        System.out.println("Aff: "+ aff_selected.getName());
        checkDuplicateAff();
    }

    private void checkDuplicateAff(){
        if (aff_selected!=null){
            boolean match = affList.stream().anyMatch(v -> v.getName().equals(aff_selected.getName()));
            if (!match){
                affList.add(aff_selected);
                setAffilateList(DonviController.selectedUnit);
            }
        }
    }

    @FXML
    public void selectAffilatedUnit(MouseEvent mouseEvent) {

    }

    @FXML
    public void addAffilatedAction(ActionEvent actionEvent) throws IOException {
        showAffilateUnitScreen();
    }

    @FXML
    public void exitScreen(ActionEvent actionEvent) {
        DonviController.unit_stage.close();
    }

    @FXML
    public void saveUnit(ActionEvent actionEvent) {
        NguonNx_tructhuoc nguonNxTructhuoc = new NguonNx_tructhuoc();
//        nguonNxTructhuoc.setLoaiphieu_id();
//        nguonNxTructhuocService.createNew();
        aff_selected = null;
    }
}
