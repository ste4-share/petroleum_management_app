package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.AssignTypePriceDto;
import com.agasa.xd_f371_v0_0_1.dto.SpotDto;
import com.agasa.xd_f371_v0_0_1.entity.AssignType;
import com.agasa.xd_f371_v0_0_1.entity.Mucgia;

import java.sql.SQLException;
import java.util.List;

public interface MucgiaService {
    List<Mucgia> getMucgiaByIdXangDau(int id_xd, int id_quarter);
    Mucgia findMucgiaByGia(int id_xd, int id_quarter, int gia, int assType);
    List<Mucgia> findMucgiaBy_xd_quarter_status(int id_xd, int id_quarter, String status);
    Mucgia createNew(Mucgia mucgia);
    Mucgia updateMucGia(Mucgia mucgia);
    Mucgia findMucGiaByID(int id, String status2);
    List<AssignType> getAll();
    AssignType findByName(String name);
    List<AssignTypePriceDto> getPriceAndQuanTityByAssId(int ass_id, int petroId, int quarter_id);
    List<Mucgia> getPriceAndQuanTityByAssId2(int ass_id, int petroId, int quarter_id);
    List<SpotDto> getAllSpots(int quarter_id);
    SpotDto findSpotByPetro(int quarter_id, int petroleum_id);
}
