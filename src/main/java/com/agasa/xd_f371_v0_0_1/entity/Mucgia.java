package com.agasa.xd_f371_v0_0_1.entity;

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

    public int getInventory_id() {
        return inventory_id;
    }

    public void setInventory_id(int inventory_id) {
        this.inventory_id = inventory_id;
    }

    public int getAssign_type_id() {
        return assign_type_id;
    }

    public void setAssign_type_id(int assign_type_id) {
        this.assign_type_id = assign_type_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getQuarter_id() {
        return quarter_id;
    }

    public void setQuarter_id(int quarter_id) {
        this.quarter_id = quarter_id;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }
}
