package com.agasa.xd_f371_v0_0_1.entity;

public class NguonNx {
    private int id;
    private String ten;
    private String loai;
    private String createtime;
    private String loai_tt;
    private String may_bay;

    public NguonNx() {
    }

    public String getLoai_tt() {
        return loai_tt;
    }

    public void setLoai_tt(String loai_tt) {
        this.loai_tt = loai_tt;
    }

    public String getMay_bay() {
        return may_bay;
    }

    public void setMay_bay(String may_bay) {
        this.may_bay = may_bay;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }
}
