package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.dto.*;
import com.agasa.xd_f371_v0_0_1.entity.LedgerDetails;

import java.util.List;
import java.util.Map;

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
    QuantityByTTDTO selectQuantityNguonnx(int groupid, String loaiphieu, int tructhuoc_id,int xdid);
    QuantityByTTDTO selectQuantityNguonnxImport(int group_id, String loaiphieu, int tructhuoc_id, int loaixdId);
    QuantityByTTDTO selectQuantityNguonnxExport(int group_id, String loaiphieu, int tructhuoc_id, int loaixdId);

    GioBay getSumofWorkingTime(int pt_id, int quarterId, String lgb);
    Map<String, Integer> getSumofconsumption(int pt_id, int quarterID);
}
