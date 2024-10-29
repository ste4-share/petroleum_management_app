package com.agasa.xd_f371_v0_0_1.dto;

public class QuantityByTTDTO {
    private int title_id;
    private String ttname;
    private int sum;

    public QuantityByTTDTO(int title_id, String ttname, int sum) {
        this.title_id = title_id;
        this.ttname = ttname;
        this.sum = sum;
    }

    public int getTitle_id() {
        return title_id;
    }

    public void setTitle_id(int title_id) {
        this.title_id = title_id;
    }

    public String getTtname() {
        return ttname;
    }

    public void setTtname(String ttname) {
        this.ttname = ttname;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }
}
