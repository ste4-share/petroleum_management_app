package com.agasa.xd_f371_v0_0_1.model;

public enum LoaiGB {
    TK("TK"),
    MD("MD");

    public final String name;

    LoaiGB(String name) {
        this.name = name;
    }

    public String getName(){
        return name;
    }
}
