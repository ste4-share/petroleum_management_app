package com.agasa.xd_f371_v0_0_1.entity;

public class Tcn {
    private int id;
    private int loaiphieu_id;
    private String name;
    private int concert;
    private String status;
    private String lp;

    public Tcn() {
    }

    public Tcn(int id, int loaiphieu_id, String name, int concert, String status) {
        this.id = id;
        this.loaiphieu_id = loaiphieu_id;
        this.name = name;
        this.concert = concert;
        this.status = status;
    }

    public String getLp() {
        return lp;
    }

    public void setLp(String lp) {
        this.lp = lp;
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

    public int getConcert() {
        return concert;
    }

    public void setConcert(int concert) {
        this.concert = concert;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
