package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.LoaiXdService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class LoaiXdImp implements LoaiXdService {
    @Override
    public List<LoaiXangDau> getAll() {
        QDatabase.getConnectionDB();
        List<LoaiXangDau> result = new ArrayList<>();


        String SQL_SELECT = "Select * from loai_xd";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String maxd = resultSet.getString("maxd");
                String tenxd = resultSet.getString("tenxd");
                String chungloai = resultSet.getString("chungloai");
                Date createtime = resultSet.getDate("createtime");
                String status = resultSet.getString("status");
                LoaiXangDau obj = new LoaiXangDau();
                obj.setId(id);
                obj.setChungloai(chungloai);
                obj.setCreatetime(createtime);
                obj.setTenxd(tenxd);
                obj.setMaxd(maxd);
                obj.setStatus(status);
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
    public LoaiXangDau create(LoaiXangDau importDto) {
        return null;
    }

    @Override
    public LoaiXangDau update(LoaiXangDau importDto) {
        return null;
    }

    @Override
    public boolean delete_f(String so) {
        return false;
    }
}
