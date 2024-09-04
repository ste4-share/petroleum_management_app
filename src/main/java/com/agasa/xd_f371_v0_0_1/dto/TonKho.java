package com.agasa.xd_f371_v0_0_1.dto;

public class TonKho {
    private int id;
    private int stt;
    private String loai_xd;
    private int soluong;
    private int mucgia;
    private String createtime;
    private String status;
    private int sl_tong;

    public int getId() {
        return id;
    }

    public int getSl_tong() {
        return sl_tong;
    }

    public void setSl_tong(int sl_tong) {
        this.sl_tong = sl_tong;
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