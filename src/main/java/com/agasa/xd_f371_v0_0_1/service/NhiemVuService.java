package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.ChiTietNhiemVuDTO;
import com.agasa.xd_f371_v0_0_1.entity.NhiemVu;

import java.util.List;

public interface NhiemVuService {
    List<NhiemVu> getAll();
    NhiemVu create(NhiemVu nhiemVu);
    NhiemVu update(NhiemVu nhiemVu);
    NhiemVu findCtnvByID(String chiTietNhiemVu);
    NhiemVu findById(int id);
    NhiemVu findByTenNv(String tennv, String ct);
    List<ChiTietNhiemVuDTO> getNvAndCtnv();
}
