package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.dto.ChiTietNhiemVuDTO;
import com.agasa.xd_f371_v0_0_1.entity.NhiemVu;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.NhiemVuService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NhiemVuImp implements NhiemVuService {
    @Override
    public List<NhiemVu> getAll() {
        QDatabase.getConnectionDB();
        List<NhiemVu> result = new ArrayList<>();


        String SQL_SELECT = "Select * from nhiemvu";

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
                NhiemVu nhiemVu = new NhiemVu();
                nhiemVu.setId(id);
                nhiemVu.setTen_nv(ten_nv);
                nhiemVu.setChi_tiet(chitiet);
                nhiemVu.setHm_trenkhong(hm_trenkhong);
                nhiemVu.setHm_matdat(hm_matdat);
                nhiemVu.setCreatetime(createtime);
                nhiemVu.setStatus(status);
                result.add(nhiemVu);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public NhiemVu create(NhiemVu nhiemVu) {
        return null;
    }

    @Override
    public NhiemVu update(NhiemVu nhiemVu) {
        return null;
    }

    @Override
    public NhiemVu findCtnvByID(String chiTietNhiemVu) {
        return null;
    }

    @Override
    public NhiemVu findById(int id1) {
        QDatabase.getConnectionDB();
        NhiemVu result = new NhiemVu();

        String SQL_SELECT = "select * from nhiemvu where id=?";

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
    public NhiemVu findByTenNv(String tennv, String ct) {
        QDatabase.getConnectionDB();
        NhiemVu result = new NhiemVu();

        String SQL_SELECT = "select * from nhiemvu where ten_nv=? and chitiet=?";

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

    @Override
    public List<ChiTietNhiemVuDTO> getNvAndCtnv() {
        QDatabase.getConnectionDB();
        List<ChiTietNhiemVuDTO> result = new ArrayList<>();


        String SQL_SELECT = "select nhiemvu.id as nvid,ten_nv, nhiemvu, chitiet_nhiemvu.id as ctnvid from nhiemvu left join chitiet_nhiemvu on chitiet_nhiemvu.nhiemvu_id = nhiemvu.id;";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("nvid");
                String ten_nv = resultSet.getString("ten_nv");
                String nhiemVu = resultSet.getString("nhiemvu");
                int ctnv_id = resultSet.getInt("ctnvid");
                ChiTietNhiemVuDTO chiTietNhiemVuDTO = new ChiTietNhiemVuDTO();
                chiTietNhiemVuDTO.setId(id);
                chiTietNhiemVuDTO.setNhiemvu(ten_nv);
                chiTietNhiemVuDTO.setChiTietNhiemVu(nhiemVu);
                chiTietNhiemVuDTO.setCtnv_id(ctnv_id);
                result.add(chiTietNhiemVuDTO);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
