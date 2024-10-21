package com.agasa.xd_f371_v0_0_1.entity;

public class AssignType {
    private int id;
    private String name;

    public AssignType(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public AssignType() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
