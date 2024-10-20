package com.agasa.xd_f371_v0_0_1.dto;

public class UnitsDto {
    private String nameUnit;
    private String belong;
    private String createTime;

    public UnitsDto(String nameUnit, String belong, String createTime) {
        this.nameUnit = nameUnit;
        this.belong = belong;
        this.createTime = createTime;
    }

    public UnitsDto() {
    }

    public String getNameUnit() {
        return nameUnit;
    }

    public void setNameUnit(String nameUnit) {
        this.nameUnit = nameUnit;
    }

    public String getBelong() {
        return belong;
    }

    public void setBelong(String belong) {
        this.belong = belong;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
