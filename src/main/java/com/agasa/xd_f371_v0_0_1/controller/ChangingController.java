package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.entity.TonkhoTong;
import com.agasa.xd_f371_v0_0_1.service.TonkhoTongService;
import com.agasa.xd_f371_v0_0_1.service.impl.TonkhoTongImp;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;

import java.net.URL;
import java.util.ResourceBundle;

public class ChangingController implements Initializable {

    @FXML
    private TextField sscd_tf,nvdx_tf,sum_tf;
    private static int sum = 0;
    private static int nvdx = 0;
    private TonkhoTongService tonkhoTongService = new TonkhoTongImp();

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        sum = TonkhoController.pickTonKho.getTck_sum();
        nvdx = TonkhoController.pickTonKho.getTdk_nvdx();
        sscd_tf.setText(String.valueOf(TonkhoController.pickTonKho.getTck_sscd()));
        nvdx_tf.setText(String.valueOf(TonkhoController.pickTonKho.getTck_nvdx()));
        sum_tf.setText(String.valueOf(TonkhoController.pickTonKho.getTck_sum()));
    }

    public void changeSScd(ActionEvent actionEvent) {
        TonkhoTong currentTonKho = TonkhoController.pickTonKho;
        currentTonKho.setTck_sscd(Integer.parseInt(sscd_tf.getText()));
        currentTonKho.setTck_nvdx(sum - Integer.parseInt(sscd_tf.getText()));
        tonkhoTongService.update(currentTonKho);
        TonkhoController.ChangeSScd_stage.close();
    }

    public void cancelForm(ActionEvent actionEvent) {
        TonkhoController.ChangeSScd_stage.close();
    }

    public void changingKEy(KeyEvent keyEvent) {
        if (!sscd_tf.getText().equals("")){
            nvdx_tf.setText(String.valueOf(sum - Integer.parseInt(sscd_tf.getText())));
        }else {
            nvdx_tf.setText(String.valueOf(sum));

        }
    }
}
