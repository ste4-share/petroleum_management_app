package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.UnitsDto;
import com.agasa.xd_f371_v0_0_1.entity.GroupTitle;
import com.agasa.xd_f371_v0_0_1.entity.LoaiXangDau;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;
import com.agasa.xd_f371_v0_0_1.entity.NguonnxTitle;

import java.util.List;

public interface NguonNXService {
    List<NguonNx> getAll();
    List<NguonNx> getAllAndNguonnx();
    List<NguonNx> getAllUnless(String ten_1);
    List<NguonNx> getAllByLoaiPhieu(int loai_phieu);
    NguonNx create(NguonNx nguonNx);
    NguonNx update(NguonNx nguonNx);
    NguonNx findById(int id);
    NguonNx findNguonNXByName_NON(String name);

    List<GroupTitle> getAllGroup();
    List<NguonnxTitle> getAllNnxTitles(int groupId);
    int createNew(NguonnxTitle nguonnxTitle);
}
