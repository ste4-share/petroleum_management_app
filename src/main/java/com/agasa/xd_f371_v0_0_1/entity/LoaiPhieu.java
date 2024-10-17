package com.agasa.xd_f371_v0_0_1.entity;

public class LoaiPhieu {
    private int id;
    private String type;

    public LoaiPhieu() {
    }

    public LoaiPhieu(int id, String type) {
        this.id = id;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
