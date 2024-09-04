package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;

import java.util.List;

public interface LoaiXdService {
    List<LoaiXangDau> getAll();
    LoaiXangDau create(LoaiXangDau importDto);
    LoaiXangDau update(LoaiXangDau importDto);
    boolean delete_f(String so);
}
