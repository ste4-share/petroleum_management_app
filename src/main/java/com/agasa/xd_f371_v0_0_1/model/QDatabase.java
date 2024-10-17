package com.agasa.xd_f371_v0_0_1.model;

import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QDatabase {

    public static Connection conn;

    public static void getConnectionDB(){
        try {
            if (conn == null){
                conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "12345678a");
            }
        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void getConnectionSQLiteDb(){
        try {
            if (conn == null){
                conn = DriverManager.getConnection("jdbc:sqlite:/ /localhost:5432/postgres", "postgres", "12345678a");
            }
        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void test(){
    }
}
