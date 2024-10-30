package com.agasa.xd_f371_v0_0_1.service;

import com.agasa.xd_f371_v0_0_1.entity.InvReportDetail;

import java.util.List;
import java.util.Map;

public interface InvReportDetailService {
    List<InvReportDetail> getAll();
    int createNew(InvReportDetail invReportDetail);
    int updateNew(InvReportDetail invReportDetail);
    int update(InvReportDetail invReportDetail);
    int updateTitleId(int pre_id, int current_id);
    int deleteAll();
    InvReportDetail findByIds(int xd_id, int quarter_id, int titleId);
}
