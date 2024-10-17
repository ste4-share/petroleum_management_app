package com.agasa.xd_f371_v0_0_1.dto;

public class TructhuocLoaiphieuDTO {
    private int id;
    private int tructhuoc_id;
    private int loaiphieu_id;
    private String type;
    private String name;

    public TructhuocLoaiphieuDTO(int id, int tructhuoc_id, int loaiphieu_id, String type, String name) {
        this.id = id;
        this.tructhuoc_id = tructhuoc_id;
        this.loaiphieu_id = loaiphieu_id;
        this.type = type;
        this.name = name;
    }

    public TructhuocLoaiphieuDTO() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTructhuoc_id() {
        return tructhuoc_id;
    }

    public void setTructhuoc_id(int tructhuoc_id) {
        this.tructhuoc_id = tructhuoc_id;
    }

    public int getLoaiphieu_id() {
        return loaiphieu_id;
    }

    public void setLoaiphieu_id(int loaiphieu_id) {
        this.loaiphieu_id = loaiphieu_id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
