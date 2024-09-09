package com.agasa.xd_f371_v0_0_1;

import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import java.awt.im.InputContext;
import java.io.IOException;

public class F371Application extends Application {
    public static Stage rootStage;

    @Override
    public void start(Stage stage) throws IOException {
        Parent root = FXMLLoader.load(getClass().getResource("dashboard2.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
//        stage.setMaximized(true);
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