package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.NguonNxTrucThuocDTO;
import com.agasa.xd_f371_v0_0_1.entity.NguonNx_tructhuoc;
import com.agasa.xd_f371_v0_0_1.entity.TrucThuoc;

import java.util.List;

public interface NguonNx_tructhuocService {
    List<NguonNx_tructhuoc> getAll();
    List<NguonNx_tructhuoc> findByNguonnxId_tructhuocId(int nguonnx_id, int tructhuoc_id);
    NguonNx_tructhuoc findByPrimaryKEy(int nguonnx_id, int tructhuoc_id, int loaiphieu_id);
    List<TrucThuoc> findAllTrucThuocByNGuonNxID(int nguonnx_id);
    List<TrucThuoc> findAllTrucThuocByNguonNx(int nguonnx_id, int tructhuocId);
    NguonNx_tructhuoc findNguonnx_tructhuocByNnx_lp(int nguonnx_id, int loaiPhieu);
    List<NguonNxTrucThuocDTO> findAllRelationship(int nguonnx_id);
    List<Integer> findAllBillType(int nguonnx_id);
    NguonNx_tructhuoc createNew(NguonNx_tructhuoc nguonNxTructhuoc);
    NguonNx_tructhuoc update(NguonNx_tructhuoc nguonNxTructhuoc);
    int delete(NguonNx_tructhuoc nguonNxTructhuoc);
}
