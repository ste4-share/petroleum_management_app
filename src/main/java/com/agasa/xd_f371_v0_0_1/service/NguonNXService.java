package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;

import java.util.List;

public interface NguonNXService {
    List<NguonNx> getAll();
    NguonNx create(NguonNx nguonNx);
    NguonNx update(NguonNx nguonNx);
    NguonNx findById(int id);
    boolean delete_f(String so);
    List<NguonNx> getAllWithType(String type);
    NguonNx findNguonNXByName(String name, String loai_tt1);
    List<NguonNx> nguonLs(List<Integer> id);
}
