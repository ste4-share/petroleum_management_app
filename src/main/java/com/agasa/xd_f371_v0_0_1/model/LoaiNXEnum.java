package com.agasa.xd_f371_v0_0_1.model;

public enum LoaiNXEnum {
        KHAC("KHAC"),
        KE_HOACH("KE_HOACH"),
        NHIEM_VU("NHIEM_VU"),
        MB("MB");

        public final String name;

        LoaiNXEnum(String name) {
            this.name = name;
        }

        public String getNameChungloai(){
            return name;
        }
}
