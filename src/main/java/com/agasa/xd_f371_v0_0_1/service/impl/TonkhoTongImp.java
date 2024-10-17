package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.entity.Quarter;
import com.agasa.xd_f371_v0_0_1.entity.TonkhoTong;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.TonkhoTongService;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TonkhoTongImp implements TonkhoTongService {
    @Override
    public List<TonkhoTong> getAll() {
        QDatabase.getConnectionDB();
        List<TonkhoTong> result = new ArrayList<>();


        String SQL_SELECT = "Select * from tonkho_tong";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                int quarter_id = resultSet.getInt("id_quarter");
                int xd_id = resultSet.getInt("id_xd");
                int amount = resultSet.getInt("amount");
                int sscd = resultSet.getInt("sscd");
                int nvdx = resultSet.getInt("nvdx");
                int update_numb = resultSet.getInt("update_numb");
                int tck_nvdx = resultSet.getInt("tck_nvdx");
                int tck_sscd = resultSet.getInt("tck_sscd");
                int tck_sum = resultSet.getInt("tck_sum");
                int tdk_nvdx = resultSet.getInt("tdk_nvdx");
                int tdk_sscd = resultSet.getInt("tdk_sscd");
                int tdk_sum = resultSet.getInt("tdk_sum");


                TonkhoTong obj = new TonkhoTong();
                obj.setId(id);
                obj.setId_quarter(quarter_id);
                obj.setId_xd(xd_id);
                obj.setAmount(amount);
                obj.setSscd(sscd);
                obj.setNvdx(nvdx);
                obj.setUpdate_num(update_numb);
                obj.setTck_nvdx(tck_nvdx);
                obj.setTck_sscd(tck_sscd);
                obj.setTck_sum(tck_sum);
                obj.setTdk_nvdx(tdk_nvdx);
                obj.setTdk_sscd(tdk_sscd);
                obj.setTdk_sum(tdk_sum);
                result.add(obj);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public List<TonkhoTong> findByQuarterAll(int quarter_id1) {
        QDatabase.getConnectionDB();
        List<TonkhoTong> result = new ArrayList<>();


        String SQL_SELECT = "Select * from tonkho_tong where id_quarter=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, quarter_id1);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int quarter_id = resultSet.getInt("id_quarter");
                int xd_id = resultSet.getInt("id_xd");
                int amount = resultSet.getInt("amount");
                int sscd = resultSet.getInt("sscd");
                int nvdx = resultSet.getInt("nvdx");
                int update_numb = resultSet.getInt("update_numb");
                int tck_nvdx = resultSet.getInt("tck_nvdx");
                int tck_sscd = resultSet.getInt("tck_sscd");
                int tck_sum = resultSet.getInt("tck_sum");
                int tdk_nvdx = resultSet.getInt("tdk_nvdx");
                int tdk_sscd = resultSet.getInt("tdk_sscd");
                int tdk_sum = resultSet.getInt("tdk_sum");


                TonkhoTong obj = new TonkhoTong();
                obj.setId(id);
                obj.setId_quarter(quarter_id);
                obj.setId_xd(xd_id);
                obj.setAmount(amount);
                obj.setSscd(sscd);
                obj.setNvdx(nvdx);
                obj.setUpdate_num(update_numb);
                obj.setTck_nvdx(tck_nvdx);
                obj.setTck_sscd(tck_sscd);
                obj.setTck_sum(tck_sum);
                obj.setTdk_nvdx(tdk_nvdx);
                obj.setTdk_sscd(tdk_sscd);
                obj.setTdk_sum(tdk_sum);
                result.add(obj);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public List<TonkhoTong> findByQuarterAndXdAll(int quarter_id1, int xd_id1) {
        QDatabase.getConnectionDB();
        List<TonkhoTong> result = new ArrayList<>();


        String SQL_SELECT = "Select * from tonkho_tong where id_quarter=? and id_xd=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, quarter_id1);
            preparedStatement.setInt(2, xd_id1);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int quarter_id = resultSet.getInt("id_quarter");
                int xd_id = resultSet.getInt("id_xd");
                int amount = resultSet.getInt("amount");
                int sscd = resultSet.getInt("sscd");
                int nvdx = resultSet.getInt("nvdx");
                int update_numb = resultSet.getInt("update_numb");
                int tck_nvdx = resultSet.getInt("tck_nvdx");
                int tck_sscd = resultSet.getInt("tck_sscd");
                int tck_sum = resultSet.getInt("tck_sum");
                int tdk_nvdx = resultSet.getInt("tdk_nvdx");
                int tdk_sscd = resultSet.getInt("tdk_sscd");
                int tdk_sum = resultSet.getInt("tdk_sum");

                TonkhoTong obj = new TonkhoTong();
                obj.setId(id);
                obj.setId_quarter(quarter_id);
                obj.setId_xd(xd_id);
                obj.setAmount(amount);
                obj.setSscd(sscd);
                obj.setNvdx(nvdx);
                obj.setUpdate_num(update_numb);
                obj.setTck_nvdx(tck_nvdx);
                obj.setTck_sscd(tck_sscd);
                obj.setTck_sum(tck_sum);
                obj.setTdk_nvdx(tdk_nvdx);
                obj.setTdk_sscd(tdk_sscd);
                obj.setTdk_sum(tdk_sum);
                result.add(obj);
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public TonkhoTong create(TonkhoTong tonkhoTong) {
        QDatabase.getConnectionDB();
        String sql = "insert into tonkho_tong(id_quarter, id_xd, amount, tck_nvdx, tck_sscd, tck_sum) " +
                "values(?,?,?,?,?,?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, tonkhoTong.getId_quarter());
            statement.setInt(2, tonkhoTong.getId_xd());
            statement.setInt(3, tonkhoTong.getAmount());
            statement.setInt(4, tonkhoTong.getTck_nvdx());
            statement.setInt(5, tonkhoTong.getTck_sscd());
            statement.setInt(6, tonkhoTong.getTck_sum());
//            statement.setInt(8, tonkhoTong.getTdk_nvdx());
//            statement.setInt(9, tonkhoTong.getTdk_sscd());
//            statement.setInt(10, tonkhoTong.getTdk_sum());
            statement.executeUpdate();
            System.out.println("Record quarter updated.");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tonkhoTong;
    }

    @Override
    public TonkhoTong update(TonkhoTong tonKho) {
        QDatabase.getConnectionDB();
        String sql = "update tonkho_tong set tck_sum=?,tck_nvdx=?,tck_sscd=? where id_quarter=? and id_xd=?";
        try {

            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setInt(1, tonKho.getTck_sum());
            statement.setInt(2, tonKho.getTck_nvdx());
            statement.setInt(3, tonKho.getTck_sscd());
            statement.setInt(4, tonKho.getId_quarter());
            statement.setInt(5, tonKho.getId_xd());
            statement.executeUpdate();
            System.out.println("Record tonkho_tong updated.");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tonKho;
    }
}
