package com.agasa.xd_f371_v0_0_1.entity;

public class InvReport {
    private int id;
    private int petroleum_id;
    private int quarter_id;
    private int inventory_id;
    private int report_header;
    private int quantity;
    private int price_id;

    public InvReport() {
    }

    public InvReport(int id, int petroleum_id, int quarter_id, int inventory_id, int report_header, int quantity, int price_id) {
        this.id = id;
        this.petroleum_id = petroleum_id;
        this.quarter_id = quarter_id;
        this.inventory_id = inventory_id;
        this.report_header = report_header;
        this.quantity = quantity;
        this.price_id = price_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPetroleum_id() {
        return petroleum_id;
    }

    public void setPetroleum_id(int petroleum_id) {
        this.petroleum_id = petroleum_id;
    }

    public int getQuarter_id() {
        return quarter_id;
    }

    public void setQuarter_id(int quarter_id) {
        this.quarter_id = quarter_id;
    }

    public int getInventory_id() {
        return inventory_id;
    }

    public void setInventory_id(int inventory_id) {
        this.inventory_id = inventory_id;
    }

    public int getReport_header() {
        return report_header;
    }

    public void setReport_header(int report_header) {
        this.report_header = report_header;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice_id() {
        return price_id;
    }

    public void setPrice_id(int price_id) {
        this.price_id = price_id;
    }
}
