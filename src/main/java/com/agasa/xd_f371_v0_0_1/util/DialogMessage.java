package com.agasa.xd_f371_v0_0_1.util;

import com.agasa.xd_f371_v0_0_1.controller.CreateFormController;
import com.agasa.xd_f371_v0_0_1.controller.DashboardController;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class DialogMessage {
    public static void message(String title, String content, String header, Alert.AlertType alertType){
        Alert a = new Alert(alertType);
        a.initModality(Modality.WINDOW_MODAL); //will block input to its owner window
        a.setTitle("title");
        a.setContentText("content");
        a.setHeaderText("header");
        a.showAndWait();
    }
}
