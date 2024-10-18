package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.Mucgia;

import java.util.List;

public interface MucgiaService {
    List<Mucgia> getMucgiaByIdXangDau(int id_xd, int id_quarter);
    List<Mucgia> findMucgiaByGia(int id_xd, int id_quarter, int gia);
    List<Mucgia> findMucgiaBy_xd_quarter_status(int id_xd, int id_quarter, String status);
    Mucgia createNew(Mucgia mucgia);
    Mucgia updateMucGia(Mucgia mucgia);
    Mucgia findMucGiaByID(int id);
}