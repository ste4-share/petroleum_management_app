package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;

import java.util.List;

public interface NguonNXService {
    List<NguonNx> getAll();
    NguonNx create(NguonNx nguonNx);
    NguonNx update(NguonNx nguonNx);
    boolean delete_f(String so);
}
