package com.agasa.xd_f371_v0_0_1.dto;

public class QuantityByTructhuocDTO {
    private String tenxd;
    private String loaiphieu;
    private String tructhuoc;
    private int soluong;

    public QuantityByTructhuocDTO(String tenxd, String loaiphieu, String tructhuoc, int soluong) {
        this.tenxd = tenxd;
        this.loaiphieu = loaiphieu;
        this.tructhuoc = tructhuoc;
        this.soluong = soluong;
    }

    public QuantityByTructhuocDTO() {
    }

    public String getTenxd() {
        return tenxd;
    }

    public void setTenxd(String tenxd) {
        this.tenxd = tenxd;
    }

    public String getLoaiphieu() {
        return loaiphieu;
    }

    public void setLoaiphieu(String loaiphieu) {
        this.loaiphieu = loaiphieu;
    }

    public String getTructhuoc() {
        return tructhuoc;
    }

    public void setTructhuoc(String tructhuoc) {
        this.tructhuoc = tructhuoc;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }
}
