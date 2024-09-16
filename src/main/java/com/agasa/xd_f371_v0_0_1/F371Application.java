package com.agasa.xd_f371_v0_0_1;

import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import javafx.application.Application;
import javafx.application.Platform;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.paint.Color;
import javafx.stage.Stage;
import javafx.stage.StageStyle;

import java.awt.im.InputContext;
import java.io.IOException;

public class F371Application extends Application {
    public static Stage rootStage;
    public static Scene rootScence;

    @Override
    public void start(Stage stage) throws IOException {
        Parent root = FXMLLoader.load(getClass().getResource("dashboard2.fxml"));
        rootScence = new Scene(root);
        rootScence.setFill(Color.TRANSPARENT);
        stage.setScene(rootScence);
        stage.setMaximized(true);
        stage.setTitle("Xăng dầu F371");
        rootStage = stage;
        stage.show();

    }

    public static void main(String[] args) {
        InputContext.getInstance();
        launch(args);
        QDatabase qDatabase = new QDatabase();
        qDatabase.test();
    }
}