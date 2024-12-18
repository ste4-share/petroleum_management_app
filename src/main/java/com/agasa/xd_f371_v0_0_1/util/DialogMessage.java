package com.agasa.xd_f371_v0_0_1.util;

import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.stage.Modality;

import java.util.Optional;

public class DialogMessage {
    public static void message(String title, String content, String header, Alert.AlertType alertType){
        Alert a = new Alert(alertType);
        a.initModality(Modality.WINDOW_MODAL); //will block input to its owner window
        a.setTitle("title");
        a.setContentText("content");
        a.setHeaderText("header");
        a.showAndWait();
    }

    public static ButtonType callAlert(){
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Confirmation Dialog");
        alert.setHeaderText("Warning !");
        alert.setContentText("Are you sure you want to perform this action ?");

        Optional<ButtonType> result = alert.showAndWait();
        //Button.Ok
        return result.get();
    }

    public static ButtonType callAlertWithMessage(String title, String headerText, String content){
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle(title);
        alert.setHeaderText(headerText);
        alert.setContentText(content);

        Optional<ButtonType> result = alert.showAndWait();
        return result.get();
    }
}
