package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.DviNvu;

import java.util.List;

public interface DvNvService {
    List<DviNvu> getAll();
    DviNvu create(DviNvu dviNvu);
    DviNvu update(DviNvu dviNvu);
    List<DviNvu> findByDvId(int id);
}
