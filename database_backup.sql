PGDMP  (    9            
    |            postgres    14.13    16.4    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13754    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3724                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2                       1259    16904 	   inventory    TABLE     M  CREATE TABLE public.inventory (
    id bigint NOT NULL,
    tdk_sscd bigint NOT NULL,
    tdk_nvdx bigint NOT NULL,
    total bigint,
    status text,
    tck_sscd bigint,
    tck_nvdx bigint,
    petro_id integer,
    quarter_id integer,
    import_total bigint,
    export_total bigint,
    pre_nvdx bigint,
    pre_sscd bigint
);
    DROP TABLE public.inventory;
       public         heap    postgres    false    5                       1259    16903    Inventory_id_seq    SEQUENCE     �   ALTER TABLE public.inventory ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Inventory_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    263    5            �            1259    16782    ledgers    TABLE     �   CREATE TABLE public.ledgers (
    id integer NOT NULL,
    quarter_id integer,
    bill_id integer,
    amount integer,
    from_date date,
    end_date date,
    status text,
    bill_type_id integer
);
    DROP TABLE public.ledgers;
       public         heap    postgres    false    5            �            1259    16781    Ledgers_id_seq    SEQUENCE     �   ALTER TABLE public.ledgers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Ledgers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    251                       1259    17028    activated_active    TABLE     X   CREATE TABLE public.activated_active (
    id integer NOT NULL,
    status_name text
);
 $   DROP TABLE public.activated_active;
       public         heap    postgres    false    5                       1259    17027    activated_active_id_seq    SEQUENCE     �   ALTER TABLE public.activated_active ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.activated_active_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    282                       1259    16873    assignment_type    TABLE     P   CREATE TABLE public.assignment_type (
    id integer NOT NULL,
    name text
);
 #   DROP TABLE public.assignment_type;
       public         heap    postgres    false    5                       1259    16872    assignment_type_id_seq    SEQUENCE     �   ALTER TABLE public.assignment_type ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.assignment_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    259    5            �            1259    16797    category    TABLE     �   CREATE TABLE public.category (
    id integer NOT NULL,
    header_lv1 text,
    header_lv2 text,
    header_lv3 text,
    type_title text,
    tructhuoc_id integer,
    code text
);
    DROP TABLE public.category;
       public         heap    postgres    false    5                       1259    17043    category_assignment    TABLE     �   CREATE TABLE public.category_assignment (
    id integer NOT NULL,
    title_1 text,
    title_2 text,
    title_3 text,
    title_4 text
);
 '   DROP TABLE public.category_assignment;
       public         heap    postgres    false    5                       1259    17042    category_assignment_id_seq    SEQUENCE     �   ALTER TABLE public.category_assignment ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_assignment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    284            �            1259    16796    category_id_seq    SEQUENCE     �   ALTER TABLE public.category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    253    5            �            1259    16395    nhiemvu    TABLE     �   CREATE TABLE public.nhiemvu (
    id integer NOT NULL,
    ten_nv text,
    chitiet text,
    hm_trenkhong text,
    hm_matdat text,
    createtime text,
    status text,
    team_id integer,
    assignment_type_id integer
);
    DROP TABLE public.nhiemvu;
       public         heap    postgres    false    5            �            1259    16400    chi_tiet_nhiemvu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chi_tiet_nhiemvu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.chi_tiet_nhiemvu_id_seq;
       public          postgres    false    210    5            �           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.chi_tiet_nhiemvu_id_seq OWNED BY public.nhiemvu.id;
          public          postgres    false    211            �            1259    16401    chitiet_nhiemvu    TABLE     k   CREATE TABLE public.chitiet_nhiemvu (
    id integer NOT NULL,
    nhiemvu_id integer,
    nhiemvu text
);
 #   DROP TABLE public.chitiet_nhiemvu;
       public         heap    postgres    false    5            �            1259    16406    chitiet_nhiemvu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chitiet_nhiemvu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.chitiet_nhiemvu_id_seq;
       public          postgres    false    212    5            �           0    0    chitiet_nhiemvu_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.chitiet_nhiemvu_id_seq OWNED BY public.chitiet_nhiemvu.id;
          public          postgres    false    213                       1259    17022    dinhmuc    TABLE     �   CREATE TABLE public.dinhmuc (
    id integer NOT NULL,
    dm_tk_gio integer,
    dm_md_gio integer,
    dm_xm_km integer,
    dm_xm_gio integer,
    phuongtien_id integer,
    quarter_id integer
);
    DROP TABLE public.dinhmuc;
       public         heap    postgres    false    5                       1259    17021    dinhmuc_id_seq    SEQUENCE     �   ALTER TABLE public.dinhmuc ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dinhmuc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    280            �            1259    16407    dvi_nv    TABLE     s   CREATE TABLE public.dvi_nv (
    id integer NOT NULL,
    dv_id integer,
    nv_id integer,
    createtime text
);
    DROP TABLE public.dvi_nv;
       public         heap    postgres    false    5            �            1259    16412    dvi_nv_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dvi_nv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.dvi_nv_id_seq;
       public          postgres    false    5    214            �           0    0    dvi_nv_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.dvi_nv_id_seq OWNED BY public.dvi_nv.id;
          public          postgres    false    215                       1259    16972    group_title    TABLE     g   CREATE TABLE public.group_title (
    id integer NOT NULL,
    group_name text,
    group_code text
);
    DROP TABLE public.group_title;
       public         heap    postgres    false    5                       1259    16971    group_title_id_seq    SEQUENCE     �   ALTER TABLE public.group_title ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.group_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    271    5                       1259    17052    hanmuc    TABLE     �   CREATE TABLE public.hanmuc (
    id integer NOT NULL,
    quarter_id integer,
    phuongtien_id text,
    hanmuc_md text,
    hanmuc_km bigint,
    hanmuc_tk text,
    hanmuc_gio bigint,
    soluong bigint
);
    DROP TABLE public.hanmuc;
       public         heap    postgres    false    5                       1259    17051    hanmuc_id_seq    SEQUENCE     �   ALTER TABLE public.hanmuc ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.hanmuc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    286    5            �            1259    16776 
   inv_report    TABLE     �   CREATE TABLE public.inv_report (
    id integer NOT NULL,
    petroleum_id integer,
    quarter_id integer,
    inventory_id integer,
    report_header integer,
    quantity integer,
    price_id integer
);
    DROP TABLE public.inv_report;
       public         heap    postgres    false    5                       1259    16850    inv_report_detail    TABLE     -  CREATE TABLE public.inv_report_detail (
    id integer NOT NULL,
    loaixd text,
    soluong bigint,
    title_lv1 text,
    title_lv2 text,
    title_lv3 text,
    title_lxd_lv1 text,
    title_lxd_lv2 text,
    title_lxd_lv3 text,
    xd_id integer,
    title_id integer,
    quarter_id integer
);
 %   DROP TABLE public.inv_report_detail;
       public         heap    postgres    false    5                        1259    16849    inv_report_detail_id_seq    SEQUENCE     �   ALTER TABLE public.inv_report_detail ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.inv_report_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    257            �            1259    16775    inv_report_id_seq    SEQUENCE     �   ALTER TABLE public.inv_report ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.inv_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    249            �            1259    16487    ledger_details    TABLE     2  CREATE TABLE public.ledger_details (
    dvi text,
    ngay text,
    ma_xd text,
    ten_xd text,
    chung_loai text,
    loai_phieu text,
    so text,
    theo_lenh_so text,
    nhiem_vu text,
    nguoi_nhan_hang text,
    so_xe text,
    chat_luong text,
    phai_xuat integer,
    nhiet_do_tt text,
    ty_trong integer,
    he_so_vcf integer,
    thuc_xuat integer,
    don_gia integer,
    thanh_tien bigint,
    so_km integer,
    so_gio integer,
    dvvc text,
    id integer NOT NULL,
    loaixd_id integer,
    nguonnx_id integer,
    cmt text,
    nguonnx_dvvc_id integer,
    sscd text,
    denngay text,
    quarter_id integer,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    tcn_id integer,
    nhiemvu_id integer,
    nvu_tcn_id integer,
    nvu_tructhuoc integer,
    phuongtien_id integer,
    phuongtien_nvu_id integer,
    so_phut integer,
    tonkhotong_id integer,
    tonkho_id integer,
    ledger_id integer NOT NULL,
    import_unit_id integer,
    export_unit_id integer,
    so_gio_tk integer,
    so_phut_tk integer
);
 "   DROP TABLE public.ledger_details;
       public         heap    postgres    false    5            �            1259    16752 
   ledger_map    TABLE     �   CREATE TABLE public.ledger_map (
    id integer NOT NULL,
    loaixd_id integer NOT NULL,
    header_id integer NOT NULL,
    soluong integer,
    mucgia_id integer,
    quarter_id integer NOT NULL,
    status text
);
    DROP TABLE public.ledger_map;
       public         heap    postgres    false    5            �            1259    16413 	   lichsuxnk    TABLE       CREATE TABLE public.lichsuxnk (
    id integer NOT NULL,
    ten_xd text,
    loai_phieu text,
    tontruoc integer,
    soluong integer,
    tonsau integer,
    createtime text,
    mucgia text,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.lichsuxnk;
       public         heap    postgres    false    5            �            1259    16419    lichsuxnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lichsuxnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.lichsuxnk_id_seq;
       public          postgres    false    216    5            �           0    0    lichsuxnk_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.lichsuxnk_id_seq OWNED BY public.lichsuxnk.id;
          public          postgres    false    217                       1259    17014    loai_nhiemvu    TABLE     ]   CREATE TABLE public.loai_nhiemvu (
    id integer NOT NULL,
    assignment_type_name text
);
     DROP TABLE public.loai_nhiemvu;
       public         heap    postgres    false    5                       1259    17013    loai_nhiemvu_id_seq    SEQUENCE     �   ALTER TABLE public.loai_nhiemvu ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.loai_nhiemvu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    278    5            �            1259    16420    tcn    TABLE     �   CREATE TABLE public.tcn (
    id integer NOT NULL,
    name text,
    concert integer,
    status text,
    loaiphieu_id integer
);
    DROP TABLE public.tcn;
       public         heap    postgres    false    5            �            1259    16425    loai_nx_id_seq    SEQUENCE     �   CREATE SEQUENCE public.loai_nx_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.loai_nx_id_seq;
       public          postgres    false    5    218            �           0    0    loai_nx_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.loai_nx_id_seq OWNED BY public.tcn.id;
          public          postgres    false    219            �            1259    16760 
   loai_phieu    TABLE     K   CREATE TABLE public.loai_phieu (
    id integer NOT NULL,
    type text
);
    DROP TABLE public.loai_phieu;
       public         heap    postgres    false    5            �            1259    16759    loai_phieu_id_seq    SEQUENCE     �   ALTER TABLE public.loai_phieu ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.loai_phieu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    247    5                       1259    17006    loai_phuongtien    TABLE     d   CREATE TABLE public.loai_phuongtien (
    id integer NOT NULL,
    type_name text,
    type text
);
 #   DROP TABLE public.loai_phuongtien;
       public         heap    postgres    false    5                       1259    17005    loai_phuongtien_id_seq    SEQUENCE     �   ALTER TABLE public.loai_phuongtien ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.loai_phuongtien_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    276    5            �            1259    16430    loaixd2    TABLE     $  CREATE TABLE public.loaixd2 (
    id integer NOT NULL,
    maxd text,
    tenxd text,
    chungloai text,
    status text,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    ut integer,
    type text,
    r_type text,
    ut2 integer,
    petroleum_type_id integer
);
    DROP TABLE public.loaixd2;
       public         heap    postgres    false    5            �            1259    16436    loaixd2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.loaixd2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.loaixd2_id_seq;
       public          postgres    false    220    5            �           0    0    loaixd2_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.loaixd2_id_seq OWNED BY public.loaixd2.id;
          public          postgres    false    221            �            1259    16437    mucgia    TABLE     H  CREATE TABLE public.mucgia (
    id integer NOT NULL,
    price integer NOT NULL,
    amount integer NOT NULL,
    quarter_id integer NOT NULL,
    item_id integer NOT NULL,
    status text NOT NULL,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    asssign_type_id integer,
    inventory_id integer
);
    DROP TABLE public.mucgia;
       public         heap    postgres    false    5            �            1259    16443    mucgia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mucgia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mucgia_id_seq;
       public          postgres    false    5    222            �           0    0    mucgia_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.mucgia_id_seq OWNED BY public.mucgia.id;
          public          postgres    false    223            �            1259    16444    myseq    SEQUENCE     n   CREATE SEQUENCE public.myseq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.myseq;
       public          postgres    false    5            �            1259    16445    nguon_nx    TABLE     �   CREATE TABLE public.nguon_nx (
    id integer DEFAULT nextval('public.myseq'::regclass) NOT NULL,
    ten text,
    createtime text
);
    DROP TABLE public.nguon_nx;
       public         heap    postgres    false    224    5            �            1259    16842    tructhuoc_loaiphieu    TABLE     y   CREATE TABLE public.tructhuoc_loaiphieu (
    id integer NOT NULL,
    tructhuoc_id integer,
    loaiphieu_id integer
);
 '   DROP TABLE public.tructhuoc_loaiphieu;
       public         heap    postgres    false    5            �            1259    16841    nguonnx_loaiphieu_id_seq    SEQUENCE     �   ALTER TABLE public.tructhuoc_loaiphieu ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.nguonnx_loaiphieu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    255    5                       1259    16964    nguonnx_title    TABLE     �   CREATE TABLE public.nguonnx_title (
    id integer NOT NULL,
    nguonnx_id integer,
    title_id integer,
    group_id integer
);
 !   DROP TABLE public.nguonnx_title;
       public         heap    postgres    false    5                       1259    16963    nguonnx_title_id_seq    SEQUENCE     �   ALTER TABLE public.nguonnx_title ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.nguonnx_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    269    5            �            1259    16455    nguonnx_tructhuoc    TABLE     �   CREATE TABLE public.nguonnx_tructhuoc (
    id integer NOT NULL,
    nguonnx_id integer NOT NULL,
    tructhuoc_id integer NOT NULL
);
 %   DROP TABLE public.nguonnx_tructhuoc;
       public         heap    postgres    false    5            �            1259    16458    nguonnx_tructhuoc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nguonnx_tructhuoc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.nguonnx_tructhuoc_id_seq;
       public          postgres    false    226    5            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.nguonnx_tructhuoc_id_seq OWNED BY public.nguonnx_tructhuoc.id;
          public          postgres    false    227            �            1259    16459    nhiemvu_tcn    TABLE     �   CREATE TABLE public.nhiemvu_tcn (
    id integer NOT NULL,
    nvu_id integer,
    tcn_id integer,
    phuongtien_id integer
);
    DROP TABLE public.nhiemvu_tcn;
       public         heap    postgres    false    5            �            1259    16462    nhiemvu_tcn_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nhiemvu_tcn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.nhiemvu_tcn_id_seq;
       public          postgres    false    228    5            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.nhiemvu_tcn_id_seq OWNED BY public.nhiemvu_tcn.id;
          public          postgres    false    229                       1259    16986    nxt_reporter    TABLE     D  CREATE TABLE public.nxt_reporter (
    petro_name text,
    petro_title_lv1 text,
    petro_title_lv2 text,
    title_lv1 text,
    title_lv2 text,
    title_lv3 text,
    title_lv4 text,
    petro_title_lv3 text,
    petro_title_lv4 text,
    xd_id integer NOT NULL,
    quarter_id integer NOT NULL,
    quantity bigint
);
     DROP TABLE public.nxt_reporter;
       public         heap    postgres    false    5                       1259    16890    petroleum_type    TABLE     o   CREATE TABLE public.petroleum_type (
    id integer NOT NULL,
    name text,
    type text,
    r_type text
);
 "   DROP TABLE public.petroleum_type;
       public         heap    postgres    false    5                       1259    16889    petroleum_type_id_seq    SEQUENCE     �   ALTER TABLE public.petroleum_type ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.petroleum_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    261    5            �            1259    16471 
   phuongtien    TABLE       CREATE TABLE public.phuongtien (
    id integer NOT NULL,
    name text,
    quantity integer,
    status character varying(50),
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    nguonnx_id integer,
    loaiphuongtien_id integer
);
    DROP TABLE public.phuongtien;
       public         heap    postgres    false    5            �            1259    16477    phuongtien_nhiemvu    TABLE     s   CREATE TABLE public.phuongtien_nhiemvu (
    id integer NOT NULL,
    phuongtien_id integer,
    nvu_id integer
);
 &   DROP TABLE public.phuongtien_nhiemvu;
       public         heap    postgres    false    5            �            1259    16480    phuongtien_nhiemvu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.phuongtien_nhiemvu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.phuongtien_nhiemvu_id_seq;
       public          postgres    false    5    231            �           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.phuongtien_nhiemvu_id_seq OWNED BY public.phuongtien_nhiemvu.id;
          public          postgres    false    232                       1259    16928    price_status    TABLE     M   CREATE TABLE public.price_status (
    id integer NOT NULL,
    name text
);
     DROP TABLE public.price_status;
       public         heap    postgres    false    5            	           1259    16931    price_status_id_seq    SEQUENCE     �   ALTER TABLE public.price_status ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.price_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    264            �            1259    16481    quarter    TABLE     #  CREATE TABLE public.quarter (
    id integer NOT NULL,
    name text,
    start_date date,
    end_date date,
    year text,
    status text,
    convey text,
    tdk_sscd integer,
    tdk_nvdx integer,
    tdk_sum integer,
    tck_sum integer,
    tck_sscd integer,
    tck_nvdx integer
);
    DROP TABLE public.quarter;
       public         heap    postgres    false    5            �            1259    16486    quarter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.quarter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.quarter_id_seq;
       public          postgres    false    5    233            �           0    0    quarter_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.quarter_id_seq OWNED BY public.quarter.id;
          public          postgres    false    234            �            1259    16493    so_cai_id_seq    SEQUENCE     �   CREATE SEQUENCE public.so_cai_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.so_cai_id_seq;
       public          postgres    false    5    235            �           0    0    so_cai_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.so_cai_id_seq OWNED BY public.ledger_details.id;
          public          postgres    false    236            �            1259    16494    splog_adfarm_seq    SEQUENCE     y   CREATE SEQUENCE public.splog_adfarm_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.splog_adfarm_seq;
       public          postgres    false    5                       1259    16945    team    TABLE     Y   CREATE TABLE public.team (
    id integer NOT NULL,
    name text,
    team_code text
);
    DROP TABLE public.team;
       public         heap    postgres    false    5            
           1259    16944    team_id_seq    SEQUENCE     �   ALTER TABLE public.team ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    267                       1259    16992    titles_category    TABLE     e   CREATE TABLE public.titles_category (
    id integer NOT NULL,
    title_name text,
    type text
);
 #   DROP TABLE public.titles_category;
       public         heap    postgres    false    5                       1259    16991    titles_category_id_seq    SEQUENCE     �   ALTER TABLE public.titles_category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.titles_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    274            �            1259    16495    tonkho    TABLE     �   CREATE TABLE public.tonkho (
    id integer NOT NULL,
    loai_xd text,
    soluong integer,
    mucgia integer,
    createtime text,
    status text,
    quarter_id integer,
    loaixd_id integer,
    mucgia_id integer
);
    DROP TABLE public.tonkho;
       public         heap    postgres    false    5            �            1259    16500    tonkho_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tonkho_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tonkho_id_seq;
       public          postgres    false    5    238            �           0    0    tonkho_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tonkho_id_seq OWNED BY public.tonkho.id;
          public          postgres    false    239            �            1259    16501    tonkho_tong    TABLE     �  CREATE TABLE public.tonkho_tong (
    id integer NOT NULL,
    id_quarter integer,
    id_xd integer,
    amount integer,
    sscd integer,
    nvdx integer,
    update_numb integer,
    note text,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    tck_nvdx integer,
    tck_sscd integer,
    tck_sum integer,
    tdk_sum integer,
    tdk_sscd integer,
    tdk_nvdx integer
);
    DROP TABLE public.tonkho_tong;
       public         heap    postgres    false    5            �            1259    16507    tonkho_tong_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tonkho_tong_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tonkho_tong_id_seq;
       public          postgres    false    5    240            �           0    0    tonkho_tong_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tonkho_tong_id_seq OWNED BY public.tonkho_tong.id;
          public          postgres    false    241            �            1259    16508 	   tructhuoc    TABLE     �   CREATE TABLE public.tructhuoc (
    id integer NOT NULL,
    name text,
    type text,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tructhuoc;
       public         heap    postgres    false    5            �            1259    16514    tructhuoc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tructhuoc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tructhuoc_id_seq;
       public          postgres    false    5    242            �           0    0    tructhuoc_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tructhuoc_id_seq OWNED BY public.tructhuoc.id;
          public          postgres    false    243            �            1259    16515    vehicels_for_plan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vehicels_for_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.vehicels_for_plan_id_seq;
       public          postgres    false    230    5            �           0    0    vehicels_for_plan_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.vehicels_for_plan_id_seq OWNED BY public.phuongtien.id;
          public          postgres    false    244                       2604    16516    chitiet_nhiemvu id    DEFAULT     x   ALTER TABLE ONLY public.chitiet_nhiemvu ALTER COLUMN id SET DEFAULT nextval('public.chitiet_nhiemvu_id_seq'::regclass);
 A   ALTER TABLE public.chitiet_nhiemvu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212                       2604    16517 	   dvi_nv id    DEFAULT     f   ALTER TABLE ONLY public.dvi_nv ALTER COLUMN id SET DEFAULT nextval('public.dvi_nv_id_seq'::regclass);
 8   ALTER TABLE public.dvi_nv ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            +           2604    16531    ledger_details id    DEFAULT     n   ALTER TABLE ONLY public.ledger_details ALTER COLUMN id SET DEFAULT nextval('public.so_cai_id_seq'::regclass);
 @   ALTER TABLE public.ledger_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235                       2604    16518    lichsuxnk id    DEFAULT     l   ALTER TABLE ONLY public.lichsuxnk ALTER COLUMN id SET DEFAULT nextval('public.lichsuxnk_id_seq'::regclass);
 ;   ALTER TABLE public.lichsuxnk ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216                        2604    16519 
   loaixd2 id    DEFAULT     h   ALTER TABLE ONLY public.loaixd2 ALTER COLUMN id SET DEFAULT nextval('public.loaixd2_id_seq'::regclass);
 9   ALTER TABLE public.loaixd2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            "           2604    16520 	   mucgia id    DEFAULT     f   ALTER TABLE ONLY public.mucgia ALTER COLUMN id SET DEFAULT nextval('public.mucgia_id_seq'::regclass);
 8   ALTER TABLE public.mucgia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            %           2604    16523    nguonnx_tructhuoc id    DEFAULT     |   ALTER TABLE ONLY public.nguonnx_tructhuoc ALTER COLUMN id SET DEFAULT nextval('public.nguonnx_tructhuoc_id_seq'::regclass);
 C   ALTER TABLE public.nguonnx_tructhuoc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226                       2604    16524 
   nhiemvu id    DEFAULT     q   ALTER TABLE ONLY public.nhiemvu ALTER COLUMN id SET DEFAULT nextval('public.chi_tiet_nhiemvu_id_seq'::regclass);
 9   ALTER TABLE public.nhiemvu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            &           2604    16525    nhiemvu_tcn id    DEFAULT     p   ALTER TABLE ONLY public.nhiemvu_tcn ALTER COLUMN id SET DEFAULT nextval('public.nhiemvu_tcn_id_seq'::regclass);
 =   ALTER TABLE public.nhiemvu_tcn ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            '           2604    16528    phuongtien id    DEFAULT     u   ALTER TABLE ONLY public.phuongtien ALTER COLUMN id SET DEFAULT nextval('public.vehicels_for_plan_id_seq'::regclass);
 <   ALTER TABLE public.phuongtien ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    230            )           2604    16529    phuongtien_nhiemvu id    DEFAULT     ~   ALTER TABLE ONLY public.phuongtien_nhiemvu ALTER COLUMN id SET DEFAULT nextval('public.phuongtien_nhiemvu_id_seq'::regclass);
 D   ALTER TABLE public.phuongtien_nhiemvu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            *           2604    16530 
   quarter id    DEFAULT     h   ALTER TABLE ONLY public.quarter ALTER COLUMN id SET DEFAULT nextval('public.quarter_id_seq'::regclass);
 9   ALTER TABLE public.quarter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233                       2604    16532    tcn id    DEFAULT     d   ALTER TABLE ONLY public.tcn ALTER COLUMN id SET DEFAULT nextval('public.loai_nx_id_seq'::regclass);
 5   ALTER TABLE public.tcn ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            -           2604    16533 	   tonkho id    DEFAULT     f   ALTER TABLE ONLY public.tonkho ALTER COLUMN id SET DEFAULT nextval('public.tonkho_id_seq'::regclass);
 8   ALTER TABLE public.tonkho ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            .           2604    16534    tonkho_tong id    DEFAULT     p   ALTER TABLE ONLY public.tonkho_tong ALTER COLUMN id SET DEFAULT nextval('public.tonkho_tong_id_seq'::regclass);
 =   ALTER TABLE public.tonkho_tong ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            0           2604    16535    tructhuoc id    DEFAULT     l   ALTER TABLE ONLY public.tructhuoc ALTER COLUMN id SET DEFAULT nextval('public.tructhuoc_id_seq'::regclass);
 ;   ALTER TABLE public.tructhuoc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �          0    17028    activated_active 
   TABLE DATA           ;   COPY public.activated_active (id, status_name) FROM stdin;
    public          postgres    false    282   �A      k          0    16873    assignment_type 
   TABLE DATA           3   COPY public.assignment_type (id, name) FROM stdin;
    public          postgres    false    259   B      e          0    16797    category 
   TABLE DATA           j   COPY public.category (id, header_lv1, header_lv2, header_lv3, type_title, tructhuoc_id, code) FROM stdin;
    public          postgres    false    253   ?B      �          0    17043    category_assignment 
   TABLE DATA           U   COPY public.category_assignment (id, title_1, title_2, title_3, title_4) FROM stdin;
    public          postgres    false    284   �C      <          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   �C      �          0    17022    dinhmuc 
   TABLE DATA           k   COPY public.dinhmuc (id, dm_tk_gio, dm_md_gio, dm_xm_km, dm_xm_gio, phuongtien_id, quarter_id) FROM stdin;
    public          postgres    false    280   �D      >          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   �E      w          0    16972    group_title 
   TABLE DATA           A   COPY public.group_title (id, group_name, group_code) FROM stdin;
    public          postgres    false    271   �E      �          0    17052    hanmuc 
   TABLE DATA           u   COPY public.hanmuc (id, quarter_id, phuongtien_id, hanmuc_md, hanmuc_km, hanmuc_tk, hanmuc_gio, soluong) FROM stdin;
    public          postgres    false    286   F      a          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   1F      i          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, xd_id, title_id, quarter_id) FROM stdin;
    public          postgres    false    257   NF      o          0    16904 	   inventory 
   TABLE DATA           �   COPY public.inventory (id, tdk_sscd, tdk_nvdx, total, status, tck_sscd, tck_nvdx, petro_id, quarter_id, import_total, export_total, pre_nvdx, pre_sscd) FROM stdin;
    public          postgres    false    263   _j      S          0    16487    ledger_details 
   TABLE DATA             COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, phuongtien_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id, import_unit_id, export_unit_id, so_gio_tk, so_phut_tk) FROM stdin;
    public          postgres    false    235   �k      ]          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   �m      c          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   n      @          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   nn      ~          0    17014    loai_nhiemvu 
   TABLE DATA           @   COPY public.loai_nhiemvu (id, assignment_type_name) FROM stdin;
    public          postgres    false    278   �o      _          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   �o      |          0    17006    loai_phuongtien 
   TABLE DATA           >   COPY public.loai_phuongtien (id, type_name, type) FROM stdin;
    public          postgres    false    276   �o      D          0    16430    loaixd2 
   TABLE DATA           |   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2, petroleum_type_id) FROM stdin;
    public          postgres    false    220   Zp      F          0    16437    mucgia 
   TABLE DATA           |   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id, inventory_id) FROM stdin;
    public          postgres    false    222   �t      I          0    16445    nguon_nx 
   TABLE DATA           7   COPY public.nguon_nx (id, ten, createtime) FROM stdin;
    public          postgres    false    225   Nz      u          0    16964    nguonnx_title 
   TABLE DATA           K   COPY public.nguonnx_title (id, nguonnx_id, title_id, group_id) FROM stdin;
    public          postgres    false    269   |      J          0    16455    nguonnx_tructhuoc 
   TABLE DATA           I   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id) FROM stdin;
    public          postgres    false    226   �|      :          0    16395    nhiemvu 
   TABLE DATA           �   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, team_id, assignment_type_id) FROM stdin;
    public          postgres    false    210   �|      L          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   �      x          0    16986    nxt_reporter 
   TABLE DATA           �   COPY public.nxt_reporter (petro_name, petro_title_lv1, petro_title_lv2, title_lv1, title_lv2, title_lv3, title_lv4, petro_title_lv3, petro_title_lv4, xd_id, quarter_id, quantity) FROM stdin;
    public          postgres    false    272   �      m          0    16890    petroleum_type 
   TABLE DATA           @   COPY public.petroleum_type (id, name, type, r_type) FROM stdin;
    public          postgres    false    261   �      N          0    16471 
   phuongtien 
   TABLE DATA           l   COPY public.phuongtien (id, name, quantity, status, "timestamp", nguonnx_id, loaiphuongtien_id) FROM stdin;
    public          postgres    false    230   �      O          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   �      p          0    16928    price_status 
   TABLE DATA           0   COPY public.price_status (id, name) FROM stdin;
    public          postgres    false    264   H�      Q          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   e�      B          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   �      s          0    16945    team 
   TABLE DATA           3   COPY public.team (id, name, team_code) FROM stdin;
    public          postgres    false    267   ��      z          0    16992    titles_category 
   TABLE DATA           ?   COPY public.titles_category (id, title_name, type) FROM stdin;
    public          postgres    false    274   F�      V          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238    �      X          0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   =�      Z          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   Z�      g          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   ݇      �           0    0    Inventory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Inventory_id_seq"', 715, true);
          public          postgres    false    262            �           0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 254, true);
          public          postgres    false    250            �           0    0    activated_active_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.activated_active_id_seq', 3, true);
          public          postgres    false    281            �           0    0    assignment_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.assignment_type_id_seq', 2, true);
          public          postgres    false    258            �           0    0    category_assignment_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.category_assignment_id_seq', 1, false);
          public          postgres    false    283            �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 61, true);
          public          postgres    false    252            �           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211            �           0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 16, true);
          public          postgres    false    213            �           0    0    dinhmuc_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dinhmuc_id_seq', 31, true);
          public          postgres    false    279            �           0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215            �           0    0    group_title_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.group_title_id_seq', 2, true);
          public          postgres    false    270            �           0    0    hanmuc_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.hanmuc_id_seq', 1, false);
          public          postgres    false    285            �           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 59165, true);
          public          postgres    false    256            �           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 38359, true);
          public          postgres    false    248            �           0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 748, true);
          public          postgres    false    217            �           0    0    loai_nhiemvu_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.loai_nhiemvu_id_seq', 1, true);
          public          postgres    false    277            �           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219            �           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246            �           0    0    loai_phuongtien_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.loai_phuongtien_id_seq', 7, true);
          public          postgres    false    275            �           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221            �           0    0    mucgia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mucgia_id_seq', 2271, true);
          public          postgres    false    223            �           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 88, true);
          public          postgres    false    224            �           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254            �           0    0    nguonnx_title_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nguonnx_title_id_seq', 41, true);
          public          postgres    false    268            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            �           0    0    petroleum_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.petroleum_type_id_seq', 13, true);
          public          postgres    false    260            �           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232            �           0    0    price_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.price_status_id_seq', 1, false);
          public          postgres    false    265            �           0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234            �           0    0    so_cai_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.so_cai_id_seq', 823, true);
          public          postgres    false    236            �           0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    237            �           0    0    team_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.team_id_seq', 5, true);
          public          postgres    false    266            �           0    0    titles_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.titles_category_id_seq', 14, true);
          public          postgres    false    273            �           0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 813, true);
          public          postgres    false    239            �           0    0    tonkho_tong_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 1068, true);
          public          postgres    false    241            �           0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    243            �           0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 32, true);
          public          postgres    false    244            {           2606    16910    inventory Inventory_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT "Inventory_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.inventory DROP CONSTRAINT "Inventory_pkey";
       public            postgres    false    263            g           2606    16788    ledgers Ledgers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ledgers
    ADD CONSTRAINT "Ledgers_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ledgers DROP CONSTRAINT "Ledgers_pkey";
       public            postgres    false    251            �           2606    17034 &   activated_active activated_active_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.activated_active
    ADD CONSTRAINT activated_active_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.activated_active DROP CONSTRAINT activated_active_pkey;
       public            postgres    false    282            w           2606    16879 $   assignment_type assignment_type_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.assignment_type
    ADD CONSTRAINT assignment_type_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.assignment_type DROP CONSTRAINT assignment_type_pkey;
       public            postgres    false    259            i           2606    16795    ledgers bill_uni 
   CONSTRAINT     N   ALTER TABLE ONLY public.ledgers
    ADD CONSTRAINT bill_uni UNIQUE (bill_id);
 :   ALTER TABLE ONLY public.ledgers DROP CONSTRAINT bill_uni;
       public            postgres    false    251            �           2606    17049 ,   category_assignment category_assignment_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.category_assignment
    ADD CONSTRAINT category_assignment_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.category_assignment DROP CONSTRAINT category_assignment_pkey;
       public            postgres    false    284            k           2606    16803    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    253            m           2606    17004 -   category category_type_title_tructhuoc_id_key 
   CONSTRAINT     |   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_type_title_tructhuoc_id_key UNIQUE (type_title, tructhuoc_id);
 W   ALTER TABLE ONLY public.category DROP CONSTRAINT category_type_title_tructhuoc_id_key;
       public            postgres    false    253    253            3           2606    16538    nhiemvu chi_tiet_nhiemvu_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.nhiemvu
    ADD CONSTRAINT chi_tiet_nhiemvu_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.nhiemvu DROP CONSTRAINT chi_tiet_nhiemvu_pkey;
       public            postgres    false    210            5           2606    16553 $   chitiet_nhiemvu chitiet_nhiemvu_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.chitiet_nhiemvu
    ADD CONSTRAINT chitiet_nhiemvu_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.chitiet_nhiemvu DROP CONSTRAINT chitiet_nhiemvu_pkey;
       public            postgres    false    212            �           2606    17036 ,   dinhmuc dinhmuc_phuongtien_id_quarter_id_key 
   CONSTRAINT     |   ALTER TABLE ONLY public.dinhmuc
    ADD CONSTRAINT dinhmuc_phuongtien_id_quarter_id_key UNIQUE (phuongtien_id, quarter_id);
 V   ALTER TABLE ONLY public.dinhmuc DROP CONSTRAINT dinhmuc_phuongtien_id_quarter_id_key;
       public            postgres    false    280    280            �           2606    17026    dinhmuc dinhmuc_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.dinhmuc
    ADD CONSTRAINT dinhmuc_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.dinhmuc DROP CONSTRAINT dinhmuc_pkey;
       public            postgres    false    280            7           2606    16540    dvi_nv dvi_nv_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.dvi_nv
    ADD CONSTRAINT dvi_nv_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.dvi_nv DROP CONSTRAINT dvi_nv_pkey;
       public            postgres    false    214            �           2606    16978    group_title group_title_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.group_title
    ADD CONSTRAINT group_title_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.group_title DROP CONSTRAINT group_title_pkey;
       public            postgres    false    271            A           2606    16587 	   mucgia id 
   CONSTRAINT     G   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT id PRIMARY KEY (id);
 3   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT id;
       public            postgres    false    222            s           2606    16856 (   inv_report_detail inv_report_detail_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.inv_report_detail
    ADD CONSTRAINT inv_report_detail_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.inv_report_detail DROP CONSTRAINT inv_report_detail_pkey;
       public            postgres    false    257            u           2606    17002 A   inv_report_detail inv_report_detail_xd_id_quarter_id_title_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.inv_report_detail
    ADD CONSTRAINT inv_report_detail_xd_id_quarter_id_title_id_key UNIQUE (xd_id, quarter_id, title_id);
 k   ALTER TABLE ONLY public.inv_report_detail DROP CONSTRAINT inv_report_detail_xd_id_quarter_id_title_id_key;
       public            postgres    false    257    257    257            c           2606    16840 ?   inv_report inv_report_petroleum_id_quarter_id_report_header_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.inv_report
    ADD CONSTRAINT inv_report_petroleum_id_quarter_id_report_header_key UNIQUE (petroleum_id, quarter_id, report_header);
 i   ALTER TABLE ONLY public.inv_report DROP CONSTRAINT inv_report_petroleum_id_quarter_id_report_header_key;
       public            postgres    false    249    249    249            e           2606    16780    inv_report inv_report_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.inv_report
    ADD CONSTRAINT inv_report_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.inv_report DROP CONSTRAINT inv_report_pkey;
       public            postgres    false    249            }           2606    16927 +   inventory inventory_petro_id_quarter_id_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_petro_id_quarter_id_key UNIQUE (petro_id, quarter_id);
 U   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_petro_id_quarter_id_key;
       public            postgres    false    263    263            _           2606    16758    ledger_map ledger_map_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.ledger_map
    ADD CONSTRAINT ledger_map_pkey PRIMARY KEY (id, loaixd_id, header_id, quarter_id);
 D   ALTER TABLE ONLY public.ledger_map DROP CONSTRAINT ledger_map_pkey;
       public            postgres    false    245    245    245    245            9           2606    16609    lichsuxnk lichsuxnk_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.lichsuxnk
    ADD CONSTRAINT lichsuxnk_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.lichsuxnk DROP CONSTRAINT lichsuxnk_pkey;
       public            postgres    false    216            �           2606    17020    loai_nhiemvu loai_nhiemvu_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.loai_nhiemvu
    ADD CONSTRAINT loai_nhiemvu_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.loai_nhiemvu DROP CONSTRAINT loai_nhiemvu_pkey;
       public            postgres    false    278            a           2606    16766    loai_phieu loai_phieu_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.loai_phieu
    ADD CONSTRAINT loai_phieu_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.loai_phieu DROP CONSTRAINT loai_phieu_pkey;
       public            postgres    false    247            �           2606    17012 $   loai_phuongtien loai_phuongtien_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.loai_phuongtien
    ADD CONSTRAINT loai_phuongtien_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.loai_phuongtien DROP CONSTRAINT loai_phuongtien_pkey;
       public            postgres    false    276            ?           2606    16546    loaixd2 loaixd2_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.loaixd2
    ADD CONSTRAINT loaixd2_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.loaixd2 DROP CONSTRAINT loaixd2_pkey;
       public            postgres    false    220            C           2606    16888 :   mucgia mucgia_quarter_id_item_id_asssign_type_id_price_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT mucgia_quarter_id_item_id_asssign_type_id_price_key UNIQUE (quarter_id, item_id, asssign_type_id, price);
 d   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT mucgia_quarter_id_item_id_asssign_type_id_price_key;
       public            postgres    false    222    222    222    222            E           2606    16560    nguon_nx nguon_nx_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.nguon_nx
    ADD CONSTRAINT nguon_nx_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.nguon_nx DROP CONSTRAINT nguon_nx_pkey;
       public            postgres    false    225            o           2606    16848 A   tructhuoc_loaiphieu nguonnx_loaiphieu_nguonnx_id_loaiphieu_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.tructhuoc_loaiphieu
    ADD CONSTRAINT nguonnx_loaiphieu_nguonnx_id_loaiphieu_id_key UNIQUE (tructhuoc_id, loaiphieu_id);
 k   ALTER TABLE ONLY public.tructhuoc_loaiphieu DROP CONSTRAINT nguonnx_loaiphieu_nguonnx_id_loaiphieu_id_key;
       public            postgres    false    255    255            q           2606    16846 *   tructhuoc_loaiphieu nguonnx_loaiphieu_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tructhuoc_loaiphieu
    ADD CONSTRAINT nguonnx_loaiphieu_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tructhuoc_loaiphieu DROP CONSTRAINT nguonnx_loaiphieu_pkey;
       public            postgres    false    255            �           2606    16980 3   nguonnx_title nguonnx_title_nguonnx_id_group_id_key 
   CONSTRAINT     ~   ALTER TABLE ONLY public.nguonnx_title
    ADD CONSTRAINT nguonnx_title_nguonnx_id_group_id_key UNIQUE (nguonnx_id, group_id);
 ]   ALTER TABLE ONLY public.nguonnx_title DROP CONSTRAINT nguonnx_title_nguonnx_id_group_id_key;
       public            postgres    false    269    269            �           2606    16970     nguonnx_title nguonnx_title_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.nguonnx_title
    ADD CONSTRAINT nguonnx_title_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.nguonnx_title DROP CONSTRAINT nguonnx_title_pkey;
       public            postgres    false    269            I           2606    16957 ?   nguonnx_tructhuoc nguonnx_tructhuoc_nguonnx_id_tructhuoc_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.nguonnx_tructhuoc
    ADD CONSTRAINT nguonnx_tructhuoc_nguonnx_id_tructhuoc_id_key UNIQUE (nguonnx_id, tructhuoc_id);
 i   ALTER TABLE ONLY public.nguonnx_tructhuoc DROP CONSTRAINT nguonnx_tructhuoc_nguonnx_id_tructhuoc_id_key;
       public            postgres    false    226    226            K           2606    16647    nhiemvu_tcn nhiemvu_tcn_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.nhiemvu_tcn
    ADD CONSTRAINT nhiemvu_tcn_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.nhiemvu_tcn DROP CONSTRAINT nhiemvu_tcn_pkey;
       public            postgres    false    228            �           2606    17000    nxt_reporter nxt_reporter_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.nxt_reporter
    ADD CONSTRAINT nxt_reporter_pkey PRIMARY KEY (quarter_id, xd_id);
 H   ALTER TABLE ONLY public.nxt_reporter DROP CONSTRAINT nxt_reporter_pkey;
       public            postgres    false    272    272            y           2606    16896 "   petroleum_type petroleum_type_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.petroleum_type
    ADD CONSTRAINT petroleum_type_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.petroleum_type DROP CONSTRAINT petroleum_type_pkey;
       public            postgres    false    261            O           2606    16575 *   phuongtien_nhiemvu phuongtien_nhiemvu_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.phuongtien_nhiemvu
    ADD CONSTRAINT phuongtien_nhiemvu_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.phuongtien_nhiemvu DROP CONSTRAINT phuongtien_nhiemvu_pkey;
       public            postgres    false    231            M           2606    16565    phuongtien phuongtien_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.phuongtien
    ADD CONSTRAINT phuongtien_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.phuongtien DROP CONSTRAINT phuongtien_pkey;
       public            postgres    false    230                       2606    16938    price_status price_status_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.price_status
    ADD CONSTRAINT price_status_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.price_status DROP CONSTRAINT price_status_pkey;
       public            postgres    false    264            Q           2606    16567    quarter quarter_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.quarter
    ADD CONSTRAINT quarter_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.quarter DROP CONSTRAINT quarter_pkey;
       public            postgres    false    233            S           2606    16544    ledger_details so_cai_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT so_cai_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT so_cai_pkey;
       public            postgres    false    235            ;           2606    16815    tcn tcn_name_key 
   CONSTRAINT     K   ALTER TABLE ONLY public.tcn
    ADD CONSTRAINT tcn_name_key UNIQUE (name);
 :   ALTER TABLE ONLY public.tcn DROP CONSTRAINT tcn_name_key;
       public            postgres    false    218            =           2606    16569    tcn tcn_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.tcn
    ADD CONSTRAINT tcn_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.tcn DROP CONSTRAINT tcn_pkey;
       public            postgres    false    218            �           2606    16951    team team_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public            postgres    false    267            �           2606    16953    team team_team_code_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_team_code_key UNIQUE (team_code);
 A   ALTER TABLE ONLY public.team DROP CONSTRAINT team_team_code_key;
       public            postgres    false    267            G           2606    16807    nguon_nx ten_uni 
   CONSTRAINT     J   ALTER TABLE ONLY public.nguon_nx
    ADD CONSTRAINT ten_uni UNIQUE (ten);
 :   ALTER TABLE ONLY public.nguon_nx DROP CONSTRAINT ten_uni;
       public            postgres    false    225            �           2606    16998 $   titles_category titles_category_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.titles_category
    ADD CONSTRAINT titles_category_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.titles_category DROP CONSTRAINT titles_category_pkey;
       public            postgres    false    274            U           2606    16542    tonkho tonkho_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tonkho
    ADD CONSTRAINT tonkho_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tonkho DROP CONSTRAINT tonkho_pkey;
       public            postgres    false    238            W           2606    16866 0   tonkho tonkho_quarter_id_loaixd_id_mucgia_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.tonkho
    ADD CONSTRAINT tonkho_quarter_id_loaixd_id_mucgia_id_key UNIQUE (quarter_id, loaixd_id, mucgia_id);
 Z   ALTER TABLE ONLY public.tonkho DROP CONSTRAINT tonkho_quarter_id_loaixd_id_mucgia_id_key;
       public            postgres    false    238    238    238            Y           2606    16862 ,   tonkho_tong tonkho_tong_id_quarter_id_xd_key 
   CONSTRAINT     t   ALTER TABLE ONLY public.tonkho_tong
    ADD CONSTRAINT tonkho_tong_id_quarter_id_xd_key UNIQUE (id_quarter, id_xd);
 V   ALTER TABLE ONLY public.tonkho_tong DROP CONSTRAINT tonkho_tong_id_quarter_id_xd_key;
       public            postgres    false    240    240            [           2606    16571    tonkho_tong tonkho_tong_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tonkho_tong
    ADD CONSTRAINT tonkho_tong_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tonkho_tong DROP CONSTRAINT tonkho_tong_pkey;
       public            postgres    false    240            ]           2606    16573    tructhuoc tructhuoc_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tructhuoc
    ADD CONSTRAINT tructhuoc_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tructhuoc DROP CONSTRAINT tructhuoc_pkey;
       public            postgres    false    242            �           2606    17037 "   dinhmuc dinhmuc_phuongtien_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dinhmuc
    ADD CONSTRAINT dinhmuc_phuongtien_id_fkey FOREIGN KEY (phuongtien_id) REFERENCES public.phuongtien(id) NOT VALID;
 L   ALTER TABLE ONLY public.dinhmuc DROP CONSTRAINT dinhmuc_phuongtien_id_fkey;
       public          postgres    false    230    3405    280            �           2606    16598    dvi_nv dvi_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.dvi_nv
    ADD CONSTRAINT dvi_fkey FOREIGN KEY (dv_id) REFERENCES public.nguon_nx(id) NOT VALID;
 9   ALTER TABLE ONLY public.dvi_nv DROP CONSTRAINT dvi_fkey;
       public          postgres    false    3397    214    225            �           2606    16916 !   inventory inventory_petro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_petro_id_fkey FOREIGN KEY (petro_id) REFERENCES public.loaixd2(id) NOT VALID;
 K   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_petro_id_fkey;
       public          postgres    false    263    220    3391            �           2606    16921 #   inventory inventory_quarter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_quarter_id_fkey FOREIGN KEY (quarter_id) REFERENCES public.quarter(id) NOT VALID;
 M   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_quarter_id_fkey;
       public          postgres    false    3409    233    263            �           2606    16789    ledger_details ledger_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT ledger_fkey FOREIGN KEY (ledger_id) REFERENCES public.ledgers(id) NOT VALID;
 D   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT ledger_fkey;
       public          postgres    false    251    235    3431            �           2606    16898 &   loaixd2 loaixd2_petroleum_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.loaixd2
    ADD CONSTRAINT loaixd2_petroleum_type_id_fkey FOREIGN KEY (petroleum_type_id) REFERENCES public.petroleum_type(id) NOT VALID;
 P   ALTER TABLE ONLY public.loaixd2 DROP CONSTRAINT loaixd2_petroleum_type_id_fkey;
       public          postgres    false    3449    220    261            �           2606    16547    ledger_details loaixd_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT loaixd_fkey FOREIGN KEY (loaixd_id) REFERENCES public.loaixd2(id) NOT VALID;
 D   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT loaixd_fkey;
       public          postgres    false    220    235    3391            �           2606    16593    mucgia loaixd_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT loaixd_id FOREIGN KEY (item_id) REFERENCES public.loaixd2(id) NOT VALID;
 :   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT loaixd_id;
       public          postgres    false    3391    222    220            �           2606    16882 "   mucgia mucgia_asssign_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT mucgia_asssign_type_id_fkey FOREIGN KEY (asssign_type_id) REFERENCES public.assignment_type(id) NOT VALID;
 L   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT mucgia_asssign_type_id_fkey;
       public          postgres    false    259    222    3447            �           2606    16670    phuongtien nguonnx_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phuongtien
    ADD CONSTRAINT nguonnx_fkey FOREIGN KEY (nguonnx_id) REFERENCES public.nguon_nx(id) NOT VALID;
 A   ALTER TABLE ONLY public.phuongtien DROP CONSTRAINT nguonnx_fkey;
       public          postgres    false    3397    230    225            �           2606    16981 )   nguonnx_title nguonnx_title_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nguonnx_title
    ADD CONSTRAINT nguonnx_title_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.group_title(id) NOT VALID;
 S   ALTER TABLE ONLY public.nguonnx_title DROP CONSTRAINT nguonnx_title_group_id_fkey;
       public          postgres    false    271    3465    269            �           2606    16648    nhiemvu_tcn nhiemvu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nhiemvu_tcn
    ADD CONSTRAINT nhiemvu_fkey FOREIGN KEY (nvu_id) REFERENCES public.nhiemvu(id) NOT VALID;
 B   ALTER TABLE ONLY public.nhiemvu_tcn DROP CONSTRAINT nhiemvu_fkey;
       public          postgres    false    228    3379    210            �           2606    16554    chitiet_nhiemvu nhiemvu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitiet_nhiemvu
    ADD CONSTRAINT nhiemvu_id FOREIGN KEY (nhiemvu_id) REFERENCES public.nhiemvu(id) NOT VALID;
 D   ALTER TABLE ONLY public.chitiet_nhiemvu DROP CONSTRAINT nhiemvu_id;
       public          postgres    false    3379    212    210            �           2606    16581    phuongtien_nhiemvu nhiemvu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.phuongtien_nhiemvu
    ADD CONSTRAINT nhiemvu_id FOREIGN KEY (nvu_id) REFERENCES public.nhiemvu(id) NOT VALID;
 G   ALTER TABLE ONLY public.phuongtien_nhiemvu DROP CONSTRAINT nhiemvu_id;
       public          postgres    false    210    231    3379            �           2606    16958    nhiemvu nhiemvu_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nhiemvu
    ADD CONSTRAINT nhiemvu_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team(id) NOT VALID;
 F   ALTER TABLE ONLY public.nhiemvu DROP CONSTRAINT nhiemvu_team_id_fkey;
       public          postgres    false    267    210    3457            �           2606    16603    dvi_nv nvu_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.dvi_nv
    ADD CONSTRAINT nvu_fkey FOREIGN KEY (nv_id) REFERENCES public.nhiemvu(id) NOT VALID;
 9   ALTER TABLE ONLY public.dvi_nv DROP CONSTRAINT nvu_fkey;
       public          postgres    false    210    214    3379            �           2606    16576     phuongtien_nhiemvu phuongtien_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.phuongtien_nhiemvu
    ADD CONSTRAINT phuongtien_id FOREIGN KEY (phuongtien_id) REFERENCES public.phuongtien(id) NOT VALID;
 J   ALTER TABLE ONLY public.phuongtien_nhiemvu DROP CONSTRAINT phuongtien_id;
       public          postgres    false    3405    231    230            �           2606    16680    ledger_details quarter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT quarter_fkey FOREIGN KEY (quarter_id) REFERENCES public.quarter(id) NOT VALID;
 E   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT quarter_fkey;
       public          postgres    false    3409    235    233            �           2606    16588    mucgia quarter_id    FK CONSTRAINT        ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT quarter_id FOREIGN KEY (quarter_id) REFERENCES public.quarter(id) NOT VALID;
 ;   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT quarter_id;
       public          postgres    false    3409    222    233            �           2606    16653    nhiemvu_tcn tcn_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.nhiemvu_tcn
    ADD CONSTRAINT tcn_fkey FOREIGN KEY (tcn_id) REFERENCES public.tcn(id) NOT VALID;
 >   ALTER TABLE ONLY public.nhiemvu_tcn DROP CONSTRAINT tcn_fkey;
       public          postgres    false    3389    228    218            �           2606    16867    tcn tcn_loaiphieu_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tcn
    ADD CONSTRAINT tcn_loaiphieu_id_fkey FOREIGN KEY (loaiphieu_id) REFERENCES public.loai_phieu(id) NOT VALID;
 C   ALTER TABLE ONLY public.tcn DROP CONSTRAINT tcn_loaiphieu_id_fkey;
       public          postgres    false    247    218    3425            �   %   x�3���wt�s�2�2�9�C<�ܹb���� �V�      k      x�3�vv�2��s������� '��      e   N  x��R�N�@=�~�|�Zh9V�i�H�tm8x�Di�ƔD?�1�ك����G�O�e7t7��	03;��oֱ�>���>�	+���I�C�'�ؽ����
V~� �S�8�6��I=�S��W�Y�ʪ�wI�4��@<�ČUo)��/��Ap%��ͫ�ؗ#�V���}ɵ �'9�K���;|���s>�K&���7��L�B�"b�b�����@d� �&�e(q��pU�pv�[�76+�#��;|�Ϻ����˃��x�e��=��rLX�3GO��7^��{*����u�,�v��s\�j�*���Ζ�!�	A	}sF���$h      �      x������ � �      <   �   x�e��N�@�뙧�0��8�k�+H4h��X� e�1�	,={�\ccb���X^d�䖽B����2����$mI�+z0�}�!nL�St۴�+�gB�JN!8�]6��P8�%//S�N[mZ'n����2�lG����8��o���4}W�r��^��]Ku�������g���CH�����"��_��4nM���#RH��a���]QV�s"8��W��M��U�NT���23<Q�ߔ���C�=��mp      �   �   x�M�K!C��a*b �]z�s4�Gj�7��KbO�e;��A2K2E&�$K��$p�p�8����#3�X���z!Nb"3�IP����r��wǊ+��
}�+��Iy�2���Cc��l:C�ѕ�Q(�Fk����x��2FoH�Y;���@o�:/zC��'Cs�g����S�?�z��U	XC�����[��淋�]uIF      >      x������ � �      w   R   x�3�LJ�/�<��T�$���@25_!/#����\�2�gII|^�P��_��]k*J�ZZ�P�p��<�����=... H] �      �      x������ � �      a      x������ � �      i      x�ŝK�]�q�ףOq7 �~w/)J�l�CZ�%.����80E
| �w�����"@� 0` � Z�K
��&9Ù���8���f�`K$%T�=�����>�o��Gn���}lv��=	�h:�����ov��ut��ݏ���߾~t���?�a��oؽ|�C����go��t���ݛ?�:�ӑ���?0s�P����w?��˦�2�������io�"���5�,����Ϳ=ݽ|�>f���<�,��wO߽������ߏ~����<�,ϭ��{T+ �M��i�����G���N�������]�X���a����?��ϯv�}���Z��Z�R-_|q�#��P.��w͝Ww�����y��~�1�/�ؼm���=8�}������l@)����W��k	�����g�������W�	��9�����<;׬��ݚ%`����/o��Mw�u�[����G�G�V��ڰ��V��n����
�Y'�|+Hc��r�� }uz/�k�@mu�T��
�Uw���-�`���ɸ$Z�D���x�Y�<�����Y�4���8dY�,��Ø$Y�${}�����w����[������O��?���t؛���Uo��6ZP߭P0��[UYLV���[�A[}�o��V`��AāE��*:/��p��FvL���7�s#8�ސ�D$�1`���6Trk� j��Ҹ�0$���F�RI���� ���d��+�V�ˡU�<i������[�bS��Ϝ�ׯw���A�H��I�$��;�t�n�Ri����Iv�O0E-f���ѫwo�tV��(�rmĔ���X��\��&µ��'~��{Q� J�����t� '75�Z�mzx!�x�'��(�N��x�}�&,[M:��������2b �M�jsӑ���m/m:�H�d�r�=4,�����lK���� Q,hkYԞ0'��K���0�E�ϭ�S���LIۮ/���xȓ�o��j��[$�����X�I�n,�:2����T�<}y�X|ʾJӴJ��2W��ҸPSRf�8�	R�f��,R�ϋ�@!M����X!m�/]z�G��t���kGI�D?�4�H������I*�inzh��ʛ� ���c�F����91�	#*ohf�h"����/?��x��������~GW�ءBe��lEZ�)��H����-Vc6�	�e�ꈰ��U���[`�k�e(��F<�ym�ԇʮm�W�7��*�RUZ���J�]U��[c}��mU���A�M�_����䍵��[#	��-U��[�a������v{?V�E�����U�����U���G[�}��'�,���*����
v| ��I�T�WMB��T�۞�V�S��0�r# >=W�;�m�hIa|�o=�h=a�r��
a��|x������qx�e��e��q��5�#)����2\@X��WW�K_:8\:ؤu���6��E��E�M��u��p����[.8Z.��o��
��
.�E�O�V�{Z.8S��vO��l�OS=i�s�1����|��Փ���e�WO��,C��z�W/�ԇ�e�U֣�z�TŸ�zZ��l�����-:.����=:�������*����]:������9,�D<��92��➖�!�i�%��%�Gw~�ٽ[w��7?֛/�_���O?{�����GwNvO�����;?�������_��^AU&��!�,�,�"��C����zv�?�:�5$��wY�J�5$I>KV�^}h�_��;����м(��KUQ�>����B YWC�\�X�0� S�ج��!O.���7ׄM�6L�	��jP�ՆL8�R)�ElCE8ERi�mC�K��bOX�������N�5�{;}.�I��ђ��4G�ݡ
	Yx6��ڧ�Bm$�}�0u�.�.v0�0�t̫������hoS���r\9�?��w=��%��pT˒��psA˒��� p�U˒J0�!p�U˒\�"pV˒N��#hCV˒Bp�$hwV�\����:-sU�����i9���ca��."h�Z˰��k,iKO��2�v��帽��8+��DxyK�|Z)�Y���JS�!�Ү�V&��Y'BUY�y����אi%�ŭ@��z{����U{��
L�b�z��9�;�Z�5� q�Q�nf�"�;j��ǜ0��G�5Gs�����鎡T ���z����gOn}����c��U��`�vɺƓ�d���d�l�Z��f��OSaX|d�Ĥ�[mD1!3<i;Wϳ��p����������zD�<����+���y���
Z�
֦�$�ŝam����_�(֦��$�}cm�2 e�Fֶ�l|�]em˪��j�dֶ$��6�9k[R��8mAk��>9}r��O+^p�5I�F5�����:��[�[5���/��ن(3��MQ�!�Ű��"���{��S�bX��.���������Ngk@������.�u6������� �'���GX pzQ�5C�@G�<���o�����y�X����.O�X*2�^�yFɩ� Z{���vy�=#V~*2��ޥ�x��Z{����"+.��R�Κ�a�#��
��u�p�T���.�U�A��pBU�����qU���� ��U����p�U����0V��������w^ΎP�MC	/����??��Փ����^Ȓ˷�DM���$�o3�8�0`���Lj9vo�b����ܿ�d�L�h%p3�8�X��L���^����~��@}���հ"�ƍH4` ��9nD��8E�q#��g�)���4� Jх܈���@J^�F$�ΉQr$7�r5O?�� �W�=C�@T�?:9���O>}�;{�B��On��K��ґS��)]�ؒ����B�a������"I�'�i!�҃��-9��R2�����)�L�F���� Q,m1�a���F���X���F.�� �����%1a�5����&��F�|��de �h�oԒ�������ZRN����Qe9��eި��\����({��_߼��ɝ���b~�J�5F��D]#L��D�H'�s��j���a�)L�'�s�E����~n�̒���ҌV��;�Fhk��>��X�h�T+��X��\!���F��
g4V7:WF,���ѹ4 �Ս�5��d�nL��&cucR)8~�פ
r5�%�Cc.�%�i���$3x�Y�S��kT�V��%/y��V��V�3�珉��&oLȒ1���䍝�dC�%yc�b�Ϊ�V&�^t�7V-�
^��76W��-��� ��=����hHol.�E7zcsM`/Y���'xɇ޸T
^M�u��\x���8yt��W_�����u�}��������Ӌ�����L�e���j[&@��I�E���pf%�@�8l����ۖg�K�U��-���I�"|�b#]X��_7�OQl^�6���rEU�m��S�( �)04�O����mR��P��D@a��D��M���|��n�^�M>Յ
���ٚ+�b[I8OBuw��!��2�<���߁r�"De��ѥ�D|9�rq �N0�\�0�`:����b�2�/2`͹���t�ȀW�^�Q0�i#朅���#�����x�Ȁ�g^7����r�4�D�S.܈�Iv����x.�N�p�a�'�)WNP�)%;�Z��j:�d�T(k:�d�T_��ttɂ�礮ך�/Y�����9�0Yp���ŀkMǘ,�x.d�0!�
s�yq�Z�q&Θ{��q��H��̽|���t�ɂ/f!z�k6��P��x�ɂ{f^3�5q�"׏!\k<�dE.̸�x���\/Xq�񸓕�p�Z�'+s�`ĵ�cOV�Z��kMG��L��P��t���T_�
ך�@Yi�n�>|~�3���
`MǠ�tU�zG��BY�L���PV�����DPS���!MǢ�I6~D��(�d�m�t<�*���nĳ�Q���IYe�q��JY�j���U�4pc�LY�j/��ؔU�H�!�NY��'����թ.0㘎PY-ٚk��t��jU�]�)A���=�=~���BO���     �Y*{��Y��w��0�ն���t��j��e�����g�j:Oeu(���5��f*��6���F�f����y��p<Se��X���x�ʚ�Ό�OUYS�n��*kʺ�v<WeMY`�����)+'��d�5eMaF=���$(>�����CW�}:\e�<�����ǻoU^'|�G���@���"x4���VG�A^�ÚŐ�U�����!�"��T�"H��Q�"|��!qm(�k��ꦽp�Xݮ��"�����ŝZ �v,��.n�*:VL�wf
�c�\ܢ�mǂ����܄\ń�Y�⮬!ZEt�
�i�����9T���,�o��N��ޭ�����Y/�c7�5�^����.�^-El�F������Yo��3���Yo��w��N
Y�J�kC0yOѮ�Kx��P��KxȆ�?;���~l�ڑJx�ǆ���g{l��Ix�ǆ�#��D'xl�z�Hth��3��IA�tlpu��+	H��{��޼މc�y�����w?�׷�o�^�}�r%	�ʱ�/*n&���$��r�o&�%)�9���b1to�B���l1�9��D*J�	��D�(QB�ְ@3w�b!lg��5w��!���Zk5X�+���d�ŝ��5&6J���k�b�YD���k��!G��[cBg���Wh�<��KD���Xl�SGh���GWs58Le�e������>�}t���t��2Q�h��N�,�0<�Bw'�j���a��?&^��e�N�,3H�*w'e�l�t���j1tg�T��Ї�*^��Y*��x����B�/pw2V����N��Y����\@�W�;�kl��v�r5�.]��T*��.]��T� W^��ݩ�{7w���շ��g���my��v�L]��1��۝�i�a��%�N��轵�����2�.tw*����K׺;=����K��;-�"w֌��2�|��E�N��zXq�׽;��� m��w�3`�-^��t�������a �x�ә���.�w:� N�ҕ��L|��O=��Q�MC	An��R���O��8������t9�3�:U׸�����B�a����Θ��� '�-=,^�ҥ�θB:f�ҕ���B�!�҅�΄����#~�?��2xg�rI�ƫ��-�� ��"xgK"��b��ْJ0�/�w�$@�+��-���xgK
��e����\Cf����\U��t��s��0�ْy�s��0�ܒw�s�x��ߒu�s�����s�s�p\�^.79�����o�s����m�s����k�W��;��׬�߿`�{����a?�t/��#0Υjt��c��r.���?F'(�KZ4�|4�r�$=��G(�K�È|��r�$B�G(�K�Æ|2�r��;��'(�s�9����\���� �?����'�<?}8�<y�K|C�O·�L=ck��Ʌ)�4�{C�O.������<��Xio����gㅽ!�'t�m���<�\0˱;�F(��>��=��+�D�A�'
Z�Od�^O.������T�>�y�SA$�ql���Ouࢱ!�'?t�Ɔ�����AXl���O��\	��;��ҷ	���N�w�u�����������yj#k�V"w��=�����T��X�$O�%Auy@$�֊�,�T �Z��S+~�:��}+PU1X�)�Ry!PU.�E��{�.���� "m��k��&$I����� O�6z�򟪐�2���{�t�L{��ʟ�$0i�dk���;u��L���[���t�=���\��Go�Gi�r��x�(m�c���[��U3�O�#�5�ː���#9%y5%y��H�H^�(�@�~E^�r-| C�"�����y�6"�Ћȫ��@��C^�-�2��*�E��ϐWi�������ؚ��-�'䵨��d rd��c�%#��I�kU��}��O�k���
ym�wU��l����0r���i8F>C^�8M?��m��P�S)~�3�~�P����R����C�$]��Dt!�&ij>$��7IWs��Iڻ��K�M��<<$w"o��f�!yy㹚�P�T�M���\������ίud\䭨K�>��`�L��!����Uk������:{4�X$s#oM����r�M���쎼uKa{�E8Z�= � �۰P �	ɻ��{��H�e��I�F�.�t.L�I�wY���ݒ��z��d��]��l�$�$�,_�t"����s�]ӟt���O����g/w7����>��o�I�Jޅ�D��I�J�O�Dc�$w%��V���a��,>&F��˒������4,%�)�-�K̵�=U#P��C ��47�JA|`E������+�/y_>���EE��,�0�P��^Т�EM��-�1�PT6��#�)8 tɕɇ��\xə�Xtܼs����,�o����ɻ7��h9�2���D�Y��|�e�ձA&BX��W�娇iʞN�%.��,di�ګ[j3�$�L�[*�cä��v�����2_�RYVc�����2��l��.b��!h��uׯ�N4H��|ͥ+�I<$ɚ�t�JeP��u��+���Ed�^u�Jm�@B�5O�N��r`NU�=�@T�>�����Ϟ�=zv�D��捋�̕_a3��8�,���f�v;��Lv%S��}�A�������kO���>ˆ3 �d�u�ϲ�p�i%[��}�*EE춺�R.ƾbo��$�HmW�生f��kZQ㛟���k��碟M@H��=��i"��\���40vК:���g��iM����T0�Բ(\�V���%���YJb%�n�>����'��?yu��ZܸX������R�ZF����ҫ�z�LVLA������]^,PF3���<�����\���	h��#r����d��_��Cz�w
*TEo�Y�����J{tx
Z����{�x
z]�ډ�OA�����)�u�>�<��D��G����%h������V0�����^�k�?9=��/��'��`�U�NIq��-������h��2�d��\���|rx
FUEo�&���ψ�����Y�Ńe2v
�.��A2�:�6#�Ռ86~!����	[�p`m��]օv��R��2��_4\
vY�ыnK�.B;v�j)�e%E.�,���%��`��ZQKK�.�+f�^)�DN̝ݍ՗,��d�lh��0��������~o$c��DU���a�\~F��d��Z�łYK�J���\��d��ٌ�V3b�م�׉Y�fJ���z0k�J)�e]hƬE#���e��m��_ցa�Z4Q
~Y�1k�B)�e%Ĭ%���5`��쓂_��Ĭ%���t��������2���ҰЕ\��wu�[Ə���i�^��WR�a-hc�0�a�9�!)���&�#� �=�$_��R��
�A������Y(��h�Bֽ�D��f�@���u�8���(��m�A�Ga��~�����Ne�Z��%_4�]��:T}��m�I�6���x�"(�����GsӔ�e���h�b���m��خ"vc�8�~��pNҦ�2��͎�47l9S���h�+6��{	�9�,ƽV���\�Z���`�4g[Ҁv"���t��9�vJs����#*�I����1)��~���h)������)��~���NY�V�JB��Pjw����S=��M�2~��)u������)�z��jqxm�q��R)�˓�@R$�ϓ��QeX�V%�QMi�k��B**�XQ:���
Y�
́A�T�'�B�B+��O!�T��G���{�н�S�<����N�T��S:��߼?���Mx�Zl�n)Mp�j?t/4�G�V��c�~x�hb����{h��6ڕ��U��ў�]+a4F�B	l��5Q;U4R�D=���<1����$�H�c;C42�D}8JM�0Q2pC7����:�������b��,R�c��1C��Ŭ"x���,nQ��/B������J��h�X0dC3��< 2�y�D	zPdE��ڪCY��ZqdG��� �A ٤SۑdI6iL(��K:sK��m�A0��7G�dM.�J8���\�� �  ���L����� �Il���wb1�%<���k�/G�64�	��]@Sm@�X�d7�X!�\�{��n�����^���2�"<�.\�{�tG�v0D܎k���c�r�,�J���q;����2��q;Ll5a�Ŏ�bG]�}��vd����1��q;�����]�� fu�:��rƊ�0�A�L��jĊ`p����=9@�4�䁏#���et�'��н�q���6V�c��G�	a?<|�9&�i�������R��� >b��Z�f0s	�P|��eNue;|��e�5!|��e�u�8|��e��c;|��e���(|вeu |У%1�L�f0�)�\����=9,�l�O>=6���U��ve�j�������u�Ah�2�4�!��1��#`�Y���< �"��=(�"��ڪC�i?ܵ��#��(�$�@�I��#�#�dҘP�%�t�8�<bI&-�&�`�Io����dҕp�'�&}3:<�I��Yߓ�M]6��9�.�*�����2N��d��Q���J��:a$�N��QJ�$�aJ�$C�qJ��xm�!����]+��J�r�
�*��l;��J�-�����i���* �tڬ��
�+�v�(��J��� �@�Җm�7�$�����=i@�?z��f��:�|�����}���b`7�t��}U�T3���^r�
-k�R���`��Ͽ��7_n�
�5?����/6T�����^�����Pȣ�iB�T�(�?;�b{���,�
�z��&4��:0~��&N��^`����m�q�//���ب��j��̵Qϭ��P5�0�m�m/,TE�!��gRG�TU�Cj�fu{�Kg%.~�zw����KN�_<��J�<�_�.�s�'��������ٻ7|u$�^y��o���}lv��=	�`X9�/��I��a����o�b��C){�x~y�����HjΗV��ͨ�΋1��}����_�5(�A�?��>���=      o   }  x����j�@D���y��v�m)���s��;�z���,�&��1yH����K���~�~^�_��o�_O�j�>\�ާo�� ���� ĉ�6\�Vu�|��τ��(���q�:"%Mw�!K�)��q}Wҹ�]֐Fu'�A�g�Je'<U�~�J�V2����	ܓE{2�,JHBC��V]W��t'��h%;'�I�kЮn��E׀�95�$�Q��uh(����h��4�{�0!�#����l��d�pYCtg��4]o��g�räq%�$�|��7L瞬�Q�w�.��v�a:wTծ6�J3^�tTסJҸ'���ʻ�I��rW�qO��d���i�Q1ٓ<�!��+�fL��:Y�r1�O<r��R���eY�_�:KF      S   �  x��սnA �z���q���߸; ��� �H�"BB
x���
Q�Iˋ�M�]˾Ĭ�=$|�x�{��w�;wa��n�bG@Μ�^�o�B���U�� y2f�\�����_ُ�۟���K��(G�!/,����'�&�9��%� �M��;�[���<	G��!x�oK��L�.���_�>�>A�% l�a	��fb�h~�F��I�KbKe�߯�QS�(Isy��rBD�;���y.�D4�4\@q��ő������FN[q֚h��jy*�ؤY��xkO�w��$�����7'�ᄵՖ�G�U�v��)�蓮6;��q�O	'pZ��z�*���j[����M*��1I1�Ln�<�ZX�y}��b���u���;\6��hr���-4�����(�R%��/���� Q~D�a�	���H��DV�ल�"���o�I���4{L>Q��F_�I��W�w���|6��@��      ]      x������ � �      c   \   x�uͻ�0���%���.��GT�?��ʧ�=Y\@X��������\���0/�v��(��1��ײ� ����ZTjD��):'D� o(x      @   .  x���=N�0��9�6�/���"Z���"(RV��'�0܁��pl'Bip��S��?��_��9�K�v�v��d�WÍ!H� �*|��P� B����9�L]�X0�Ϸ�';�{>*u捻.�'��a5b��尔��Cb�/L���c��[2ɬv���ٻS������!��f���~o�-��!�U#u	�ߠ��Rk���]�c�B	t�[,WGc��+MK�ܩB(��2n_���}�8�Ŭ�$�b����n������t�[���U� Ĭ������ -@�)IL�\��5M�[�=      ~      x�3��SpJ������ p�      _      x�3���p�2�u����� '/�      |   M   x�3��u�uv��u�tr��2�p�w�p��w�t�r�r�L�b�~� 3�r$! ��dPH� S��I E1z\\\ r{*      D   �  x���Mr�F���S�&UP�v���� �1bc�f�$�X�r��L��	r��r��2��"�I�@�c���J�5]��V��F1���-�Bbge9���%��C����KBa3���7J�;����ӳ���L�#�Ӳ�I֔)��d��zDܖD?�c�Z@ո2�]�"�hE�dk�56�z���t�8�&C<Px�M�$ ����l�d��{>L��A������~��3ɛh�6�7��d�7x/7� f�@e���d�(���) �2g4�N���X����< �p����Z�I�5:L= M������4k�/�D��������kH�5���"9�b�5U_��x1�~0n?�x�B��R��b<��\I+Z��Q�����I[�x�	��������Ī�/�a7,�	%Es���x�)�lP"Z.7O�t^�8��hÈ��4�yf(�qh��O�;"N$�r�VP4���&�����(3�:�����v��W��T�'K)92u2d�����!�I����/��ۂ�)����ۛ`~;�0�8̲��w��\/w@G)%t�iE��ku�Ѻ�����}�h��)�|�o�[0�B��Qʳ u��yҹ�oC�	��]|]0�<64����X��Ne_���4�*8l����&�J�$���^�"���!r�Ug�ˇ{�/O��z�UyY�Be��1�e}<�N2�t�P6�?��a�Dʡ�0�n�*adS��z����?�T4o���q����d�l?�I�ˊ/\s�]����j����&��1���&���])j��	kR��q�����@����z�Y�Z�J�ѯ����<��<���[�i��9��$U��u�q����J����K�f�1M7�����C�C��8�AgI�8^Xl��̠>oɠEA�N7��j��Ym�%����m���(���x�r�����N�Y��QOcV0�p�Ҵ�U���m��Q?cBhw�w1]t�:	h~ˊ��L��4G�]�p�;���u�<YmlB%C"�
�;��^����4p�2u�,�̏�R3�L�l��
���Đ��5
��c�r���vr$�iC��k7��t<���L:/@��z"�a�fmUS���`���\����S�!��;!��✢v��饾;?;;�vVb/      F   O  x���M�7F�=��<����*0�,�e���!���8ELl���z͑�>J�	2^@Sy���_�w�����������ߓ�|��XHޅ��K��&|��S_p�I���E�f�:a��@'a6�5)kXA��AP6�� '���5h֗	k����'���� Y���N���2k�:�Di�c�<���ɞ����p:��!���v� A8�l	̸KH��$jRʥX3��-a�5$�P�����xX�Bɖ J��&Jv�i��5P
%��N�%@��l�R�3Vd�)�l�^�$)�,�N_�mdd�)�|_dI(R�:��o��!2N�����	7�T�~�<��"��T�'��=I8�Ħߨ]ٱVd��J�F�YC�Hɦߨ�08j��8+R�%sn�M(R��7���I�rV�dK�͘܄"&�~�ư;�F�Y�-�dOC
%���᫘	��qV(�`��!j
%��e��d/E��Jv�	h�5���5���_5pN%[N܍{N%��X��t���T�%e�܄SIj6V�Q��p*�Fh7�t���e�sd��ɞ��!	���l,�se�R��dO�;� ����Ro�餍 N�?�g�؄����a6M�]�p�%��v�	�����>�{f
'[����M(�|<�8���{o�p�%�Bf�&N>��|��$grP(�8���0O%�1���0̭ir�T�'�=I8��ǐs�U1#�"��dO�i[�$�J�c�9����!Bn�J����8��ǌs��r���"��idO@��P�pɏ�5ƥdd�<��	��	���ǈ�7�(/%����'qj�	����l�kD�aadG�ST�o.Badq_�D	�pX��r).Bad�p��%���pX��mOC
#�� ��dqX��߲�� Щ�4�eqt*�x���p*)M�����JF�ѩdK@��C֐�SIi"�T���qt:��0��L��4���{-"��t�%o'�p:)M�y����9:��	�|�p�	9 #�n� B�';�� �a
'���~�� r\8�<�0kHB�d�r �O�YC�N���nB�d�r"+��Y)ǅ�-AW\�nB�d�r+ww�)ǅ�-%"�"8�K�%2�<D�8=A�Z�$��Њ�� d8�Uū����G��'�h�nr���g���g�ۍ߸���O?��c�wt������?�i:^��Opr?��x�����?M�k���-�-�H����~<D��5���駧����[����E1���f�5�Pq��=s��c���G�в������o�/����{��9p��;�~f������Fzo?      I   �  x�]��j�@�ϣ��c{p�]ɒ���P�c������PK`Km�y�^�C="J95������&�4���gg���%L�����"(���}ه28�@���:͑�N�fT��0M>�%��C�C�!����5��5��I�Dέ��U�lq��1уKk���]����__�E��zV��q������l�!��x�W]����V�K5\.���wk~���5������4/2�*Sv\�t�`zt��)nlcX�<����b�N��`l�:Ͱ*ۺxM�2مx/���� "��m�[<s�6�6��.�ˎ~;+�X<"�gǻ�O��}�'��y.���$,iO,N�`Df���Q]��Ґ�y{�3\cfV�8)1��b<8�S�<��z����5���יּK�}�^eH�L�Sjʦ��e_�՚o���"���8�2��.      u   �   x�5���0��az��ػt�9*���/Ȗ 
��$��BBk&��G6̪j��M�#	+�k59|��w��N��M/|,+��y�����j�ĉ�U��o�!ƞ��RQe�Ȟ�M��;�%�̐v3.%v���������-S,�AO��/�v��~D���1	      J      x������ � �      :   �  x��U�j�@=��b�-�ƒe;>&jAE��"L�(
H"�:$���m�&�=��LI!�C.�=����?��-vjmc�%��f�ͼ���0巘�"� �2Q~d@���}��eæ�� �G�m�������3"��=��Q,�Dy�i���:�+�e��6Ow�*�N�b��:���D?R���=�N��#�s�}�||��E%��p_�ׁ�2���_Ё����7s�K��T��P��4�'�J8�d�j�W�u�;�|m���a�#ʫcQ~�P�2���ykN�8HdO)��:[S����8�Ce:� \Ҿ�:gsQ���B�����r�Ϊ��,QaRj�&�e��T���p�8M�%�è�4IZ3�����<��e���bC�;$���Ŵ�1�j0wM��&$).r�%9�:x��m�%��|�����5�Q{&�EmQ|�Sٙ�:��r�SQ\�������Y�du;�Q�'*���eS�k���%���b<���R�,�>0ܕ]���0�bi�TyN}��ёlpi�e4_�7�eY�#Q�5���,�Zr��a�jN��}v�V���cTߦ�.�rx��Z��|u��V0�ْ���B7��4��+éN�=j�wU*ٓ���h�è��JpF�������^�ه-~�q kZ.Rp]|���>�V�Z�7| �iGI�Y����6��Sx#      L      x������ � �      x      x������ � �      m   �   x�U�K�0��]�H�wi�E�S$������JLX�y�=ְ�fd))��-�G��ݺ��r/y-��(���a�z��Kh��0=.��#x8�8rk�[���=�:ҭ��q"G�_ȼS�[����>)�����/V�G      N   �  x��սnA �z�)�L�����ogB N�A��Dcˉ�l�2��PQ��N�=�&�����.��};��3ct0|VЂ�po::��$���M�Rf2�ȧN��a<۔N�r��LѠM�R\`�����x�\,�k��%�?��F����� ���c�E�F�5,R�1)�DlY>�jA}�r���Q��"� ��B�G4
+l	U�*^_|���)���S��J�J�P��&&prZ��G��h\p�(,�U�h�O�O���Fy�s�<L�w׿����ͷ�W�&jЋ֯��� {O���n������|�]�'��z��}ām	UҬYS^
�p��m@��fK!K2)0�k#���\qUo`4-1��j��9}3�}0.��g��bQ��묔�����'tvV�2i߳���H:/�O�۫�j��7ODa�c
��U���Z��{@�V��'�N�M&�φ�9h��B�!6��t�e�Ѡ��`g��T!hY���R�3�� ��h���d8)�����+��r2�l{������G>w��>�ۂ����;;gWHY�`��m�t��G��#h3�>ڀ�z���k�Z��Fwd�	��`|��7f��}L��z�K���,dX($n��">�W����䰍��E��2Wl      O      x�3�42�4�2�44RƜ���\1z\\\ *�%      p      x������ � �      Q   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      B   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      s   �   x�3���x�{������;B<B�Z�������C��`j�=��y(�=��Q�������eS����{l}(D���eS��"T���e~%���Ύ~\����@��KB@�x���=... ��9�      z   �   x�-�;
�@�zr�9��y�jM
A�X�ѨIwU��g���!)׋�M�Ymv������k���oX8K���T�b�d��/��H��,
�9��~�4v!�Ļ���c�j�V܎��Wq���j��z�}���0��sG`� (��o^,�f�/�K�u�Z�ZX�gFmկߴa2q=�B��?�f$Q�0�/e9UM      V      x������ � �      X      x������ � �      Z   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      g   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����     