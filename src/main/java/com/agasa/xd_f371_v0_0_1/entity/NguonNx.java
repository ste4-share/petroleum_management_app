package com.agasa.xd_f371_v0_0_1.entity;

public class NguonNx {
    private int id;
    private String ten;
    private String tructhuoc;
    private String createtime;

    public NguonNx() {
    }

    public NguonNx(int id, String ten, String tructhuoc, String createtime) {
        this.id = id;
        this.ten = ten;
        this.tructhuoc = tructhuoc;
        this.createtime = createtime;
    }

    public String getTructhuoc() {
        return tructhuoc;
    }

    public void setTructhuoc(String tructhuoc) {
        this.tructhuoc = tructhuoc;
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

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }
}
