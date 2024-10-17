package com.agasa.xd_f371_v0_0_1.service;


import com.agasa.xd_f371_v0_0_1.entity.TonkhoTong;

import java.util.List;

public interface TonkhoTongService {
    List<TonkhoTong> getAll();
    List<TonkhoTong> findByQuarterAll(int quarter_id);
    TonkhoTong create(TonkhoTong tonkhoTong);
    TonkhoTong update(TonkhoTong tonkhoTong);
    List<TonkhoTong> findByQuarterAndXdAll(int quarter_id1, int xd_id1);
}
