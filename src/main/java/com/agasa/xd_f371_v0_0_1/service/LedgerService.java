package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.Ledger;

import java.sql.Date;
import java.util.List;

public interface LedgerService {
    List<Ledger> getAll();
    Ledger findById(int id);
    Ledger findByBillId(int quarter_id, int bill_id);
    List<Ledger> findByQuarterId(int quarter_id);
    List<Ledger> findByPresentTime(Date preTime);
    Ledger createNew(Ledger ledger);
    Ledger updateNew(Ledger ledger);
    int delete_f(Ledger ledger);
}
