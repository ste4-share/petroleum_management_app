package com.agasa.xd_f371_v0_0_1.entity;

public class Inventory {
    private int stt;
    private int id;
    private int petro_id;
    private int quarter_id;
    private int tdk_nvdx;
    private int tdk_sscd;
    private int pre_nvdx;
    private int pre_sscd;
    private int tcK_nvdx;
    private int tck_sscd;
    private int import_total;
    private int export_total;
    private int total;
    private String status;

    private String tdk_nvdx_str;
    private String tdk_sscd_str;
    private String tdk_sum_str;
    private String tcK_nvdx_str;
    private String tck_sscd_str;
    private String tck_sum_str;
    private String pre_nvdx_str;
    private String pre_sscd_str;
    private String pre_sum_str;
    private String petroleumName;
    private String chungloai;

    public Inventory() {
    }

    public Inventory(int id, int petro_id, int quarter_id, int tdk_nvdx, int tdk_sscd, int tcK_nvdx, int tck_sscd, int total, String status, int import_total, int export_total, int pre_nvdx, int pre_sscd) {
        this.id = id;
        this.petro_id = petro_id;
        this.quarter_id = quarter_id;
        this.tdk_nvdx = tdk_nvdx;
        this.tdk_sscd = tdk_sscd;
        this.tcK_nvdx = tcK_nvdx;
        this.tck_sscd = tck_sscd;
        this.total = total;
        this.status = status;
        this.export_total = export_total;
        this.import_total = import_total;
        this.pre_sscd = pre_sscd;
        this.pre_nvdx = pre_nvdx;
    }

    public String getPre_nvdx_str() {
        return pre_nvdx_str;
    }

    public void setPre_nvdx_str(String pre_nvdx_str) {
        this.pre_nvdx_str = pre_nvdx_str;
    }

    public String getPre_sscd_str() {
        return pre_sscd_str;
    }

    public void setPre_sscd_str(String pre_sscd_str) {
        this.pre_sscd_str = pre_sscd_str;
    }

    public String getPre_sum_str() {
        return pre_sum_str;
    }

    public void setPre_sum_str(String pre_sum_str) {
        this.pre_sum_str = pre_sum_str;
    }

    public int getPre_nvdx() {
        return pre_nvdx;
    }

    public void setPre_nvdx(int pre_nvdx) {
        this.pre_nvdx = pre_nvdx;
    }

    public int getPre_sscd() {
        return pre_sscd;
    }

    public void setPre_sscd(int pre_sscd) {
        this.pre_sscd = pre_sscd;
    }

    public int getImport_total() {
        return import_total;
    }

    public void setImport_total(int import_total) {
        this.import_total = import_total;
    }

    public int getExport_total() {
        return export_total;
    }

    public void setExport_total(int export_total) {
        this.export_total = export_total;
    }

    public String getTdk_sum_str() {
        return tdk_sum_str;
    }

    public void setTdk_sum_str(String tdk_sum_str) {
        this.tdk_sum_str = tdk_sum_str;
    }

    public String getTck_sum_str() {
        return tck_sum_str;
    }

    public void setTck_sum_str(String tck_sum_str) {
        this.tck_sum_str = tck_sum_str;
    }

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }

    public String getPetroleumName() {
        return petroleumName;
    }

    public void setPetroleumName(String petroleumName) {
        this.petroleumName = petroleumName;
    }

    public String getChungloai() {
        return chungloai;
    }

    public void setChungloai(String chungloai) {
        this.chungloai = chungloai;
    }

    public String getTdk_nvdx_str() {
        return tdk_nvdx_str;
    }

    public void setTdk_nvdx_str(String tdk_nvdx_str) {
        this.tdk_nvdx_str = tdk_nvdx_str;
    }

    public String getTdk_sscd_str() {
        return tdk_sscd_str;
    }

    public void setTdk_sscd_str(String tdk_sscd_str) {
        this.tdk_sscd_str = tdk_sscd_str;
    }

    public String getTcK_nvdx_str() {
        return tcK_nvdx_str;
    }

    public void setTcK_nvdx_str(String tcK_nvdx_str) {
        this.tcK_nvdx_str = tcK_nvdx_str;
    }

    public String getTck_sscd_str() {
        return tck_sscd_str;
    }

    public void setTck_sscd_str(String tck_sscd_str) {
        this.tck_sscd_str = tck_sscd_str;
    }

    public int getTdk_nvdx() {
        return tdk_nvdx;
    }

    public void setTdk_nvdx(int tdk_nvdx) {
        this.tdk_nvdx = tdk_nvdx;
    }

    public int getTdk_sscd() {
        return tdk_sscd;
    }

    public void setTdk_sscd(int tdk_sscd) {
        this.tdk_sscd = tdk_sscd;
    }

    public int getTcK_nvdx() {
        return tcK_nvdx;
    }

    public void setTcK_nvdx(int tcK_nvdx) {
        this.tcK_nvdx = tcK_nvdx;
    }

    public int getTck_sscd() {
        return tck_sscd;
    }

    public void setTck_sscd(int tck_sscd) {
        this.tck_sscd = tck_sscd;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPetro_id() {
        return petro_id;
    }

    public void setPetro_id(int petro_id) {
        this.petro_id = petro_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuarter_id() {
        return quarter_id;
    }

    public void setQuarter_id(int quarter_id) {
        this.quarter_id = quarter_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
