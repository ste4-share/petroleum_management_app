package com.agasa.xd_f371_v0_0_1.controller;

import com.agasa.xd_f371_v0_0_1.entity.Quarter;
import com.agasa.xd_f371_v0_0_1.service.QuarterService;
import com.agasa.xd_f371_v0_0_1.service.impl.QuarterImp;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

import java.net.URL;
import java.time.Year;
import java.util.ResourceBundle;

public class QuyController implements Initializable {

    private QuarterService quarterService = new QuarterImp();

    @FXML
    private TextArea tarea_note;
    @FXML
    private TextField tf_quarterName;
    @FXML
    private DatePicker dp_startdate, dp_enddate;

    @Override
    public void initialize(URL location, ResourceBundle resources) {

    }
    @FXML
    public void createQuarter(ActionEvent actionEvent) {
        Quarter quarter = new Quarter();
        quarter.setName(tf_quarterName.getText());
        quarter.setConvey(tarea_note.getText());
        quarter.setStart_date(dp_startdate.getValue());
        quarter.setEnd_date(dp_enddate.getValue());
        int year = Year.now().getValue();

        quarter.setYear(String.valueOf(year));
        quarterService.create(quarter);
    }

    @FXML
    public void cancel_createNewQuarter(ActionEvent actionEvent) {
        TonkhoController.quarter_stage.close();
    }
}
