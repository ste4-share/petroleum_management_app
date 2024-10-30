package com.agasa.xd_f371_v0_0_1.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NhiemVu {
    private int id;
    private String ten_nv;
    private String chi_tiet;
    private String hm_trenkhong;
    private String hm_matdat;
    private String createtime;
    private String status;

    public NhiemVu() {
    }

}
