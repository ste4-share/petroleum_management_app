package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.dto.SoCaiDto;
import com.agasa.xd_f371_v0_0_1.dto.TTPhieuDto;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.SoCaiService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SoCaiImp implements SoCaiService {
    @Override
    public List<SoCaiDto> getAll() {
        QDatabase.getConnectionDB();
        List<SoCaiDto> result = new ArrayList<>();

        String SQL_SELECT = "Select * from so_cai";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String dvi = resultSet.getString("dvi");
                String ngay = resultSet.getString("ngay");
                String maxd = resultSet.getString("ma_xd");
                String tenxd = resultSet.getString("ten_xd");
                String chungloai = resultSet.getString("chung_loai");
                String loai_phieu = resultSet.getString("loai_phieu");
                String so = resultSet.getString("so");
                String theo_lenh_so = resultSet.getString("theo_lenh_so");
                String nhiem_vu = resultSet.getString("nhiem_vu");
                String nguoi_nhan_hang = resultSet.getString("nguoi_nhan_hang");
                String soXe = resultSet.getString("so_xe");
                String chat_luong = resultSet.getString("chat_luong");
                int phaiXuat = resultSet.getInt("phai_xuat");
                int nhiet_do_tt = resultSet.getInt("nhiet_do_tt");
                int tyTrong = resultSet.getInt("ty_trong");
                int heSoVcf = resultSet.getInt("he_so_vcf");
                int thucXuat = resultSet.getInt("thuc_xuat");
                int donGia = resultSet.getInt("don_gia");
                int thanhTien = resultSet.getInt("thanh_tien");
                String so_km = resultSet.getString("so_km");
                String soGio = resultSet.getString("so_gio");
                String dvvc = resultSet.getString("dvvc");
                SoCaiDto obj = new SoCaiDto();
                obj.setId(id);
                obj.setDvi(dvi);
                obj.setDvvc(dvvc);
                obj.setNgay(ngay);
                obj.setTen_xd(tenxd);
                obj.setMa_xd(maxd);
                obj.setChung_loai(chungloai);
                obj.setLoai_phieu(loai_phieu);
                obj.setSo(so);
                obj.setTheo_lenh_so(theo_lenh_so);
                obj.setNhiem_vu(nhiem_vu);
                obj.setNguoi_nhan_hang(nguoi_nhan_hang);
                obj.setSo_xe(soXe);
                obj.setChat_luong(chat_luong);
                obj.setPhai_xuat(phaiXuat);
                obj.setNhiet_do_tt(nhiet_do_tt);
                obj.setTy_trong(tyTrong);
                obj.setHe_so_vcf(heSoVcf);
                obj.setThuc_xuat(thucXuat);
                obj.setDon_gia(donGia);
                obj.setThanh_tien(thanhTien);
                obj.setSo_gio(soGio);
                obj.setSo_km(so_km);
                obj.setDvvc(dvvc);
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
    public SoCaiDto create(SoCaiDto soCaiDto) {
        QDatabase.getConnectionDB();
        String sql = "INSERT INTO so_cai (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, " +
                "so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio,dvvc) " +
                "VALUES (?, ?, ?,?, ?, ?,?, ?, ?,?, ?, ?,?, ?, ?,?, ?, ?,?, ?,?,?)";
        try {

            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(1, soCaiDto.getDvi());
            statement.setString(2, soCaiDto.getNgay());
            statement.setString(3, soCaiDto.getMa_xd());
            statement.setString(4, soCaiDto.getTen_xd());
            statement.setString(5, soCaiDto.getChung_loai());
            statement.setString(6, soCaiDto.getLoai_phieu());
            statement.setString(7, soCaiDto.getSo());
            statement.setString(8, soCaiDto.getTheo_lenh_so());
            statement.setString(9, soCaiDto.getNhiem_vu());
            statement.setString(10, soCaiDto.getNguoi_nhan_hang());
            statement.setString(11, soCaiDto.getSo_xe());
            statement.setString(12, soCaiDto.getChat_luong());
            statement.setInt(13, soCaiDto.getPhai_xuat());
            statement.setDouble(14, soCaiDto.getNhiet_do_tt());
            statement.setDouble(15, soCaiDto.getTy_trong());
            statement.setDouble(16, soCaiDto.getHe_so_vcf());
            statement.setDouble(17, soCaiDto.getThuc_xuat());
            statement.setDouble(18, soCaiDto.getDon_gia());
            statement.setDouble(19, soCaiDto.getThanh_tien());
            statement.setInt(20, Integer.parseInt(soCaiDto.getSo_km()));
            statement.setInt(21, Integer.parseInt(soCaiDto.getSo_gio()));
            statement.setString(22, soCaiDto.getDvvc());
            statement.executeUpdate();
            System.out.println("Record created.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return soCaiDto;
    }

    @Override
    public SoCaiDto update(SoCaiDto soCaiDto) {
        return null;
    }

    @Override
    public boolean delete_f(String so) {
        return false;
    }

    @Override
    public List<TTPhieuDto> getTTPhieu() {
        QDatabase.getConnectionDB();
        List<TTPhieuDto> result = new ArrayList<>();

        String SQL_SELECT = "select so, loai_phieu, dvi,dvvc,nhiem_vu, string_agg(ten_xd, ', '),count(loai_phieu), SUM(thuc_xuat*don_gia) from so_cai group by so, loai_phieu, dvi, dvvc, nhiem_vu";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                String so = resultSet.getString("so");
                String loai_phieu = resultSet.getString("loai_phieu");
                String dvi = resultSet.getString("dvi");
                String dvvc = resultSet.getString("dvvc");
                String nhiem_vu = resultSet.getString("nhiem_vu");
                String hanghoa = resultSet.getString("string_agg");
                int tong = resultSet.getInt("sum");
                TTPhieuDto obj = new TTPhieuDto();
                obj.setDvn(dvi);
                obj.setDvvc(dvvc);
                obj.setHang_hoa(hanghoa);
                obj.setLoai_phieu(loai_phieu);
                obj.setSo(so);
                obj.setTcn(nhiem_vu);
                obj.setTong(tong);
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
    public List<SoCaiDto> getChiTietSoCai(String so1) {
        QDatabase.getConnectionDB();
        List<SoCaiDto> result = new ArrayList<>();

        String SQL_SELECT = "select * from so_cai where so=?";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, so1);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String dvi = resultSet.getString("dvi");
                String ngay = resultSet.getString("ngay");
                String maxd = resultSet.getString("ma_xd");
                String tenxd = resultSet.getString("ten_xd");
                String chungloai = resultSet.getString("chung_loai");
                String loai_phieu = resultSet.getString("loai_phieu");
                String so = resultSet.getString("so");
                String theo_lenh_so = resultSet.getString("theo_lenh_so");
                String nhiem_vu = resultSet.getString("nhiem_vu");
                String nguoi_nhan_hang = resultSet.getString("nguoi_nhan_hang");
                String soXe = resultSet.getString("so_xe");
                String chat_luong = resultSet.getString("chat_luong");
                int phaiXuat = resultSet.getInt("phai_xuat");
                int nhiet_do_tt = resultSet.getInt("nhiet_do_tt");
                int tyTrong = resultSet.getInt("ty_trong");
                int heSoVcf = resultSet.getInt("he_so_vcf");
                int thucXuat = resultSet.getInt("thuc_xuat");
                int donGia = resultSet.getInt("don_gia");
                int thanhTien = resultSet.getInt("thanh_tien");
                String so_km = resultSet.getString("so_km");
                String soGio = resultSet.getString("so_gio");
                String dvvc = resultSet.getString("dvvc");
                SoCaiDto obj = new SoCaiDto();
                obj.setId(id);
                obj.setDvi(dvi);
                obj.setDvvc(dvvc);
                obj.setNgay(ngay);
                obj.setTen_xd(tenxd);
                obj.setMa_xd(maxd);
                obj.setChung_loai(chungloai);
                obj.setLoai_phieu(loai_phieu);
                obj.setSo(so);
                obj.setTheo_lenh_so(theo_lenh_so);
                obj.setNhiem_vu(nhiem_vu);
                obj.setNguoi_nhan_hang(nguoi_nhan_hang);
                obj.setSo_xe(soXe);
                obj.setChat_luong(chat_luong);
                obj.setPhai_xuat(phaiXuat);
                obj.setNhiet_do_tt(nhiet_do_tt);
                obj.setTy_trong(tyTrong);
                obj.setHe_so_vcf(heSoVcf);
                obj.setThuc_xuat(thucXuat);
                obj.setDon_gia(donGia);
                obj.setThanh_tien(thanhTien);
                obj.setSo_gio(soGio);
                obj.setSo_km(so_km);
                obj.setDvvc(dvvc);
                result.add(obj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
