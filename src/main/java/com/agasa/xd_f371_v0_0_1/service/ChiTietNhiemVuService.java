package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.ChitietNhiemVu;
import com.agasa.xd_f371_v0_0_1.entity.NhiemVu;

import java.util.List;

public interface ChiTietNhiemVuService {
    List<ChitietNhiemVu> getAll();
    ChitietNhiemVu create(ChitietNhiemVu nhiemVu);
    ChitietNhiemVu update(ChitietNhiemVu nhiemVu);
    ChitietNhiemVu findById(int id);
    List<ChitietNhiemVu> findByTenNv(int nv_id);
}
