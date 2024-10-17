package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.NguonNx_nhiemvu;
import com.agasa.xd_f371_v0_0_1.entity.PhuongTienNhiemVu;

import java.util.List;

public interface PhuongTienNhiemVuService {
    List<PhuongTienNhiemVu> getAll();
    PhuongTienNhiemVu createNew(PhuongTienNhiemVu phuongTienNhiemVu);
    PhuongTienNhiemVu update(PhuongTienNhiemVu phuongTienNhiemVu);
    List<PhuongTienNhiemVu> findByPhuongtienIdAndNvu_id(int phuongtien_id, int nvu_id);
    PhuongTienNhiemVu delete(PhuongTienNhiemVu phuongTienNhiemVu);
}
