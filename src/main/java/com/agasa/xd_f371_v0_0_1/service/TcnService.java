package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.Tcn;

import java.util.List;

public interface TcnService {
    List<Tcn> getAll();
    List<Tcn> getAllByName(String norx);
    List<Tcn> getAllByBillTypeId(int billId);
    Tcn findByID(int id);
    Tcn findByName(String searName);
    Tcn create(Tcn tcn);
    Tcn update(Tcn tcn);
    void delete(int id);
}
