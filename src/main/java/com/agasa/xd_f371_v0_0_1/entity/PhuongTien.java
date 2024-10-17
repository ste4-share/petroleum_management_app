package com.agasa.xd_f371_v0_0_1.entity;

public class PhuongTien {
    private int id;
    private String name;
    private String type;
    private int han_muc;
    private int dm_tk;
    private int dm_md;
    private int dm_xm;
    private int quantity;
    private int nguonnx_id;
    private String status;

    public PhuongTien() {
    }

    public int getNguonnx_id() {
        return nguonnx_id;
    }

    public void setNguonnx_id(int nguonnx_id) {
        this.nguonnx_id = nguonnx_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getHan_muc() {
        return han_muc;
    }

    public void setHan_muc(int han_muc) {
        this.han_muc = han_muc;
    }

    public int getDm_tk() {
        return dm_tk;
    }

    public void setDm_tk(int dm_tk) {
        this.dm_tk = dm_tk;
    }

    public int getDm_md() {
        return dm_md;
    }

    public void setDm_md(int dm_md) {
        this.dm_md = dm_md;
    }

    public int getDm_xm() {
        return dm_xm;
    }

    public void setDm_xm(int dm_xm) {
        this.dm_xm = dm_xm;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
