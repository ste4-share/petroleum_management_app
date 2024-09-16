package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.entity.ChiTietNhiemVu;
import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.ChiTietNhiemVuService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ChiTietNhiemVuImp implements ChiTietNhiemVuService {
    @Override
    public List<ChiTietNhiemVu> getAll() {
        QDatabase.getConnectionDB();
        List<ChiTietNhiemVu> result = new ArrayList<>();


        String SQL_SELECT = "Select * from chi_tiet_nhiemvu";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String ten_nv = resultSet.getString("ten_nv");
                String chitiet = resultSet.getString("chitiet");
                String hm_trenkhong = resultSet.getString("hm_trenkhong");
                String hm_matdat = resultSet.getString("hm_matdat");
                String createtime = resultSet.getString("createtime");
                String status = resultSet.getString("status");
                ChiTietNhiemVu chiTietNhiemVu = new ChiTietNhiemVu();
                chiTietNhiemVu.setId(id);
                chiTietNhiemVu.setTen_nv(ten_nv);
                chiTietNhiemVu.setChi_tiet(chitiet);
                chiTietNhiemVu.setHm_trenkhong(hm_trenkhong);
                chiTietNhiemVu.setHm_matdat(hm_matdat);
                chiTietNhiemVu.setCreatetime(createtime);
                chiTietNhiemVu.setStatus(status);
                result.add(chiTietNhiemVu);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public ChiTietNhiemVu create(ChiTietNhiemVu chiTietNhiemVu) {
        return null;
    }

    @Override
    public ChiTietNhiemVu update(ChiTietNhiemVu chiTietNhiemVu) {
        return null;
    }

    @Override
    public ChiTietNhiemVu findCtnvByID(String chiTietNhiemVu) {
        return null;
    }

    @Override
    public ChiTietNhiemVu findById(int id1) {
        QDatabase.getConnectionDB();
        ChiTietNhiemVu result = new ChiTietNhiemVu();

        String SQL_SELECT = "select * from chi_tiet_nhiemvu where id=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, id1);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String ten_nv = resultSet.getString("ten_nv");
                String chitiet = resultSet.getString("chitiet");
                String hm_trenkhong = resultSet.getString("hm_trenkhong");
                String hm_matdat = resultSet.getString("hm_matdat");
                String createtime = resultSet.getString("createtime");
                String status = resultSet.getString("status");

                result.setId(id);
                result.setTen_nv(ten_nv);
                result.setChi_tiet(chitiet);
                result.setHm_trenkhong(hm_trenkhong);
                result.setHm_matdat(hm_matdat);
                result.setCreatetime(createtime);
                result.setStatus(status);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public ChiTietNhiemVu findByTenNv(String tennv, String ct) {
        QDatabase.getConnectionDB();
        ChiTietNhiemVu result = new ChiTietNhiemVu();

        String SQL_SELECT = "select * from chi_tiet_nhiemvu where ten_nv=? and chitiet=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, tennv);
            preparedStatement.setString(2, ct);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String ten_nv = resultSet.getString("ten_nv");
                String chitiet = resultSet.getString("chitiet");
                String hm_trenkhong = resultSet.getString("hm_trenkhong");
                String hm_matdat = resultSet.getString("hm_matdat");
                String createtime = resultSet.getString("createtime");
                String status = resultSet.getString("status");

                result.setId(id);
                result.setTen_nv(ten_nv);
                result.setChi_tiet(chitiet);
                result.setHm_trenkhong(hm_trenkhong);
                result.setHm_matdat(hm_matdat);
                result.setCreatetime(createtime);
                result.setStatus(status);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
