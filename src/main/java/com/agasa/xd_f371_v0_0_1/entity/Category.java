package com.agasa.xd_f371_v0_0_1.entity;

public class Category {
    private int id;
    private String header_lv1;
    private String header_lv2;
    private String header_lv3;
    private int tructhuoc_id;

    public Category() {
    }

    public Category(int id, String header_lv1, String header_lv2, String header_lv3, int tructhuoc_id) {
        this.id = id;
        this.header_lv1 = header_lv1;
        this.header_lv2 = header_lv2;
        this.header_lv3 = header_lv3;
        this.tructhuoc_id = tructhuoc_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHeader_lv1() {
        return header_lv1;
    }

    public void setHeader_lv1(String header_lv1) {
        this.header_lv1 = header_lv1;
    }

    public String getHeader_lv2() {
        return header_lv2;
    }

    public void setHeader_lv2(String header_lv2) {
        this.header_lv2 = header_lv2;
    }

    public String getHeader_lv3() {
        return header_lv3;
    }

    public void setHeader_lv3(String header_lv3) {
        this.header_lv3 = header_lv3;
    }

    public int getTructhuoc_id() {
        return tructhuoc_id;
    }

    public void setTructhuoc_id(int tructhuoc_id) {
        this.tructhuoc_id = tructhuoc_id;
    }
}
