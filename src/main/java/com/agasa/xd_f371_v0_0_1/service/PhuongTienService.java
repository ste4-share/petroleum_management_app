package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.NormDto;
import com.agasa.xd_f371_v0_0_1.entity.LoaiPhuongTien;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;
import com.agasa.xd_f371_v0_0_1.entity.NguonnxTitle;
import com.agasa.xd_f371_v0_0_1.entity.PhuongTien;

import java.util.List;

public interface PhuongTienService {
    List<PhuongTien> getAll();
    List<NormDto> getAllPt(String typeName);
    List<LoaiPhuongTien> getLoaiPt(String typeName);
    List<LoaiPhuongTien> getAllLoaiPt();
    LoaiPhuongTien findPtById(int id);
    List<NguonNx> getIdNguonnx();
    List<String> getTypeName();
    PhuongTien createNew(PhuongTien phuongTien);
    int createNewPt(NormDto normDto);
    PhuongTien udpateObj(PhuongTien phuongTien) ;
    int createPt(PhuongTien phuongTien) ;
    PhuongTien findPhuongTienById(int id);
    List<PhuongTien> findPhuongTienByType(String type);
    List<NormDto> findListPhuongTienByType(int lpt_id);
    Integer findNnxByPt(String pt);

}
