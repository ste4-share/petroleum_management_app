package com.agasa.xd_f371_v0_0_1.dto;

public class TTPhieuDto {
    private String so;
    private String loai_phieu;
    private String dvn;
    private String dvvc;
    private String ngaytao;
    private String tcn;
    private String hang_hoa;
    private int tong;

    public TTPhieuDto() {
    }

    public String getNgaytao() {
        return ngaytao;
    }

    public void setNgaytao(String ngaytao) {
        this.ngaytao = ngaytao;
    }

    public String getSo() {
        return so;
    }

    public void setSo(String so) {
        this.so = so;
    }

    public String getLoai_phieu() {
        return loai_phieu;
    }

    public void setLoai_phieu(String loai_phieu) {
        this.loai_phieu = loai_phieu;
    }

    public String getDvn() {
        return dvn;
    }

    public void setDvn(String dvn) {
        this.dvn = dvn;
    }

    public String getDvvc() {
        return dvvc;
    }

    public void setDvvc(String dvvc) {
        this.dvvc = dvvc;
    }

    public String getTcn() {
        return tcn;
    }

    public void setTcn(String tcn) {
        this.tcn = tcn;
    }

    public String getHang_hoa() {
        return hang_hoa;
    }

    public void setHang_hoa(String hang_hoa) {
        this.hang_hoa = hang_hoa;
    }

    public int getTong() {
        return tong;
    }

    public void setTong(int tong) {
        this.tong = tong;
    }
}
