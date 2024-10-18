package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.InvReportDetail;

import java.util.List;
import java.util.Map;

public interface InvReportDetailService {
    List<InvReportDetail> getAll();
    int createNew(InvReportDetail invReportDetail);
    int updateNew(InvReportDetail invReportDetail);
    InvReportDetail findByReportId(int reportId);
    Map<String, Map<String, Long>> getTkMap();
}
