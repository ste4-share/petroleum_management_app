package com.agasa.xd_f371_v0_0_1.entity;

public class NguonNx_tructhuoc {
    private int id;
    private int nguonnx_id;
    private int tructhuoc_id;
    private int loaiphieu_id;

    public NguonNx_tructhuoc() {
    }

    public NguonNx_tructhuoc(int nguonnx_id, int tructhuoc_id, int loaiphieu_id) {
        this.nguonnx_id = nguonnx_id;
        this.tructhuoc_id = tructhuoc_id;
        this.loaiphieu_id = loaiphieu_id;
    }

    public int getLoaiphieu_id() {
        return loaiphieu_id;
    }

    public void setLoaiphieu_id(int loaiphieu_id) {
        this.loaiphieu_id = loaiphieu_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNguonnx_id() {
        return nguonnx_id;
    }

    public void setNguonnx_id(int nguonnx_id) {
        this.nguonnx_id = nguonnx_id;
    }

    public int getTructhuoc_id() {
        return tructhuoc_id;
    }

    public void setTructhuoc_id(int tructhuoc_id) {
        this.tructhuoc_id = tructhuoc_id;
    }
}