package com.agasa.xd_f371_v0_0_1.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PhuongTien {
    private int id;
    private String name;
    private String type;
    private int han_muc;
    private int dm_tk;
    private int dm_md;
    private int dm_xm;
    private int quantity;
    private int nguonnx_id;
    private String status;

    public PhuongTien() {
    }

}
