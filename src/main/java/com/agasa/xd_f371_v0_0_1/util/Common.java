package com.agasa.xd_f371_v0_0_1.util;

import com.agasa.xd_f371_v0_0_1.dto.TitleDto;
import com.agasa.xd_f371_v0_0_1.entity.InvReport;
import com.agasa.xd_f371_v0_0_1.entity.InvReportDetail;
import com.agasa.xd_f371_v0_0_1.entity.TonkhoTong;
import com.agasa.xd_f371_v0_0_1.model.ChungLoaiModel;

public class Common {

    public static boolean getInvCatalogField(TitleDto category, TonkhoTong tonkhoTong, InvReport invReport, InvReportDetail invReportDetail){
        if (category.getLv1().equals(ChungLoaiModel.NVDX.getNameChungloai()) && category.getLv3().equals(ChungLoaiModel.TDK.getNameChungloai())){
            invReport.setQuantity(tonkhoTong.getTdk_nvdx());
            invReportDetail.setSoluong(tonkhoTong.getTdk_nvdx());
            return true;
        } else if (category.getLv1().equals(ChungLoaiModel.SSCD.getNameChungloai()) && category.getLv3().equals(ChungLoaiModel.TDK.getNameChungloai())) {
            invReport.setQuantity(tonkhoTong.getTdk_sscd());
            invReportDetail.setSoluong(tonkhoTong.getTdk_sscd());
            return true;
        } else if (category.getLv1().equals(ChungLoaiModel.NVDX.getNameChungloai()) && category.getLv3().equals(ChungLoaiModel.TCK.getNameChungloai())) {
            invReport.setQuantity(tonkhoTong.getTck_nvdx());
            invReportDetail.setSoluong(tonkhoTong.getTck_nvdx());
            return true;
        } else if (category.getLv1().equals(ChungLoaiModel.SSCD.getNameChungloai()) && category.getLv3().equals(ChungLoaiModel.TCK.getNameChungloai())) {
            invReport.setQuantity(tonkhoTong.getTck_sscd());
            invReportDetail.setSoluong(tonkhoTong.getTck_sscd());
            return true;
        }
        return false;
    }
}
