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

    public LichsuXNK() {
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
