package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.GroupTitle;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx;
import com.agasa.xd_f371_v0_0_1.entity.NguonnxTitle;

import java.util.List;

public interface NguonNXService {
    List<NguonNx> getAll();
    List<NguonNx> getAllAndNguonnx();
    List<NguonNx> getAllUnless(String ten_1);
    NguonNx create(NguonNx nguonNx);
    int delete(NguonNx nguonNx, int groupId);
    NguonNx update(NguonNx nguonNx);
    NguonNx findById(int id);
    NguonNx findNguonNXByName_NON(String name);
    List<NguonNx> findNguonnxTructhuocF();

    List<GroupTitle> getAllGroup();
    GroupTitle findGroupById(int grid);
    List<NguonnxTitle> getAllNnxTitles(int groupId);
    int createNew(NguonnxTitle nguonnxTitle);
    int updateNguonnxTitle(NguonnxTitle nguonnxTitle);
}
