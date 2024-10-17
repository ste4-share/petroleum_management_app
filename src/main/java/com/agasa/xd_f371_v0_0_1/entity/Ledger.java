package com.agasa.xd_f371_v0_0_1.entity;

import java.sql.Date;

public class Ledger {
    private int id;
    private int quarter_id;
    private int bill_id;
    private int billType_id;
    private int amount;
    private Date from_date;
    private Date end_date;
    private String status;

    public Ledger() {
    }

    public int getBillType_id() {
        return billType_id;
    }

    public void setBillType_id(int billType_id) {
        this.billType_id = billType_id;
    }

    public Ledger(int id, int quarter_id, int bill_id, int amount, Date from_date, Date end_date, String status) {
        this.id = id;
        this.quarter_id = quarter_id;
        this.bill_id = bill_id;
        this.amount = amount;
        this.from_date = from_date;
        this.end_date = end_date;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuarter_id() {
        return quarter_id;
    }

    public void setQuarter_id(int quarter_id) {
        this.quarter_id = quarter_id;
    }

    public int getBill_id() {
        return bill_id;
    }

    public void setBill_id(int bill_id) {
        this.bill_id = bill_id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getFrom_date() {
        return from_date;
    }

    public void setFrom_date(Date from_date) {
        this.from_date = from_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
