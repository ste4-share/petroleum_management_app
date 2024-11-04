package com.agasa.xd_f371_v0_0_1.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ChitieuDTO {
    private int id;
    private int quarter_id;
    private int phuongtien_id;
    String hanmuc_md;
    int hanmuc_km;
    String hanmuc_tk;
    private int soluong;
}