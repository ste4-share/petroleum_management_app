package com.agasa.xd_f371_v0_0_1.dto;

public class AssignTypePriceDto {
    private String price;
    private String soluong;

    public AssignTypePriceDto(String price, String soluong) {
        this.price = price;
        this.soluong = soluong;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSoluong() {
        return soluong;
    }

    public void setSoluong(String soluong) {
        this.soluong = soluong;
    }
}
