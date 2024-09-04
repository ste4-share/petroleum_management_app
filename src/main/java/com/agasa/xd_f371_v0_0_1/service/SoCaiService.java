package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.SoCaiDto;
import com.agasa.xd_f371_v0_0_1.dto.TTPhieuDto;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;

import java.util.List;

public interface SoCaiService {
    List<SoCaiDto> getAll();
    SoCaiDto create(SoCaiDto soCaiDto);
    SoCaiDto update(SoCaiDto soCaiDto);
    boolean delete_f(String so);
    List<TTPhieuDto> getTTPhieu();
    List<SoCaiDto> getChiTietSoCai(String so);

}
