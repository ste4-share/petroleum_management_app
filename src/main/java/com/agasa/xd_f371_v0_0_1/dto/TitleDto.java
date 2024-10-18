package com.agasa.xd_f371_v0_0_1.dto;

public class TitleDto {

    private String lv1;
    private String lv2;
    private String lv3;

    public TitleDto() {
    }

    public TitleDto(String lv1, String lv2, String lv3) {
        this.lv1 = lv1;
        this.lv2 = lv2;
        this.lv3 = lv3;
    }

    public String getLv1() {
        return lv1;
    }

    public void setLv1(String lv1) {
        this.lv1 = lv1;
    }

    public String getLv2() {
        return lv2;
    }

    public void setLv2(String lv2) {
        this.lv2 = lv2;
    }

    public String getLv3() {
        return lv3;
    }

    public void setLv3(String lv3) {
        this.lv3 = lv3;
    }
}
