package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.NguonNx_tructhuoc;
import com.agasa.xd_f371_v0_0_1.entity.TrucThuoc;

import java.util.List;

public interface NguonNx_tructhuocService {
    List<TrucThuoc> findAllTrucThuocByNGuonNxID(int nguonnx_id);
    NguonNx_tructhuoc findNguonnx_tructhuocByNnx_lp(int nguonnx_id, int loaiPhieu);
    List<Integer> findAllBillType(int nguonnx_id);
    NguonNx_tructhuoc createNew(NguonNx_tructhuoc nguonNxTructhuoc);
    NguonNx_tructhuoc update(NguonNx_tructhuoc nguonNxTructhuoc);
    int delete(NguonNx_tructhuoc nguonNxTructhuoc);
}
