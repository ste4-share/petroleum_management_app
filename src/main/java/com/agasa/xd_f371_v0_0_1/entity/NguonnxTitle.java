package com.agasa.xd_f371_v0_0_1.entity;

public class NguonnxTitle {
    private int id;
    private int nguonnx_id;
    private int title_id;
    private int group_id;

    public NguonnxTitle() {
    }

    public NguonnxTitle(int id, int nguonnx_id, int title_id, int group_id) {
        this.id = id;
        this.nguonnx_id = nguonnx_id;
        this.title_id = title_id;
        this.group_id = group_id;
    }

    public NguonnxTitle(int nguonnx_id, int title_id, int group_id) {
        this.nguonnx_id = nguonnx_id;
        this.title_id = title_id;
        this.group_id = group_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNguonnx_id() {
        return nguonnx_id;
    }

    public void setNguonnx_id(int nguonnx_id) {
        this.nguonnx_id = nguonnx_id;
    }

    public int getTitle_id() {
        return title_id;
    }

    public void setTitle_id(int title_id) {
        this.title_id = title_id;
    }

    public int getGroup_id() {
        return group_id;
    }

    public void setGroup_id(int group_id) {
        this.group_id = group_id;
    }
}
