package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.entity.InvReportDetail;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.InvReportDetailService;
import com.agasa.xd_f371_v0_0_1.service.LoaiXdService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class invReportDetailImp implements InvReportDetailService {

    private LoaiXdService loaiXdService = new LoaiXdImp();

    @Override
    public List<InvReportDetail> getAll() {
        QDatabase.getConnectionDB();
        List<InvReportDetail> result = new ArrayList<>();


        String SQL_SELECT = "Select * from inv_report_detail";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String loaixd = resultSet.getString("loaixd");
                int soluong = resultSet.getInt("soluong");
                String lv1 = resultSet.getString("title_lv1");
                String lv2 = resultSet.getString("title_lv2");
                String lv3 = resultSet.getString("title_lv3");
                String lxdlv1 = resultSet.getString("title_lxd_lv1");
                String lxdlv2 = resultSet.getString("title_lxd_lv2");
                String lxdlv3 = resultSet.getString("title_lxd_lv3");
                InvReportDetail invReport = new InvReportDetail();
                invReport.setId(id);
                invReport.setLoaixd(loaixd);
                invReport.setSoluong(soluong);
                invReport.setTitle_lv1(lv1);
                invReport.setTitle_lv2(lv2);
                invReport.setTitle_lv3(lv3);
                invReport.setTitle_lxd_lv1(lxdlv1);
                invReport.setTitle_lxd_lv2(lxdlv2);
                invReport.setTitle_lxd_lv3(lxdlv3);
                result.add(invReport);
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
    public int createNew(InvReportDetail invReportDetail) {
        String SQL_SELECT = "insert into inv_report_detail(loaixd,soluong,title_lv1,title_lv2,title_lv3,title_lxd_lv1,title_lxd_lv2,title_lxd_lv3) values(?,?,?,?,?,?,?,?)";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, invReportDetail.getLoaixd());
            preparedStatement.setInt(2, invReportDetail.getSoluong());
            preparedStatement.setString(3, invReportDetail.getTitle_lv1());
            preparedStatement.setString(4, invReportDetail.getTitle_lv2());
            preparedStatement.setString(5, invReportDetail.getTitle_lv3());
            preparedStatement.setString(6, invReportDetail.getTitle_lxd_lv1());
            preparedStatement.setString(7, invReportDetail.getTitle_lxd_lv2());
            preparedStatement.setString(8, invReportDetail.getTitle_lxd_lv3());
            return preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    @Override
    public int updateNew(InvReportDetail invReportDetail) {
        String SQL_SELECT = "update inv_report_detail set soluong=?,title_lv1=?,title_lv2=?,title_lv3=?,title_lxd_lv1=?,title_lxd_lv2=?,title_lxd_lv3=? where loaixd=? and title_lv1=? and title_lv3=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, invReportDetail.getSoluong());
            preparedStatement.setString(2, invReportDetail.getTitle_lv1());
            preparedStatement.setString(3, invReportDetail.getTitle_lv2());
            preparedStatement.setString(4, invReportDetail.getTitle_lv3());
            preparedStatement.setString(5, invReportDetail.getTitle_lxd_lv1());
            preparedStatement.setString(6, invReportDetail.getTitle_lxd_lv2());
            preparedStatement.setString(7, invReportDetail.getTitle_lxd_lv3());
            preparedStatement.setString(8, invReportDetail.getLoaixd());
            preparedStatement.setString(9, invReportDetail.getTitle_lv1());
            preparedStatement.setString(10, invReportDetail.getTitle_lv3());

            return preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }

    }

    @Override
    public List<InvReportDetail> findByTenXd(String lxd, String title1, String title3) {
        QDatabase.getConnectionDB();
        List<InvReportDetail> result = new ArrayList<>();


        String SQL_SELECT = "Select * from inv_report_detail where loaixd=? and title_lv1=? and title_lv3=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1,lxd);
            preparedStatement.setString(2,title1);
            preparedStatement.setString(3, title3);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String loaixd = resultSet.getString("loaixd");
                int soluong = resultSet.getInt("soluong");
                String lv1 = resultSet.getString("title_lv1");
                String lv2 = resultSet.getString("title_lv2");
                String lv3 = resultSet.getString("title_lv3");
                String lxdlv1 = resultSet.getString("title_lxd_lv1");
                String lxdlv2 = resultSet.getString("title_lxd_lv2");
                String lxdlv3 = resultSet.getString("title_lxd_lv3");
                InvReportDetail invReport = new InvReportDetail();
                invReport.setId(id);
                invReport.setLoaixd(loaixd);
                invReport.setSoluong(soluong);
                invReport.setTitle_lv1(lv1);
                invReport.setTitle_lv2(lv2);
                invReport.setTitle_lv3(lv3);
                invReport.setTitle_lxd_lv1(lxdlv1);
                invReport.setTitle_lxd_lv2(lxdlv2);
                invReport.setTitle_lxd_lv3(lxdlv3);
                result.add(invReport);
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
    public Map<String, Map<String, Long>> getTkMap() {
        QDatabase.getConnectionDB();
        Map<String, Map<String, Long>> result = new HashMap<>();


//        String SQL_SELECT = "Select * from inv_report_detail";
//
//        // auto close connection and preparedStatement
//        try {
//            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
//            ResultSet resultSet = preparedStatement.executeQuery();
//
//            while (resultSet.next()) {
//
//                int id = resultSet.getInt("id");
//                String loaixd = resultSet.getString("loaixd");
//                int soluong = resultSet.getInt("soluong");
//                String lv1 = resultSet.getString("title_lv1");
//                String lv2 = resultSet.getString("title_lv2");
//                String lv3 = resultSet.getString("title_lv3");
//                String lxdlv1 = resultSet.getString("title_lxd_lv1");
//                String lxdlv2 = resultSet.getString("title_lxd_lv2");
//                String lxdlv3 = resultSet.getString("title_lxd_lv3");
//                InvReportDetail invReport = new InvReportDetail();
//                invReport.setId(id);
//                invReport.setLoaixd(loaixd);
//                invReport.setSoluong(soluong);
//                invReport.setTitle_lv1(lv1);
//                invReport.setTitle_lv2(lv2);
//                invReport.setTitle_lv3(lv3);
//                invReport.setTitle_lxd_lv1(lxdlv1);
//                invReport.setTitle_lxd_lv2(lxdlv2);
//                invReport.setTitle_lxd_lv3(lxdlv3);
//                result.add(invReport);
//            }
//
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        } catch (Exception e) {
//            e.printStackTrace();
//            throw new RuntimeException(e);
//        }
        return result;
    }
}
