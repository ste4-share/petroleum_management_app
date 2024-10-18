package com.agasa.xd_f371_v0_0_1.entity;

public class InvReportDetail {
    private int id;
    private String loaixd;
    private int soluong;
    private String title_lv1;
    private String title_lv2;
    private String title_lv3;
    private String title_lxd_lv1;
    private String title_lxd_lv2;
    private String title_lxd_lv3;
    private int inv_report_id;

    public InvReportDetail() {
    }

    public InvReportDetail(int id, String loaixd, int soluong, String title_lv1, String title_lv2, String title_lv3, String title_lxd_lv1, String title_lxd_lv2, String title_lxd_lv3, int inv_report_id) {
        this.id = id;
        this.loaixd = loaixd;
        this.soluong = soluong;
        this.title_lv1 = title_lv1;
        this.title_lv2 = title_lv2;
        this.title_lv3 = title_lv3;
        this.title_lxd_lv1 = title_lxd_lv1;
        this.title_lxd_lv2 = title_lxd_lv2;
        this.title_lxd_lv3 = title_lxd_lv3;
        this.inv_report_id = inv_report_id;
    }

    public int getInv_report_id() {
        return inv_report_id;
    }

    public void setInv_report_id(int inv_report_id) {
        this.inv_report_id = inv_report_id;
    }

    public String getTitle_lxd_lv1() {
        return title_lxd_lv1;
    }

    public void setTitle_lxd_lv1(String title_lxd_lv1) {
        this.title_lxd_lv1 = title_lxd_lv1;
    }

    public String getTitle_lxd_lv2() {
        return title_lxd_lv2;
    }

    public void setTitle_lxd_lv2(String title_lxd_lv2) {
        this.title_lxd_lv2 = title_lxd_lv2;
    }

    public String getTitle_lxd_lv3() {
        return title_lxd_lv3;
    }

    public void setTitle_lxd_lv3(String title_lxd_lv3) {
        this.title_lxd_lv3 = title_lxd_lv3;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLoaixd() {
        return loaixd;
    }

    public void setLoaixd(String loaixd) {
        this.loaixd = loaixd;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getTitle_lv1() {
        return title_lv1;
    }

    public void setTitle_lv1(String title_lv1) {
        this.title_lv1 = title_lv1;
    }

    public String getTitle_lv2() {
        return title_lv2;
    }

    public void setTitle_lv2(String title_lv2) {
        this.title_lv2 = title_lv2;
    }

    public String getTitle_lv3() {
        return title_lv3;
    }

    public void setTitle_lv3(String title_lv3) {
        this.title_lv3 = title_lv3;
    }
}
