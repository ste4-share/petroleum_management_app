package com.agasa.xd_f371_v0_0_1.dto;

public class TonKho {
    private int id;
    private int stt;
    private String loai_xd;
    private int soluong;
    private int mucgia;
    private String createtime;
    private String status;
    private int quarter_id;
    private int loaixd_id;
    private int mucgia_id;


    public TonKho() {
    }


    public int getLoaixd_id() {
        return loaixd_id;
    }

    public void setLoaixd_id(int loaixd_id) {
        this.loaixd_id = loaixd_id;
    }

    public int getMucgia_id() {
        return mucgia_id;
    }

    public void setMucgia_id(int mucgia_id) {
        this.mucgia_id = mucgia_id;
    }

    public int getId() {
        return id;
    }

    public int getQuarter_id() {
        return quarter_id;
    }

    public void setQuarter_id(int quarter_id) {
        this.quarter_id = quarter_id;
    }

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public int getMucgia() {
        return mucgia;
    }

    public void setMucgia(int mucgia) {
        this.mucgia = mucgia;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLoai_xd() {
        return loai_xd;
    }

    public void setLoai_xd(String loai_xd) {
        this.loai_xd = loai_xd;
    }


    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}