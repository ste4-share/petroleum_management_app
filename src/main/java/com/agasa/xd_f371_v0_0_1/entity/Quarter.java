package com.agasa.xd_f371_v0_0_1.entity;


import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
@Getter
@Setter
public class Quarter {
    private int id;
    private String name;
    private LocalDate start_date;
    private LocalDate end_date;
    private String year;
    private String status;
    private String convey;

    public Quarter() {
    }

}
