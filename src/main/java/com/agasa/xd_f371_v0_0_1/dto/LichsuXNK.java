package com.agasa.xd_f371_v0_0_1.dto;

public class LichsuXNK {
    private int id;
    private int stt;
    private String ten_xd;
    private String loai_phieu;
    private int tontruoc;
    private int soluong;
    private int tonsau;
    private String mucgia;

    private String createTime;
    private String tontruoc_str;
    private String soluong_str;
    private String tonsau_str;

    public LichsuXNK() {
    }

    public String getTontruoc_str() {
        return tontruoc_str;
    }

    public void setTontruoc_str(String tontruoc_str) {
        this.tontruoc_str = tontruoc_str;
    }

    public String getSoluong_str() {
        return soluong_str;
    }

    public void setSoluong_str(String soluong_str) {
        this.soluong_str = soluong_str;
    }

    public String getTonsau_str() {
        return tonsau_str;
    }

    public void setTonsau_str(String tonsau_str) {
        this.tonsau_str = tonsau_str;
    }

    public String getMucgia() {
        return mucgia;
    }

    public void setMucgia(String mucgia) {
        this.mucgia = mucgia;
    }

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }

    public int getId() {
        return id;
    }

    public int getTonsau() {
        return tonsau;
    }

    public void setTonsau(int tonsau) {
        this.tonsau = tonsau;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen_xd() {
        return ten_xd;
    }

    public void setTen_xd(String ten_xd) {
        this.ten_xd = ten_xd;
    }

    public String getLoai_phieu() {
        return loai_phieu;
    }

    public void setLoai_phieu(String loai_phieu) {
        this.loai_phieu = loai_phieu;
    }

    public int getTontruoc() {
        return tontruoc;
    }

    public void setTontruoc(int tontruoc) {
        this.tontruoc = tontruoc;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }


    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
