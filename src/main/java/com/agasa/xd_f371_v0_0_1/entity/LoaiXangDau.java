package com.agasa.xd_f371_v0_0_1.entity;

import java.util.Date;

public class LoaiXangDau {
    private int id;
    private String maxd;
    private String tenxd;
    private String chungloai;
    private Date createtime;
    private String status;

    public LoaiXangDau() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaxd() {
        return maxd;
    }

    public void setMaxd(String maxd) {
        this.maxd = maxd;
    }

    public String getTenxd() {
        return tenxd;
    }

    public void setTenxd(String tenxd) {
        this.tenxd = tenxd;
    }

    public String getChungloai() {
        return chungloai;
    }

    public void setChungloai(String chungloai) {
        this.chungloai = chungloai;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
