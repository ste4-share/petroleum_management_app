package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.*;
import com.agasa.xd_f371_v0_0_1.entity.HanmucNhiemvu;
import com.agasa.xd_f371_v0_0_1.entity.NhiemVu;

import java.util.List;

public interface NhiemVuService {
    List<NhiemVu> getAll();
    List<CtnvDto> getAllNvByType(int loainv_id);
    List<KhoiDto> getAllKhoi();
    KhoiDto findKhoiById(int id);
    List<NhiemVuDto> getAllNVDTO(int khoi);
    NhiemVu create(NhiemVu nhiemVu);
    int createHanmucNhiemVu(HanmucNhiemvu hanmucNhiemvu);
    HanmucNhiemvu getHanmucNhiemvu(int unit_id, int nhiemvu_id, int quarter_id);
    int create(NhiemVuReport nhiemVuReport);
    NhiemVu update(NhiemVu nhiemVu);
    NhiemVu findCtnvByID(String chiTietNhiemVu);
    NhiemVu findById(int id);
    NhiemVu findByTenNv(String tennv, String ct);
    List<ChiTietNhiemVuDTO> getNvAndCtnv();
}
