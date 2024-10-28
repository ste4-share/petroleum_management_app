package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.QuantityByTructhuocDTO;
import com.agasa.xd_f371_v0_0_1.entity.LedgerDetails;
import com.agasa.xd_f371_v0_0_1.dto.TTPhieuDto;
import com.agasa.xd_f371_v0_0_1.dto.XdTrucThuocDto;

import java.util.List;

public interface LedgerDetailsService {
    List<LedgerDetails> getAll();
    LedgerDetails create(LedgerDetails ledgerDetails);
    LedgerDetails update(LedgerDetails ledgerDetails);
    boolean delete_f(String so);
    List<TTPhieuDto> getTTPhieu();
    List<TTPhieuDto> getTTPhieu_ByLoaiPhieu(String loaiPhieu);
    List<LedgerDetails> getChiTietSoCai(String so);
    List<XdTrucThuocDto> findTrucThuocByNameXd(String loaiphieu, String tenxd);
    QuantityByTructhuocDTO selectQuantityByTT(String loaiphieu, int xd_id);
    QuantityByTructhuocDTO selectQuantityNguonnx(int nguonnx_id);
}
