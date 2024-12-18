package com.agasa.xd_f371_v0_0_1.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class HanmucNhiemvu {
    private int id;
    private int quarter_id;
    private int unit_id;
    private int nhiemvu_id;
    private String ct_tk;
    private String ct_md;
    private int consumpt;
}
