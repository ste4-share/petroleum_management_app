package com.agasa.xd_f371_v0_0_1.model;

public enum MucGiaEnum {
    OUT_STOCK("OUT_OF_STOCK"),
    SUPER_OUT_STOCK("SUPER_OUT_OF_STOCK"),
    IN_STOCK("IN_STOCK");

    public final String name;

    MucGiaEnum(String name) {
        this.name = name;
    }

    public String getStatus(){
        return name;
    }
}