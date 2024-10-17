package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.InvReport;

import java.util.List;

public interface InvReportService {
    List<InvReport> getAll();
    int updateReport(InvReport petroleumId);
    int create(InvReport invReport);
    InvReport findByPetroleum(int petroleumId, int quarter_id, int header_id);
}
