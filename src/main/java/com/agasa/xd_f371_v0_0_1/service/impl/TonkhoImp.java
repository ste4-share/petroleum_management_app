package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.dto.TonKho;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.TonKhoService;
import com.fasterxml.jackson.core.json.async.NonBlockingJsonParser;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TonkhoImp implements TonKhoService {


    @Override
    public List<TonKho> getAll() {
        QDatabase.getConnectionDB();
        List<TonKho> result = new ArrayList<>();


        String SQL_SELECT = "Select * from tonkho";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String loaiXd = resultSet.getString("loai_xd");
                int soluong = resultSet.getInt("soluong");
                int mucgia = resultSet.getInt("mucgia");
                String createtime = resultSet.getString("createtime");
                String status = resultSet.getString("status");
                TonKho obj = new TonKho();
                obj.setId(id);
                obj.setLoai_xd(loaiXd);
                obj.setCreatetime(createtime);
                obj.setSoluong(soluong);
                obj.setStatus(status);
                obj.setMucgia(mucgia);
                result.add(obj);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public TonKho create(TonKho tonKho) {
        QDatabase.getConnectionDB();
        String sql = "insert into tonkho(loai_xd, soluong,mucgia,createtime,status) values (?,?, ?, ?,?)";
        try {

            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(1, tonKho.getLoai_xd());
            statement.setInt(2, tonKho.getSoluong());
            statement.setInt(3, tonKho.getMucgia());
            statement.setString(4, tonKho.getCreatetime());
            statement.setString(5, tonKho.getStatus());
            statement.executeUpdate();
            System.out.println("Record tonkho created.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tonKho;
    }

    @Override
    public TonKho update(TonKho tonKho) {
        QDatabase.getConnectionDB();
        String sql = "update tonkho set soluong=? where mucgia=? and loai_xd=?";
        try {

            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, tonKho.getSoluong());
            statement.setInt(2, tonKho.getMucgia());
            statement.setString(3, tonKho.getLoai_xd());
            statement.executeUpdate();
            System.out.println("Record tonkho updated.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tonKho;
    }

    @Override
    public void delete(TonKho tonKho) {

    }

    @Override
    public List<TonKho> findByLoaiXD(String loaixd1, int mucgia1) {
        QDatabase.getConnectionDB();
        List<TonKho> result = new ArrayList<>();


        String SQL_SELECT = "Select * from tonkho where loai_xd=? and mucgia=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, loaixd1);
            preparedStatement.setInt(2, mucgia1);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String loaiXd = resultSet.getString("loai_xd");
                int soluong = resultSet.getInt("soluong");
                int mucgia = resultSet.getInt("mucgia");
                String createtime = resultSet.getString("createtime");
                String status = resultSet.getString("status");
                TonKho obj = new TonKho();
                obj.setId(id);
                obj.setLoai_xd(loaiXd);
                obj.setCreatetime(createtime);
                obj.setSoluong(soluong);
                obj.setStatus(status);
                obj.setMucgia(mucgia);
                result.add(obj);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<TonKho> getTongKho() {

        QDatabase.getConnectionDB();
        List<TonKho> result = new ArrayList<>();

        String SQL_SELECT = "select loai_xd, sum(soluong) from tonkho group by loai_xd";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                String loaiXd = resultSet.getString("loai_xd");
                int sum = resultSet.getInt("sum");
                TonKho obj = new TonKho();
                obj.setLoai_xd(loaiXd);
                obj.setSl_tong(sum);
                result.add(obj);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
