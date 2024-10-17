package com.agasa.xd_f371_v0_0_1.entity;

public class NguonNxTcn {
    private int id;
    private int nguonnx_id;
    private int tcn_id;
    private int loaiphieu_id;

    public NguonNxTcn() {
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

    public int getTcn_id() {
        return tcn_id;
    }

    public void setTcn_id(int tcn_id) {
        this.tcn_id = tcn_id;
    }
}
