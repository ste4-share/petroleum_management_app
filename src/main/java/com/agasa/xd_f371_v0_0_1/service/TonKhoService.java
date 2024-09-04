package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.TonKho;

import java.util.List;

public interface TonKhoService {
    List<TonKho> getAll();
    TonKho create(TonKho tonKho);
    TonKho update(TonKho tonKho);
    void delete(TonKho tonKho);
    List<TonKho> findByLoaiXD(String loaixd, int mucgia);
    List<TonKho> getTongKho();
}
