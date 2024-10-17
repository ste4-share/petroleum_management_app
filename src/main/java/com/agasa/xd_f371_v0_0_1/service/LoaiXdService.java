package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.service.impl.LoaiXdImp;

import java.util.List;
import java.util.Map;

public interface LoaiXdService {
    List<LoaiXangDau> getAll();
    List<String> getAllChungLoai();
    LoaiXangDau create(LoaiXangDau importDto);
    LoaiXangDau update(LoaiXangDau importDto);
    boolean delete_f(String so);
    LoaiXangDau findLoaiXdByID(String tenxd);
    List<LoaiXangDau> findLoaiXdByChungLoai(String loai);
    List<LoaiXangDau> findLoaiXdByType(String loai);
    List<LoaiXangDau> findLoaiXdByChungLoai_PER(String loai1);
    LoaiXangDau findLoaiXdByID_non(int id);
    Map<String, String> getChungLoaiCount();
}
