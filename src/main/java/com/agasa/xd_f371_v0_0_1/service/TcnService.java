package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.Tcn;

import java.util.List;

public interface TcnService {
    List<Tcn> getAll();
    List<Tcn> getAllByName(String norx);
    Tcn findByID(int id);
    List<Tcn> findByName(String searName);
    Tcn create(Tcn tcn);
    Tcn update(Tcn tcn);
    void delete(int id);
}
