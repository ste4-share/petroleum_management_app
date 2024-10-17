package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.PhuongTien;

import java.util.List;

public interface PhuongTienService {
    List<PhuongTien> getAll();
    PhuongTien createNew(PhuongTien phuongTien);
    PhuongTien udpateObj(PhuongTien phuongTien) ;
    PhuongTien findPhuongTienById(int id);
    List<PhuongTien> findPhuongTienByType(String type);
    Integer findNnxByPt(String pt);
}
