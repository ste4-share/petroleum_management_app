package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.entity.PhuongTien;
import com.agasa.xd_f371_v0_0_1.entity.Quarter;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.PhuongTienService;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PhuongTienImp implements PhuongTienService {

    @Override
    public List<PhuongTien> getAll() {
        QDatabase.getConnectionDB();
        List<PhuongTien> result = new ArrayList<>();
        String sql = "select * from phuongtien";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String type = resultSet.getString("type");
                int hanMuc = resultSet.getInt("han_muc");
                int dm_tk = resultSet.getInt("dm_tk");
                int dm_md = resultSet.getInt("dm_md");
                int dm_xm = resultSet.getInt("dm_xm");
                int quantity = resultSet.getInt("quantity");
                int nguonnxId = resultSet.getInt("nguonnx_id");
                String status = resultSet.getString("han_muc");

                PhuongTien phuongTien = new PhuongTien();
                phuongTien.setId(id);
                phuongTien.setName(name);
                phuongTien.setType(type);
                phuongTien.setHan_muc(hanMuc);
                phuongTien.setDm_tk(dm_tk);
                phuongTien.setDm_md(dm_md);
                phuongTien.setDm_xm(dm_xm);
                phuongTien.setQuantity(quantity);
                phuongTien.setNguonnx_id(nguonnxId);
                phuongTien.setStatus(status);
                result.add(phuongTien);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public PhuongTien createNew(PhuongTien phuongTien) {
        QDatabase.getConnectionDB();
        String sql = "insert into phuongtien(name, type, han_muc, dm_tk, dm_md, dm_xm, quantity, status,nguonnx_id) values(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(1, phuongTien.getName());
            statement.setString(2, phuongTien.getType());
            statement.setInt(3, phuongTien.getHan_muc());
            statement.setInt(4, phuongTien.getDm_tk());
            statement.setInt(5, phuongTien.getDm_md());
            statement.setInt(6, phuongTien.getDm_xm());
            statement.setInt(7, phuongTien.getQuantity());
            statement.setString(8, phuongTien.getStatus());
            statement.setInt(9, phuongTien.getNguonnx_id());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return phuongTien;
    }

    @Override
    public PhuongTien udpateObj(PhuongTien phuongTien) {
        QDatabase.getConnectionDB();
        String sql = "update phuongtien set name=?,type=?,han_muc=?,dm_tk=?,dm_md=?,dm_xm=?,quantity=?,status=?,nguonnx_id=?";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(1, phuongTien.getName());
            statement.setString(2, phuongTien.getType());
            statement.setInt(3, phuongTien.getHan_muc());
            statement.setInt(4, phuongTien.getDm_tk());
            statement.setInt(5, phuongTien.getDm_md());
            statement.setInt(6, phuongTien.getDm_xm());
            statement.setInt(7, phuongTien.getQuantity());
            statement.setString(8, phuongTien.getStatus());
            statement.setInt(9, phuongTien.getNguonnx_id());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return phuongTien;
    }

    @Override
    public PhuongTien findPhuongTienById(int id1) {
        QDatabase.getConnectionDB();
        PhuongTien phuongTien = new PhuongTien();
        String sql = "select * from phuongtien where id=?";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, id1);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String type = resultSet.getString("type");
                int hanMuc = resultSet.getInt("han_muc");
                int dm_tk = resultSet.getInt("dm_tk");
                int dm_md = resultSet.getInt("dm_md");
                int dm_xm = resultSet.getInt("dm_xm");
                int quantity = resultSet.getInt("quantity");
                int nguonnxId = resultSet.getInt("nguonnx_id");
                String status = resultSet.getString("han_muc");


                phuongTien.setId(id);
                phuongTien.setName(name);
                phuongTien.setType(type);
                phuongTien.setHan_muc(hanMuc);
                phuongTien.setDm_tk(dm_tk);
                phuongTien.setDm_md(dm_md);
                phuongTien.setDm_xm(dm_xm);
                phuongTien.setNguonnx_id(nguonnxId);
                phuongTien.setQuantity(quantity);
                phuongTien.setStatus(status);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return phuongTien;
    }

    @Override
    public List<PhuongTien> findPhuongTienByType(String type1) {
        QDatabase.getConnectionDB();
        List<PhuongTien> result = new ArrayList<>();
        String sql = "SELECT * FROM phuongtien where type like ?";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(1, "%" + type1 + "%");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String type = resultSet.getString("type");
                int hanMuc = resultSet.getInt("han_muc");
                int dm_tk = resultSet.getInt("dm_tk");
                int dm_md = resultSet.getInt("dm_md");
                int dm_xm = resultSet.getInt("dm_xm");
                int quantity = resultSet.getInt("quantity");
                int nguonnxId = resultSet.getInt("nguonnx_id");
                String status = resultSet.getString("han_muc");

                PhuongTien phuongTien = new PhuongTien();
                phuongTien.setId(id);
                phuongTien.setName(name);
                phuongTien.setType(type);
                phuongTien.setHan_muc(hanMuc);
                phuongTien.setDm_tk(dm_tk);
                phuongTien.setDm_md(dm_md);
                phuongTien.setDm_xm(dm_xm);
                phuongTien.setNguonnx_id(nguonnxId);
                phuongTien.setQuantity(quantity);
                phuongTien.setStatus(status);
                result.add(phuongTien);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Integer findNnxByPt(String pt) {
        QDatabase.getConnectionDB();
        String sql = "SELECT nguonnx_id FROM phuongtien where type id=?";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(1, pt);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                return resultSet.getInt("nguonnx_id");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
