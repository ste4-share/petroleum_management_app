package com.agasa.xd_f371_v0_0_1.entity;

public class LedgerDetails {
    private Integer id;
    private Integer stt;
    private String dvi;
    private String dvvc;
    private String ngay;
    private String ma_xd;
    private String ten_xd;
    private String chung_loai;
    private String loai_phieu;
    private String so;
    private String theo_lenh_so;
    private String nhiem_vu;
    private String nguoi_nhan_hang;
    private String so_xe;
    private String chat_luong;
    private int phai_xuat;
    private double nhiet_do_tt;
    private double ty_trong;
    private int he_so_vcf;
    private int thuc_xuat;
    private int don_gia;
    private Long thanh_tien;
    private int so_km;
    private int so_gio;
    private int so_phut;
    private String denngay;
    private String cmt;
    private String ma_so;
    private LoaiXangDau xd;
    private NguonNx dvvc_obj;
    private NguonNx dvn_obj;
    private String sscd;
    private String thanh_tien_str;
    private String thuc_xuat_str;
    private String phai_xuat_str;

    private int loaixd_id;
    private int nhiemvu_id;
    private int nvu_tcn_id;
    private int nvu_tructhuoc;
    private int nguonnx_tructhuoc;
    private int tcn_id;
    private int phuongtien_id;
    private int phuongtien_nvu_id;
    private int nguonnx_nvu_id;
    private int quarter_id;
    private int tonkhotong_id;
    private int tonkho_id;
    private int ledger_id;

    public LedgerDetails() {
    }

    public int getTcn_id() {
        return tcn_id;
    }

    public void setTcn_id(int tcn_id) {
        this.tcn_id = tcn_id;
    }

    public int getLoaixd_id() {
        return loaixd_id;
    }

    public void setLoaixd_id(int loaixd_id) {
        this.loaixd_id = loaixd_id;
    }

    public int getLedger_id() {
        return ledger_id;
    }

    public void setLedger_id(int ledger_id) {
        this.ledger_id = ledger_id;
    }

    public int getTonkho_id() {
        return tonkho_id;
    }

    public void setTonkho_id(int tonkho_id) {
        this.tonkho_id = tonkho_id;
    }

    public int getTonkhotong_id() {
        return tonkhotong_id;
    }

    public void setTonkhotong_id(int tonkhotong_id) {
        this.tonkhotong_id = tonkhotong_id;
    }

    public int getPhuongtien_nvu_id() {
        return phuongtien_nvu_id;
    }

    public void setPhuongtien_nvu_id(int phuongtien_nvu_id) {
        this.phuongtien_nvu_id = phuongtien_nvu_id;
    }

    public int getNguonnx_nvu_id() {
        return nguonnx_nvu_id;
    }

    public void setNguonnx_nvu_id(int nguonnx_nvu_id) {
        this.nguonnx_nvu_id = nguonnx_nvu_id;
    }

    public int getPhuongtien_id() {
        return phuongtien_id;
    }

    public void setPhuongtien_id(int phuongtien_id) {
        this.phuongtien_id = phuongtien_id;
    }

    public int getNvu_tcn_id() {
        return nvu_tcn_id;
    }

    public void setNvu_tcn_id(int nvu_tcn_id) {
        this.nvu_tcn_id = nvu_tcn_id;
    }

    public int getNvu_tructhuoc() {
        return nvu_tructhuoc;
    }

    public void setNvu_tructhuoc(int nvu_tructhuoc) {
        this.nvu_tructhuoc = nvu_tructhuoc;
    }

    public int getNguonnx_tructhuoc() {
        return nguonnx_tructhuoc;
    }

    public void setNguonnx_tructhuoc(int nguonnx_tructhuoc) {
        this.nguonnx_tructhuoc = nguonnx_tructhuoc;
    }

    public int getNhiemvu_id() {
        return nhiemvu_id;
    }

    public void setNhiemvu_id(int nhiemvu_id) {
        this.nhiemvu_id = nhiemvu_id;
    }

    public String getThanh_tien_str() {
        return thanh_tien_str;
    }

    public void setThanh_tien_str(String thanh_tien_str) {
        this.thanh_tien_str = thanh_tien_str;
    }

    public String getThuc_xuat_str() {
        return thuc_xuat_str;
    }

    public void setThuc_xuat_str(String thuc_xuat_str) {
        this.thuc_xuat_str = thuc_xuat_str;
    }

    public String getPhai_xuat_str() {
        return phai_xuat_str;
    }

    public void setPhai_xuat_str(String phai_xuat_str) {
        this.phai_xuat_str = phai_xuat_str;
    }

    public int getQuarter_id() {
        return quarter_id;
    }

    public void setQuarter_id(int quarter_id) {
        this.quarter_id = quarter_id;
    }

    public String getSscd() {
        return sscd;
    }

    public void setSscd(String sscd) {
        this.sscd = sscd;
    }

    public LoaiXangDau getXd() {
        return xd;
    }

    public void setXd(LoaiXangDau xd) {
        this.xd = xd;
    }

    public NguonNx getDvvc_obj() {
        return dvvc_obj;
    }

    public void setDvvc_obj(NguonNx dvvc_obj) {
        this.dvvc_obj = dvvc_obj;
    }

    public NguonNx getDvn_obj() {
        return dvn_obj;
    }

    public void setDvn_obj(NguonNx dvn_obj) {
        this.dvn_obj = dvn_obj;
    }

    public String getMa_so() {
        return ma_so;
    }

    public void setMa_so(String ma_so) {
        this.ma_so = ma_so;
    }

    public String getDenngay() {
        return denngay;
    }

    public void setDenngay(String denngay) {
        this.denngay = denngay;
    }

    public String getCmt() {
        return cmt;
    }

    public void setCmt(String cmt) {
        this.cmt = cmt;
    }

    public Integer getStt() {
        return stt;
    }

    public void setStt(Integer stt) {
        this.stt = stt;
    }

    public String getDvvc() {
        return dvvc;
    }

    public void setDvvc(String dvvc) {
        this.dvvc = dvvc;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDvi() {
        return dvi;
    }

    public void setDvi(String dvi) {
        this.dvi = dvi;
    }

    public String getNgay() {
        return ngay;
    }

    public void setNgay(String ngay) {
        this.ngay = ngay;
    }

    public String getMa_xd() {
        return ma_xd;
    }

    public void setMa_xd(String ma_xd) {
        this.ma_xd = ma_xd;
    }

    public String getTen_xd() {
        return ten_xd;
    }

    public void setTen_xd(String ten_xd) {
        this.ten_xd = ten_xd;
    }

    public String getChung_loai() {
        return chung_loai;
    }

    public void setChung_loai(String chung_loai) {
        this.chung_loai = chung_loai;
    }

    public String getLoai_phieu() {
        return loai_phieu;
    }

    public void setLoai_phieu(String loai_phieu) {
        this.loai_phieu = loai_phieu;
    }

    public String getSo() {
        return so;
    }

    public void setSo(String so) {
        this.so = so;
    }

    public String getTheo_lenh_so() {
        return theo_lenh_so;
    }

    public void setTheo_lenh_so(String theo_lenh_so) {
        this.theo_lenh_so = theo_lenh_so;
    }

    public String getNhiem_vu() {
        return nhiem_vu;
    }

    public void setNhiem_vu(String nhiem_vu) {
        this.nhiem_vu = nhiem_vu;
    }

    public String getNguoi_nhan_hang() {
        return nguoi_nhan_hang;
    }

    public void setNguoi_nhan_hang(String nguoi_nhan_hang) {
        this.nguoi_nhan_hang = nguoi_nhan_hang;
    }

    public String getSo_xe() {
        return so_xe;
    }

    public void setSo_xe(String so_xe) {
        this.so_xe = so_xe;
    }

    public String getChat_luong() {
        return chat_luong;
    }

    public void setChat_luong(String chat_luong) {
        this.chat_luong = chat_luong;
    }

    public int getPhai_xuat() {
        return phai_xuat;
    }

    public void setPhai_xuat(int phai_xuat) {
        this.phai_xuat = phai_xuat;
    }

    public double getNhiet_do_tt() {
        return nhiet_do_tt;
    }

    public void setNhiet_do_tt(double nhiet_do_tt) {
        this.nhiet_do_tt = nhiet_do_tt;
    }

    public double getTy_trong() {
        return ty_trong;
    }

    public void setTy_trong(double ty_trong) {
        this.ty_trong = ty_trong;
    }

    public int getHe_so_vcf() {
        return he_so_vcf;
    }

    public void setHe_so_vcf(int he_so_vcf) {
        this.he_so_vcf = he_so_vcf;
    }

    public int getThuc_xuat() {
        return thuc_xuat;
    }

    public void setThuc_xuat(int thuc_xuat) {
        this.thuc_xuat = thuc_xuat;
    }

    public int getDon_gia() {
        return don_gia;
    }

    public void setDon_gia(int don_gia) {
        this.don_gia = don_gia;
    }

    public Long getThanh_tien() {
        return thanh_tien;
    }

    public void setThanh_tien(Long thanh_tien) {
        this.thanh_tien = thanh_tien;
    }

    public int getSo_km() {
        return so_km;
    }

    public void setSo_km(int so_km) {
        this.so_km = so_km;
    }

    public int getSo_gio() {
        return so_gio;
    }

    public void setSo_gio(int so_gio) {
        this.so_gio = so_gio;
    }

    public int getSo_phut() {
        return so_phut;
    }

    public void setSo_phut(int so_phut) {
        this.so_phut = so_phut;
    }
}
