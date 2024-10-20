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
                int quarterId = resultSet.getInt("quarter_id");
                int loaixdId = resultSet.getInt("loaixd_id");
                int mucgiaId = resultSet.getInt("mucgia_id");
                TonKho obj = new TonKho();
                obj.setId(id);
                obj.setLoai_xd(loaiXd);
                obj.setCreatetime(createtime);
                obj.setSoluong(soluong);
                obj.setStatus(status);
                obj.setMucgia(mucgia);
                obj.setQuarter_id(quarterId);
                obj.setLoaixd_id(loaixdId);
                obj.setMucgia_id(mucgiaId);
                result.add(obj);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public TonKho create(TonKho tonKho) {
        QDatabase.getConnectionDB();
        String sql = "insert into tonkho(loai_xd, soluong,mucgia,createtime,status,quarter_id, loaixd_id, mucgia_id) values (?,?, ?, ?,?,?,?,?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(1, tonKho.getLoai_xd());
            statement.setInt(2, tonKho.getSoluong());
            statement.setInt(3, tonKho.getMucgia());
            statement.setString(4, tonKho.getCreatetime());
            statement.setString(5, tonKho.getStatus());
            statement.setInt(6, tonKho.getQuarter_id());
            statement.setInt(7, tonKho.getLoaixd_id());
            statement.setInt(8, tonKho.getMucgia_id());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tonKho;
    }

    @Override
    public TonKho update(TonKho tonKho) {
        QDatabase.getConnectionDB();
        String sql = "update tonkho set soluong=? where mucgia_id=? and loaixd_id=? and quarter_id=?";
        try {

            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, tonKho.getSoluong());
            statement.setInt(2, tonKho.getMucgia_id());
            statement.setInt(3, tonKho.getLoaixd_id());
            statement.setInt(4, tonKho.getQuarter_id());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tonKho;
    }

    @Override
    public void delete(TonKho tonKho) {

    }

    @Override
    public List<TonKho> findByLoaiXD(int loaixd1_id, int mucgia1_id) {
        QDatabase.getConnectionDB();
        List<TonKho> result = new ArrayList<>();


        String SQL_SELECT = "Select * from tonkho where loaixd_id=? and mucgia_id=? and soluong>=0";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, loaixd1_id);
            preparedStatement.setInt(2, mucgia1_id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String loaiXd = resultSet.getString("loai_xd");
                int soluong = resultSet.getInt("soluong");
                int mucgia = resultSet.getInt("mucgia");
                String createtime = resultSet.getString("createtime");
                String status = resultSet.getString("status");
                int quarterId = resultSet.getInt("quarter_id");
                int loaixdId = resultSet.getInt("loaixd_id");
                int mucgiaId = resultSet.getInt("mucgia_id");
                TonKho obj = new TonKho();
                obj.setId(id);
                obj.setLoai_xd(loaiXd);
                obj.setCreatetime(createtime);
                obj.setSoluong(soluong);
                obj.setStatus(status);
                obj.setMucgia(mucgia);
                obj.setQuarter_id(quarterId);
                obj.setLoaixd_id(loaixdId);
                obj.setMucgia_id(mucgiaId);
                result.add(obj);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public TonKho findBy3Id(int quarter_id, int loaixd_id, int mucgia_id) {
        QDatabase.getConnectionDB();
        String SQL_SELECT = "Select * from tonkho where loaixd_id=? and mucgia_id=? and quarter_id=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, loaixd_id);
            preparedStatement.setInt(2, mucgia_id);
            preparedStatement.setInt(3, quarter_id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String loaiXd = resultSet.getString("loai_xd");
                int soluong = resultSet.getInt("soluong");
                int mucgia1 = resultSet.getInt("mucgia");
                String createtime = resultSet.getString("createtime");
                String status = resultSet.getString("status");
                int quarterId = resultSet.getInt("quarter_id");
                int loaixdId = resultSet.getInt("loaixd_id");
                int mucgiaId = resultSet.getInt("mucgia_id");
                TonKho obj = new TonKho();
                obj.setId(id);
                obj.setLoai_xd(loaiXd);
                obj.setCreatetime(createtime);
                obj.setSoluong(soluong);
                obj.setStatus(status);
                obj.setMucgia(mucgia1);
                obj.setQuarter_id(quarterId);
                obj.setLoaixd_id(loaixdId);
                obj.setMucgia_id(mucgiaId);
                return obj;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return null;
    }

}
