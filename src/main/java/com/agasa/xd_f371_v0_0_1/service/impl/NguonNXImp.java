package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.dto.SoCaiDto;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.NguonNXService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NguonNXImp implements NguonNXService {

    @Override
    public List<NguonNx> getAll() {
        QDatabase.getConnectionDB();
        List<NguonNx> result = new ArrayList<>();


        String SQL_SELECT = "Select * from nguon_nx";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String loai = resultSet.getString("loai");
                String createtime = resultSet.getString("createtime");
                NguonNx obj = new NguonNx();
                obj.setId(id);
                obj.setCreatetime(createtime);
                obj.setTen(ten);
                obj.setLoai(loai);
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
    public List<NguonNx> getAllWithType(String type) {
        QDatabase.getConnectionDB();
        List<NguonNx> result = new ArrayList<>();


        String SQL_SELECT = "Select * from nguon_nx where loai_tt=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, type);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String loai = resultSet.getString("loai");
                String createtime = resultSet.getString("createtime");
                String loai_tt = resultSet.getString("loai_tt");

                NguonNx obj = new NguonNx();
                obj.setId(id);
                obj.setCreatetime(createtime);
                obj.setTen(ten);
                obj.setLoai(loai);
                obj.setLoai_tt(loai_tt);
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
    public NguonNx findNguonNXByName(String name, String loai_tt1) {
        QDatabase.getConnectionDB();
        NguonNx result = new NguonNx();


        String SQL_SELECT = "Select * from nguon_nx where ten=? and loai_tt=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, loai_tt1);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String loai = resultSet.getString("loai");
                String createtime = resultSet.getString("createtime");
                String loai_tt = resultSet.getString("loai_tt");

                result.setId(id);
                result.setCreatetime(createtime);
                result.setTen(ten);
                result.setLoai(loai);
                result.setLoai_tt(loai_tt);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<NguonNx> nguonLs(List<Integer> idls) {
        QDatabase.getConnectionDB();
        List<NguonNx> result = new ArrayList<>();

        return result;
    }

    @Override
    public NguonNx create(NguonNx nguonNx) {
        return null;
    }

    @Override
    public NguonNx update(NguonNx nguonNx) {
        return null;
    }

    @Override
    public NguonNx findById(int id1) {
        QDatabase.getConnectionDB();
        NguonNx result = new NguonNx();

        String SQL_SELECT = "select * from nguon_nx where id=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, id1);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String ten = resultSet.getString("ten");
                String loai = resultSet.getString("loai");
                String createtime = resultSet.getString("createtime");

                result.setId(id);
                result.setTen(ten);
                result.setLoai(loai);
                result.setCreatetime(createtime);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public boolean delete_f(String so) {
        return false;
    }
}
