package com.agasa.xd_f371_v0_0_1.model;

public enum AssignTypeEnum {
    NVDX("NVDX"),
    SSCD("SSCD");

    public final String name;

    AssignTypeEnum(String name) {
        this.name = name;
    }

    public String getName(){
        return name;
    }
}
