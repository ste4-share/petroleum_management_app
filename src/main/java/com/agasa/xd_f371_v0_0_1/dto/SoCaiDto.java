package com.agasa.xd_f371_v0_0_1.dto;

import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;

import java.util.Date;

public class SoCaiDto {
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
    private int thanh_tien;
    private String so_km;
    private String so_gio;

    private String denngay;
    private String cmt;
    private String ma_so;
    private LoaiXangDau xd;
    private NguonNx dvvc_obj;
    private NguonNx dvn_obj;
    private String sscd;

    public SoCaiDto() {
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

    public int getThanh_tien() {
        return thanh_tien;
    }

    public void setThanh_tien(int thanh_tien) {
        this.thanh_tien = thanh_tien;
    }

    public String getSo_km() {
        return so_km;
    }

    public void setSo_km(String so_km) {
        this.so_km = so_km;
    }

    public String getSo_gio() {
        return so_gio;
    }

    public void setSo_gio(String so_gio) {
        this.so_gio = so_gio;
    }
}
