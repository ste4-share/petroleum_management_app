package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.ChiTietNhiemVu;

import java.util.List;

public interface ChiTietNhiemVuService {
    List<ChiTietNhiemVu> getAll();
    ChiTietNhiemVu create(ChiTietNhiemVu chiTietNhiemVu);
    ChiTietNhiemVu update(ChiTietNhiemVu chiTietNhiemVu);
    ChiTietNhiemVu findCtnvByID(String chiTietNhiemVu);
    ChiTietNhiemVu findById(int id);
    ChiTietNhiemVu findByTenNv(String tennv, String ct);
}
