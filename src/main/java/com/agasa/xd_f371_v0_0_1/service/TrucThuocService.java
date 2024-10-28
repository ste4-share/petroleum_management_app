package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.TructhuocLoaiphieuDTO;
import com.agasa.xd_f371_v0_0_1.entity.TrucThuoc;

import java.util.List;

public interface TrucThuocService {
    List<TrucThuoc> getAll();
    List<TrucThuoc> getAllByType(String t);
    TrucThuoc createNew(TrucThuoc trucThuoc);
    TrucThuoc udpate_n(TrucThuoc trucThuoc);
    TrucThuoc delById(TrucThuoc trucThuoc);
    TrucThuoc findById(int id);
    TrucThuoc findByNguonnx(int nguonnxId, int titleId);
    List<TrucThuoc> findByName(String name);
    List<TrucThuoc> findByType(String name);
    List<TructhuocLoaiphieuDTO> getAllTTLP();
}
