package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.NhiemVuDto;
import com.agasa.xd_f371_v0_0_1.entity.DviNvu;

import java.util.List;

public interface DvNvService {
    List<DviNvu> getAll();
    List<NhiemVuDto> getAllDv_nv();
    List<NhiemVuDto> getDv_nvByIdDv(int id);
    DviNvu create(DviNvu dviNvu);
    DviNvu update(DviNvu dviNvu);
    List<DviNvu> findByDvId(int id);
}
