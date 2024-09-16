package com.agasa.xd_f371_v0_0_1.model;

import java.util.HashMap;
import java.util.Map;

public class TCN {

    public static Map<String, String> getTinhChatNhap(){
        Map<String, String> map = new HashMap<>();
        map.put("NHM-CUC-XD", "Nhập hạn mức - Cục Xăng Dầu");
        map.put("NQC", "Nhập quân chủng");
        map.put("N-DVK", "Nhập đơn vị khác");
        map.put("MTC-MPC", "Mua phân cấp - mua tập trung");
        map.put("MCTL-MPC", "Mua phân cấp - mua công tác lẻ");
        map.put("NK", "Nhập khác");
        map.put("XHM", "Xuất hạn mức");
        map.put("XBN-TQC", "Xuất báo nợ - Trong Quân chủng");
        map.put("XK", "Xuất khác");

        return map;
    }
}
