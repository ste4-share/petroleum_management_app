package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.TructhuocLoaiphieu;

public interface TructhuocLoaiphieuService {
    TructhuocLoaiphieu findByTructhuocId(int tt_id);
    TructhuocLoaiphieu findByTTLPId(int tt_id, int lp_id);
}
