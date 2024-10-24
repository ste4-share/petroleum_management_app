package com.agasa.xd_f371_v0_0_1.service.impl;

import com.agasa.xd_f371_v0_0_1.dto.QuantityByTructhuocDTO;
import com.agasa.xd_f371_v0_0_1.entity.LedgerDetails;
import com.agasa.xd_f371_v0_0_1.dto.TTPhieuDto;
import com.agasa.xd_f371_v0_0_1.dto.XdTrucThuocDto;
import com.agasa.xd_f371_v0_0_1.model.QDatabase;
import com.agasa.xd_f371_v0_0_1.service.LoaiXdService;
import com.agasa.xd_f371_v0_0_1.service.LedgerDetailsService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LedgerDetailsImp implements LedgerDetailsService {
    private LoaiXdService loaiXdService = new LoaiXdImp();
    @Override
    public List<LedgerDetails> getAll() {
        QDatabase.getConnectionDB();
        List<LedgerDetails> result = new ArrayList<>();

        String SQL_SELECT = "Select * from ledger_details";

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
                Long thanhTien = resultSet.getLong("thanh_tien");
                int so_km = resultSet.getInt("so_km");
                int soGio = resultSet.getInt("so_gio");
                String dvvc = resultSet.getString("dvvc");
                int loaixd_id = resultSet.getInt("loaixd_id");
                int nguonnx_id = resultSet.getInt("nguonnx_id");
                int nguonnx_dvvc_id = resultSet.getInt("nguonnx_dvvc_id");
                String denngay = resultSet.getString("denngay");
                int nguonnx_tructhuoc = resultSet.getInt("nguonnx_tructhuoc");
                int nvu_tcn_id = resultSet.getInt("nvu_tcn_id");
                int nvu_tructhuoc = resultSet.getInt("nvu_tructhuoc");
                int quarter_id = resultSet.getInt("quarter_id");
                int phuongtien_id = resultSet.getInt("phuongtien_id");
                int nhiemvu_id = resultSet.getInt("nhiemvu_id");
                int nguonnx_nvu_id = resultSet.getInt("nguonnx_nvu_id");
                int phuongtien_nvu_id = resultSet.getInt("phuongtien_nvu_id");
                int so_phut = resultSet.getInt("so_phut");
                int tonkhotong_id = resultSet.getInt("tonkhotong_id");
                int tonkho_id = resultSet.getInt("tonkho_id");

                LedgerDetails obj = new LedgerDetails();
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

                obj.setXd(loaiXdService.findLoaiXdByID_non(loaixd_id));
                obj.setDenngay(denngay);
                obj.setNguonnx_tructhuoc(nguonnx_tructhuoc);
                obj.setNvu_tructhuoc(nvu_tructhuoc);
                obj.setNvu_tcn_id(nvu_tcn_id);
                obj.setQuarter_id(quarter_id);
                obj.setPhuongtien_id(phuongtien_id);
                obj.setNhiemvu_id(nhiemvu_id);
                obj.setNguonnx_nvu_id(nguonnx_nvu_id);
                obj.setPhuongtien_nvu_id(phuongtien_nvu_id);
                obj.setSo_phut(so_phut);
                obj.setTonkho_id(tonkho_id);
                obj.setTonkhotong_id(tonkhotong_id);
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
    public LedgerDetails create(LedgerDetails ledgerDetails) {
        QDatabase.getConnectionDB();
        String sql = "INSERT INTO ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, " +
                "so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc," +
                "loaixd_id, nguonnx_id, nguonnx_dvvc_id, denngay,nguonnx_tructhuoc," +
                "nvu_tcn_id,nvu_tructhuoc,quarter_id,phuongtien_id,nhiemvu_id,nguonnx_nvu_id,phuongtien_nvu_id,so_phut,tonkhotong_id,tonkho_id,ledger_id, tcn_id) " +
                "VALUES (?, ?,?, ?, ?,?, ?, ?, ?, ?,?,?,?,?, ?,?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement statement = QDatabase.conn.prepareStatement(sql);
            statement.setString(2, ledgerDetails.getNgay());
            statement.setString(3, ledgerDetails.getMa_xd());
            statement.setString(4, ledgerDetails.getTen_xd());
            statement.setString(5, ledgerDetails.getChung_loai());
            statement.setString(6, ledgerDetails.getLoai_phieu());
            statement.setString(7, ledgerDetails.getSo());
            statement.setString(8, ledgerDetails.getTheo_lenh_so());
            statement.setString(9, ledgerDetails.getNhiem_vu());
            statement.setString(10, ledgerDetails.getNguoi_nhan_hang());
            statement.setString(11, ledgerDetails.getSo_xe());
            statement.setString(12, ledgerDetails.getChat_luong());
            statement.setInt(13, ledgerDetails.getPhai_xuat());
            statement.setDouble(14, ledgerDetails.getNhiet_do_tt());
            statement.setDouble(15, ledgerDetails.getTy_trong());
            statement.setDouble(16, ledgerDetails.getHe_so_vcf());
            statement.setDouble(17, ledgerDetails.getThuc_xuat());
            statement.setDouble(18, ledgerDetails.getDon_gia());
            statement.setDouble(19, ledgerDetails.getThanh_tien());
            statement.setInt(20, ledgerDetails.getSo_km());
            statement.setInt(21, ledgerDetails.getSo_gio());
            if (ledgerDetails.getDvn_obj()==null){
                statement.setString(1, null);
                statement.setInt(24, 0);
            }else{
                statement.setString(1, ledgerDetails.getDvi());
                statement.setInt(24, ledgerDetails.getDvn_obj().getId());
            }
            statement.setString(22, ledgerDetails.getDvvc());
            statement.setInt(23, ledgerDetails.getXd().getId());
            statement.setInt(25, ledgerDetails.getDvvc_obj().getId());
            statement.setString(26, ledgerDetails.getDenngay());
            statement.setInt(27, ledgerDetails.getNguonnx_tructhuoc());
            statement.setInt(28, ledgerDetails.getNvu_tcn_id());
            statement.setInt(29, ledgerDetails.getNvu_tructhuoc());
            statement.setInt(30, ledgerDetails.getQuarter_id());
            statement.setInt(31, ledgerDetails.getPhuongtien_id());
            statement.setInt(32, ledgerDetails.getNhiemvu_id());
            statement.setInt(33, ledgerDetails.getNguonnx_nvu_id());
            statement.setInt(34, ledgerDetails.getPhuongtien_nvu_id());
            statement.setInt(35, ledgerDetails.getSo_phut());
            statement.setInt(36, ledgerDetails.getTonkhotong_id());
            statement.setInt(37, ledgerDetails.getTonkho_id());
            statement.setInt(38, ledgerDetails.getLedger_id());
            statement.setInt(39, ledgerDetails.getTcn_id());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return ledgerDetails;
    }

    @Override
    public LedgerDetails update(LedgerDetails ledgerDetails) {
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
        String SQL_SELECT = "select so,ngay, loai_phieu, dvi,dvvc,nhiem_vu,max(timestamp) as mx, string_agg(ten_xd, ', '),count(loai_phieu), SUM(thuc_xuat*don_gia::BIGINT) from ledger_details group by so,ngay, loai_phieu, dvi, dvvc, nhiem_vu order by mx DESC;";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String so = resultSet.getString("so");
                String ngaytao = resultSet.getString("ngay");
                String loai_phieu = resultSet.getString("loai_phieu");
                String dvi = resultSet.getString("dvi");
                String dvvc = resultSet.getString("dvvc");
                String nhiem_vu = resultSet.getString("nhiem_vu");
                String hanghoa = resultSet.getString("string_agg");
                Long tong = resultSet.getLong("sum");
                TTPhieuDto obj = new TTPhieuDto();
                obj.setDvn(dvi);
                obj.setDvvc(dvvc);
                obj.setHang_hoa(hanghoa);
                obj.setLoai_phieu(loai_phieu);
                obj.setSo(so);
                obj.setTcn(nhiem_vu);
                obj.setNgaytao(ngaytao);
                obj.setTong(tong);
                result.add(obj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public List<TTPhieuDto> getTTPhieu_ByLoaiPhieu(String loaiPhieu) {
        QDatabase.getConnectionDB();
        List<TTPhieuDto> result = new ArrayList<>();

        String SQL_SELECT = "select so,ngay, loai_phieu, dvi,dvvc,nhiem_vu,max(timestamp) as mx, string_agg(ten_xd, ', '),count(loai_phieu), SUM(thuc_xuat*don_gia::BIGINT) from ledger_details where loai_phieu=? group by so,ngay, loai_phieu, dvi, dvvc, nhiem_vu order by mx DESC;";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, loaiPhieu);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                String so = resultSet.getString("so");
                String ngaytao = resultSet.getString("ngay");
                String loai_phieu = resultSet.getString("loai_phieu");
                String dvi = resultSet.getString("dvi");
                String dvvc = resultSet.getString("dvvc");
                String nhiem_vu = resultSet.getString("nhiem_vu");
                String hanghoa = resultSet.getString("string_agg");
                Long tong = resultSet.getLong("sum");
                TTPhieuDto obj = new TTPhieuDto();
                obj.setDvn(dvi);
                obj.setDvvc(dvvc);
                obj.setHang_hoa(hanghoa);
                obj.setLoai_phieu(loai_phieu);
                obj.setSo(so);
                obj.setTcn(nhiem_vu);
                obj.setNgaytao(ngaytao);
                obj.setTong(tong);
                result.add(obj);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public List<LedgerDetails> getChiTietSoCai(String so1) {
        QDatabase.getConnectionDB();
        List<LedgerDetails> result = new ArrayList<>();

        String SQL_SELECT = "select * from ledger_details where so=?";

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
                Long thanhTien = resultSet.getLong("thanh_tien");
                int so_km = resultSet.getInt("so_km");
                int soGio = resultSet.getInt("so_gio");
                String dvvc = resultSet.getString("dvvc");
                int loaixd_id = resultSet.getInt("loaixd_id");
                int nguonnx_id = resultSet.getInt("nguonnx_id");
                int nguonnx_dvvc_id = resultSet.getInt("nguonnx_dvvc_id");
                String denngay = resultSet.getString("denngay");
                int nguonnx_tructhuoc = resultSet.getInt("nguonnx_tructhuoc");
                int nvu_tcn_id = resultSet.getInt("nvu_tcn_id");
                int nvu_tructhuoc = resultSet.getInt("nvu_tructhuoc");
                int quarter_id = resultSet.getInt("quarter_id");
                int phuongtien_id = resultSet.getInt("phuongtien_id");
                int nhiemvu_id = resultSet.getInt("nhiemvu_id");
                int nguonnx_nvu_id = resultSet.getInt("nguonnx_nvu_id");
                int phuongtien_nvu_id = resultSet.getInt("phuongtien_nvu_id");
                int so_phut = resultSet.getInt("so_phut");
                int tonkhotong_id = resultSet.getInt("tonkhotong_id");
                int tonkho_id = resultSet.getInt("tonkho_id");

                LedgerDetails obj = new LedgerDetails();
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
                obj.setXd(loaiXdService.findLoaiXdByID_non(loaixd_id));
                obj.setDenngay(denngay);
                obj.setNguonnx_tructhuoc(nguonnx_tructhuoc);
                obj.setNvu_tructhuoc(nvu_tructhuoc);
                obj.setNvu_tcn_id(nvu_tcn_id);
                obj.setQuarter_id(quarter_id);
                obj.setPhuongtien_id(phuongtien_id);
                obj.setNhiemvu_id(nhiemvu_id);
                obj.setNguonnx_nvu_id(nguonnx_nvu_id);
                obj.setPhuongtien_nvu_id(phuongtien_nvu_id);
                obj.setSo_phut(so_phut);
                obj.setTonkho_id(tonkho_id);
                obj.setTonkhotong_id(tonkhotong_id);
                result.add(obj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public List<XdTrucThuocDto> findTrucThuocByNameXd(String loaiphieu, String chungloai) {
        QDatabase.getConnectionDB();
        List<XdTrucThuocDto> result = new ArrayList<>();

        String SQL_SELECT = "select loaixd2.id as idxd,tructhuoc.id as tt_id, tenxd, chungloai,ledger_details.loai_phieu as loaiphieu,sum(thuc_xuat) as soluong_sum, sum(tdk_nvdx) as tdk_nvdx_sum,sum(tdk_sscd) as tdk_sscd_sum,sum(tdk_sum) as sum_tdk, tructhuoc.name as tt_name,tck_nvdx,tck_sscd,tck_sum, ut from ledger_details right join loaixd2 on ledger_details.loaixd_id= loaixd2.id join tonkho_tong on ledger_details.tonkhotong_id = tonkho_tong.id left join nguonnx_tructhuoc on ledger_details.nguonnx_tructhuoc= nguonnx_tructhuoc.id join tructhuoc on nguonnx_tructhuoc.tructhuoc_id=tructhuoc.id where ledger_details.loai_phieu=? and chungloai=? group by idxd,tt_id,tenxd,chungloai,loaiphieu, tt_name,tck_nvdx, tck_sscd, tck_sum, ut ORDER BY ut ASC;";

        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setString(1, loaiphieu);
            preparedStatement.setString(2, chungloai);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                int idxd = resultSet.getInt("idxd");
                int tt_id = resultSet.getInt("tt_id");
                String tenxd = resultSet.getString("tenxd");
                String chung_loai = resultSet.getString("chungloai");
                String loai_phieu = resultSet.getString("loai_phieu");
                int soluong_sum = resultSet.getInt("soluong_sum");
                int tdk_nvdx_sum = resultSet.getInt("tdk_nvdx_sum");
                int tdk_sscd_sum = resultSet.getInt("tdk_sscd_sum");
                int sum_tdk = resultSet.getInt("sum_tdk");
                String tt_name = resultSet.getString("tt_name");
                int tck_nvdx = resultSet.getInt("tck_nvdx");
                int tck_sscd = resultSet.getInt("tck_sscd");
                int tck_sum = resultSet.getInt("tck_sum");
                int ut = resultSet.getInt("ut");

                XdTrucThuocDto xdTrucThuocDto = new XdTrucThuocDto();
                xdTrucThuocDto.setIdxd(idxd);
                xdTrucThuocDto.setTt_id(tt_id);
                xdTrucThuocDto.setTenxd(tenxd);
                xdTrucThuocDto.setChungloai(chung_loai);
                xdTrucThuocDto.setLoai_phieu(loai_phieu);
                xdTrucThuocDto.setSoluong_sum(soluong_sum);
                xdTrucThuocDto.setTdk_nvdx_sum(tdk_nvdx_sum);
                xdTrucThuocDto.setTdk_sscd_sum(tdk_sscd_sum);
                xdTrucThuocDto.setSum_tdk(sum_tdk);
                xdTrucThuocDto.setTt_name(tt_name);
                xdTrucThuocDto.setTck_nvdx(tck_nvdx);
                xdTrucThuocDto.setTck_sscd(tck_sscd);
                xdTrucThuocDto.setTck_sum(tck_sum);
                xdTrucThuocDto.setUt(ut);
                result.add(xdTrucThuocDto);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return result;
    }

    @Override
    public QuantityByTructhuocDTO selectQuantityByTT(String loaiphieu, int xd_id, int tructhuoc_id) {
        QDatabase.getConnectionDB();

        String SQL_SELECT = "SELECT ten_xd, loai_phieu,tructhuoc.name as ttname, sum(thuc_xuat) as ttsum FROM public.ledger_details left join nguonnx_tructhuoc on ledger_details.nguonnx_tructhuoc =nguonnx_tructhuoc.id  left join tructhuoc on tructhuoc.id = nguonnx_tructhuoc.tructhuoc_id where loaixd_id=? and loai_phieu=? and tructhuoc.id=? group by ten_xd, loai_phieu,tructhuoc.name;";
        // auto close connection and preparedStatement
        try {
            PreparedStatement preparedStatement = QDatabase.conn.prepareStatement(SQL_SELECT);
            preparedStatement.setInt(1, xd_id);
            preparedStatement.setString(2, loaiphieu);
            preparedStatement.setInt(3, tructhuoc_id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String tenxd = resultSet.getString("ten_xd");
                String loai_phieu = resultSet.getString("loai_phieu");
                String ttname = resultSet.getString("ttname");
                int ttsum = resultSet.getInt("ttsum");

                QuantityByTructhuocDTO quantityByTructhuocDTO  = new QuantityByTructhuocDTO(tenxd,loai_phieu,ttname,ttsum);
                return quantityByTructhuocDTO;
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
