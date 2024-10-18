package com.agasa.xd_f371_v0_0_1.entity;


import java.time.LocalDate;
import java.util.Date;

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


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getStart_date() {
        return start_date;
    }

    public void setStart_date(LocalDate start_date) {
        this.start_date = start_date;
    }

    public LocalDate getEnd_date() {
        return end_date;
    }

    public void setEnd_date(LocalDate end_date) {
        this.end_date = end_date;
    }

    public String getYear() {
        return year;
    }


    public void setYear(String year) {
        this.year = year;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getConvey() {
        return convey;
    }

    public void setConvey(String convey) {
        this.convey = convey;
    }
}
