package com.agasa.xd_f371_v0_0_1.entity;

public class LedgerMap {
    private int id;
    private int loaixd_id;
    private int header_id;
    private int soluong;
    private int mucgia_id;
    private int quarter_id;
    private int status;

    public LedgerMap() {
    }

    public LedgerMap(int id, int loaixd_id, int header_id, int soluong, int mucgia_id, int quarter_id, int status) {
        this.id = id;
        this.loaixd_id = loaixd_id;
        this.header_id = header_id;
        this.soluong = soluong;
        this.mucgia_id = mucgia_id;
        this.quarter_id = quarter_id;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLoaixd_id() {
        return loaixd_id;
    }

    public void setLoaixd_id(int loaixd_id) {
        this.loaixd_id = loaixd_id;
    }

    public int getHeader_id() {
        return header_id;
    }

    public void setHeader_id(int header_id) {
        this.header_id = header_id;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public int getMucgia_id() {
        return mucgia_id;
    }

    public void setMucgia_id(int mucgia_id) {
        this.mucgia_id = mucgia_id;
    }

    public int getQuarter_id() {
        return quarter_id;
    }

    public void setQuarter_id(int quarter_id) {
        this.quarter_id = quarter_id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
