package com.agasa.xd_f371_v0_0_1;

import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.paint.Color;
import javafx.stage.Stage;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.awt.im.InputContext;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class F371Application extends Application {
    public static Stage rootStage;
    public static Scene rootScence;

    @Override
    public void start(Stage stage) throws IOException {
        Parent root = null;
        try {
            root = FXMLLoader.load(getClass().getResource("dashboard2.fxml"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        rootScence = new Scene(root);
        rootScence.setFill(Color.TRANSPARENT);
        stage.setScene(rootScence);
//        stage.setMaximized(true);
        stage.setTitle("Xăng dầu F371");
        rootStage = stage;
        stage.show();
//        Task<Void> task = new Task<Void>() {
//            @Override
//            protected Void call() throws Exception {
//                for (int i  =1; i<1000000; i++){
//                    System.out.println(i);
//                    updateProgress(i, 1000000);
//                }
//                return null;
//            }
//        };
//        Thread thread = new Thread(task);
//        thread.setDaemon(true);
//        thread.start();
//        ProgressBarShowing.show(task);


    }

    public static void main(String[] args) {
        InputContext.getInstance();
        launch(args);
        QDatabase qDatabase = new QDatabase();
        qDatabase.test();
    }
}