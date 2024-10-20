package com.agasa.xd_f371_v0_0_1.model;

public enum KhoiEnum {
    THAM_MUU("KHỐI THAM MƯU"),
    CHINH_TRI("KHỐI CHÍNH TRỊ"),
    KY_THUAT("KHỐI KỸ THUẬT"),
    HAU_CAN("KHỐI HẬU CẦN"),
    HAO_HUT("HAO HỤT"),
    KHAC("KHÁC");

    public final String name;

    KhoiEnum(String name) {
        this.name = name;
    }

    public String getName(){
        return name;
    }
}
