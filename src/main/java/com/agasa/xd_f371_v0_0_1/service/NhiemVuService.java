package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.ChiTietNhiemVuDTO;
import com.agasa.xd_f371_v0_0_1.dto.KhoiDto;
import com.agasa.xd_f371_v0_0_1.dto.NhiemVuDto;
import com.agasa.xd_f371_v0_0_1.entity.NhiemVu;

import java.util.List;

public interface NhiemVuService {
    List<NhiemVu> getAll();
    List<KhoiDto> getAllKhoi();
    KhoiDto findKhoiById(int id);
    List<NhiemVuDto> getAllNVDTO(int khoi);
    NhiemVu create(NhiemVu nhiemVu);
    NhiemVu update(NhiemVu nhiemVu);
    NhiemVu findCtnvByID(String chiTietNhiemVu);
    NhiemVu findById(int id);
    NhiemVu findByTenNv(String tennv, String ct);
    List<ChiTietNhiemVuDTO> getNvAndCtnv();
}
