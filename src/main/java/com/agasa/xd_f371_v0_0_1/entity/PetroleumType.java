package com.agasa.xd_f371_v0_0_1.entity;

public class PetroleumType {
    private String name;
    private String type;
    private String r_type;

    public PetroleumType(String name, String type, String r_type) {
        this.name = name;
        this.type = type;
        this.r_type = r_type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getR_type() {
        return r_type;
    }

    public void setR_type(String r_type) {
        this.r_type = r_type;
    }
}
