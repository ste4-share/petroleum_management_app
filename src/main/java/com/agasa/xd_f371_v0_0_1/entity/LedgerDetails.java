package com.agasa.xd_f371_v0_0_1.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
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
    private int tcn_id;
    private int phuongtien_id;
    private int phuongtien_nvu_id;
    private int quarter_id;
    private int tonkhotong_id;
    private int tonkho_id;
    private int ledger_id;
    private int import_unit_id;
    private int export_unit_id;
    private int tructhuoc_id;
    private int so_gio_tk;
    private int so_phut_tk;

    public LedgerDetails() {
    }

}
