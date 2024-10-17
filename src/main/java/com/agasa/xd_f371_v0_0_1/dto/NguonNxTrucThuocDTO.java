package com.agasa.xd_f371_v0_0_1.dto;

public class NguonNxTrucThuocDTO {
    private int nguonnx_id;
    private String ten;
    private int tructhuoc_id;
    private int loaiphieu_id;
    private String name;
    private String type;

    public NguonNxTrucThuocDTO() {
    }

    public NguonNxTrucThuocDTO(int nguonnx_id, String ten, int tructhuoc_id, int loaiphieu_id, String name, String type) {
        this.nguonnx_id = nguonnx_id;
        this.ten = ten;
        this.tructhuoc_id = tructhuoc_id;
        this.loaiphieu_id = loaiphieu_id;
        this.name = name;
        this.type = type;
    }

    public int getLoaiphieu_id() {
        return loaiphieu_id;
    }

    public void setLoaiphieu_id(int loaiphieu_id) {
        this.loaiphieu_id = loaiphieu_id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
