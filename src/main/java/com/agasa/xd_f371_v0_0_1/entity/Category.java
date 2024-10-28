package com.agasa.xd_f371_v0_0_1.entity;

public class Category {
    private int id;
    private String header_lv1;
    private String header_lv2;
    private String header_lv3;
    private String type_title;
    private int tructhuoc_id;
    private String code;

    public Category() {
    }

    public Category(int id, String header_lv1, String header_lv2, String header_lv3, String type_title, int tructhuoc_id, String code) {
        this.id = id;
        this.header_lv1 = header_lv1;
        this.header_lv2 = header_lv2;
        this.header_lv3 = header_lv3;
        this.type_title = type_title;
        this.tructhuoc_id = tructhuoc_id;
        this.code = code;
    }

    public Category(String header_lv1, String header_lv2, String header_lv3, String type_title, int tructhuoc_id) {
        this.header_lv1 = header_lv1;
        this.header_lv2 = header_lv2;
        this.header_lv3 = header_lv3;
        this.type_title = type_title;
        this.tructhuoc_id = tructhuoc_id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getTructhuoc_id() {
        return tructhuoc_id;
    }

    public void setTructhuoc_id(int tructhuoc_id) {
        this.tructhuoc_id = tructhuoc_id;
    }

    public String getType_title() {
        return type_title;
    }

    public void setType_title(String type_title) {
        this.type_title = type_title;
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
}
