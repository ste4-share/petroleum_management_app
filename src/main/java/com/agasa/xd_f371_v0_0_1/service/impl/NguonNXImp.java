package com.agasa.xd_f371_v0_0_1.service.impl;

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
    public NguonNx create(NguonNx nguonNx) {
        return null;
    }

    @Override
    public NguonNx update(NguonNx nguonNx) {
        return null;
    }

    @Override
    public boolean delete_f(String so) {
        return false;
    }
}
