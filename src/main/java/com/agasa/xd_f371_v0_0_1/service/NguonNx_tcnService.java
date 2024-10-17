package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.NguonNxTcn;

import java.util.List;

public interface NguonNx_tcnService {
    List<NguonNxTcn> getAll();
    NguonNxTcn createNew(NguonNxTcn nguonNxTcn);
    NguonNxTcn update(NguonNxTcn nguonNxTcn);
    List<NguonNxTcn> findByNguonnxIdAndTcn_id(int nguonnx_id, int tcn_id);
    List<NguonNxTcn> findByNnxTcn_(int nguonnx_id, int loaiphieu_id, int tcn_id);
    NguonNxTcn delete(NguonNxTcn nguonNxTcn);
}
