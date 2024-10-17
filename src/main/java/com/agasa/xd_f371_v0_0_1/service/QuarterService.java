package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.Quarter;

import java.time.LocalDate;
import java.util.List;

public interface QuarterService {
    List<Quarter> findByYear(String year);
    List<Quarter> getAll();
    Quarter findById(int id);
    Quarter findByName(String name);
    Quarter create(Quarter quarter);
    Quarter findByDatetime(LocalDate date);
}
