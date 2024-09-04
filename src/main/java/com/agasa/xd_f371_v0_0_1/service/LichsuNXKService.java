package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.LichsuXNK;

import java.util.List;

public interface LichsuNXKService {
    List<LichsuXNK> getAll();
    LichsuXNK createNew(LichsuXNK lichsuXNK);
}
