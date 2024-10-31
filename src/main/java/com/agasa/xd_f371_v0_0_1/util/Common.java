package com.agasa.xd_f371_v0_0_1.util;


import com.agasa.xd_f371_v0_0_1.entity.Category;
import com.agasa.xd_f371_v0_0_1.entity.InvReportDetail;
import com.agasa.xd_f371_v0_0_1.entity.Inventory;
import com.agasa.xd_f371_v0_0_1.model.ChungLoaiModel;

public class Common {

    public static boolean getInvCatalogField(Category category, Inventory invetory, InvReportDetail invReportDetail){
        if (category.getType_title().equals(ChungLoaiModel.TDK_a.getNameChungloai()) && category.getCode().equals(ChungLoaiModel.NVDX_a.getNameChungloai())){
            invReportDetail.setSoluong(invetory.getTdk_nvdx());
            return true;
        } else if (category.getType_title().equals(ChungLoaiModel.TDK_a.getNameChungloai()) && category.getCode().equals(ChungLoaiModel.SSCD_a.getNameChungloai())) {
            invReportDetail.setSoluong(invetory.getTdk_sscd());
            return true;
        } else if (category.getType_title().equals(ChungLoaiModel.TCK_a.getNameChungloai()) && category.getCode().equals(ChungLoaiModel.NVDX_a.getNameChungloai())) {
            invReportDetail.setSoluong(invetory.getTcK_nvdx());
            return true;
        } else if (category.getType_title().equals(ChungLoaiModel.TCK_a.getNameChungloai()) && category.getCode().equals(ChungLoaiModel.SSCD_a.getNameChungloai())) {
            invReportDetail.setSoluong(invetory.getTck_sscd());
            return true;
        }
        return false;
    }
}
