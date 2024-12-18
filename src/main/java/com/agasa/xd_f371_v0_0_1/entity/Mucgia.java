package com.agasa.xd_f371_v0_0_1.entity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Mucgia {
    private int id;
    private int price;
    private int amount;
    private int quarter_id;
    private int item_id;
    private int inventory_id;
    private int assign_type_id;
    private String status;
    private String timestamp;

    public Mucgia() {
    }
}
