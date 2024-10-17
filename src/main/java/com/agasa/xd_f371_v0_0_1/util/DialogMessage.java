package com.agasa.xd_f371_v0_0_1.util;

import javafx.scene.control.Alert;
import javafx.stage.Modality;

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
