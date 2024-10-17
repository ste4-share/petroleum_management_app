package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.LoaiPhieu;

import java.util.List;

public interface LoaiPhieuService {
    List<LoaiPhieu> getAll();
    LoaiPhieu findLoaiPhieuByID(int id);
    LoaiPhieu findLoaiPhieuByType(String type);
}
