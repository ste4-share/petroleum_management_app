package com.agasa.xd_f371_v0_0_1.model;

public enum AssignTypeEnum {
    NVDX("NVDX"),
    HH("HH"),
    NLTT_MD("NLTT_MD"),
    NLTT_TK("NLTT_TK"),
    HD_MD("HD_MD"),
    HD_TK("HD_TK"),
    NL("NL"),
    GB_MD("GB_MD"),
    GB_TK("GB_TK"),
    SSCD("SSCD");

    public final String name;

    AssignTypeEnum(String name) {
        this.name = name;
    }

    public String getName(){
        return name;
    }
}
