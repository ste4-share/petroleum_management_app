package com.agasa.xd_f371_v0_0_1.entity;

public class TructhuocLoaiphieu {
    private int id;
    private int tructhuoc_id;
    private int loaiphieu_id;

    public TructhuocLoaiphieu(int id, int tructhuoc_id, int loaiphieu_id) {
        this.id = id;
        this.tructhuoc_id = tructhuoc_id;
        this.loaiphieu_id = loaiphieu_id;
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
}
