package com.agasa.xd_f371_v0_0_1.model;

public enum ChungLoaiModel {
    NL_XANG_OTO("Nhiên liệu Xăng Ô tô"),
    DIEZEL("Diezel"),
    DAUBAY("Dầu bay"),
    DAUHACAP("Dầu hạ cấp"),
    DMN_MD_DCOTO("Dầu mỡ nhờn mặt đất - Động cơ ô tô"),
    DMN_MD_DTD("Dầu mỡ nhờn mặt đất - Dầu truyền động"),
    DMN_MD_DK("Dầu mỡ nhờn mặt đất - Dầu khác"),
    DMN_MD_MGMS("Dầu mỡ nhờn mặt đất - Mỡ giảm ma sát"),
    DMN_HK_DM("Dầu mỡ nhờn hàng không - DUng môi"),
    DMN_HK_DDC("Dầu mỡ nhờn hàng không - Dầu động cơ"),
    DMN_HK_DTL("Dầu mỡ nhờn hàng không - Dầu thủy lực"),
    DMN_HK_DK("Dầu mỡ nhờn hàng không - Dầu khác"),
    DMN_HK_MN("Dầu mỡ nhờn hàng không - Mỡ nhờn");

    public final String name;

    ChungLoaiModel(String name) {
        this.name = name;
    }

    public String getNameChungloai(){
        return name;
    }
}
