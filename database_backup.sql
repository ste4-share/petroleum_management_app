PGDMP      )            
    |            postgres    14.13    16.4    z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            {           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            |           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            }           1262    13754    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            ~           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3709                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
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
            public          postgres    false    251    5                       1259    17028    activated_active    TABLE     X   CREATE TABLE public.activated_active (
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
       public         heap    postgres    false    5            �            1259    16796    category_id_seq    SEQUENCE     �   ALTER TABLE public.category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
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
       public          postgres    false    5    210            �           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.chi_tiet_nhiemvu_id_seq OWNED BY public.nhiemvu.id;
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
            public          postgres    false    280    5            �            1259    16407    dvi_nv    TABLE     s   CREATE TABLE public.dvi_nv (
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
            public          postgres    false    271    5            �            1259    16776 
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
       public          postgres    false    5    216            �           0    0    lichsuxnk_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.lichsuxnk_id_seq OWNED BY public.lichsuxnk.id;
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
            public          postgres    false    5    247                       1259    17006    loai_phuongtien    TABLE     d   CREATE TABLE public.loai_phuongtien (
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
            public          postgres    false    5    276            �            1259    16430    loaixd2    TABLE     $  CREATE TABLE public.loaixd2 (
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
       public          postgres    false    222    5            �           0    0    mucgia_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.mucgia_id_seq OWNED BY public.mucgia.id;
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
   phuongtien    TABLE     o  CREATE TABLE public.phuongtien (
    id integer NOT NULL,
    name text,
    type character varying(20),
    han_muc integer,
    dm_tk integer,
    dm_md integer,
    dm_xm integer,
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
            public          postgres    false    264    5            �            1259    16481    quarter    TABLE     #  CREATE TABLE public.quarter (
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
            public          postgres    false    274    5            �            1259    16495    tonkho    TABLE     �   CREATE TABLE public.tonkho (
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
       public          postgres    false    238    5            �           0    0    tonkho_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tonkho_id_seq OWNED BY public.tonkho.id;
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
       public          postgres    false    240    5            �           0    0    tonkho_tong_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tonkho_tong_id_seq OWNED BY public.tonkho_tong.id;
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
       public          postgres    false    242    5            �           0    0    tructhuoc_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tructhuoc_id_seq OWNED BY public.tructhuoc.id;
          public          postgres    false    243            �            1259    16515    vehicels_for_plan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vehicels_for_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.vehicels_for_plan_id_seq;
       public          postgres    false    230    5            �           0    0    vehicels_for_plan_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.vehicels_for_plan_id_seq OWNED BY public.phuongtien.id;
          public          postgres    false    244                       2604    16516    chitiet_nhiemvu id    DEFAULT     x   ALTER TABLE ONLY public.chitiet_nhiemvu ALTER COLUMN id SET DEFAULT nextval('public.chitiet_nhiemvu_id_seq'::regclass);
 A   ALTER TABLE public.chitiet_nhiemvu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212                       2604    16517 	   dvi_nv id    DEFAULT     f   ALTER TABLE ONLY public.dvi_nv ALTER COLUMN id SET DEFAULT nextval('public.dvi_nv_id_seq'::regclass);
 8   ALTER TABLE public.dvi_nv ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            !           2604    16531    ledger_details id    DEFAULT     n   ALTER TABLE ONLY public.ledger_details ALTER COLUMN id SET DEFAULT nextval('public.so_cai_id_seq'::regclass);
 @   ALTER TABLE public.ledger_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235                       2604    16518    lichsuxnk id    DEFAULT     l   ALTER TABLE ONLY public.lichsuxnk ALTER COLUMN id SET DEFAULT nextval('public.lichsuxnk_id_seq'::regclass);
 ;   ALTER TABLE public.lichsuxnk ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216                       2604    16519 
   loaixd2 id    DEFAULT     h   ALTER TABLE ONLY public.loaixd2 ALTER COLUMN id SET DEFAULT nextval('public.loaixd2_id_seq'::regclass);
 9   ALTER TABLE public.loaixd2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220                       2604    16520 	   mucgia id    DEFAULT     f   ALTER TABLE ONLY public.mucgia ALTER COLUMN id SET DEFAULT nextval('public.mucgia_id_seq'::regclass);
 8   ALTER TABLE public.mucgia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222                       2604    16523    nguonnx_tructhuoc id    DEFAULT     |   ALTER TABLE ONLY public.nguonnx_tructhuoc ALTER COLUMN id SET DEFAULT nextval('public.nguonnx_tructhuoc_id_seq'::regclass);
 C   ALTER TABLE public.nguonnx_tructhuoc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226                       2604    16524 
   nhiemvu id    DEFAULT     q   ALTER TABLE ONLY public.nhiemvu ALTER COLUMN id SET DEFAULT nextval('public.chi_tiet_nhiemvu_id_seq'::regclass);
 9   ALTER TABLE public.nhiemvu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210                       2604    16525    nhiemvu_tcn id    DEFAULT     p   ALTER TABLE ONLY public.nhiemvu_tcn ALTER COLUMN id SET DEFAULT nextval('public.nhiemvu_tcn_id_seq'::regclass);
 =   ALTER TABLE public.nhiemvu_tcn ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228                       2604    16528    phuongtien id    DEFAULT     u   ALTER TABLE ONLY public.phuongtien ALTER COLUMN id SET DEFAULT nextval('public.vehicels_for_plan_id_seq'::regclass);
 <   ALTER TABLE public.phuongtien ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    230                       2604    16529    phuongtien_nhiemvu id    DEFAULT     ~   ALTER TABLE ONLY public.phuongtien_nhiemvu ALTER COLUMN id SET DEFAULT nextval('public.phuongtien_nhiemvu_id_seq'::regclass);
 D   ALTER TABLE public.phuongtien_nhiemvu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231                        2604    16530 
   quarter id    DEFAULT     h   ALTER TABLE ONLY public.quarter ALTER COLUMN id SET DEFAULT nextval('public.quarter_id_seq'::regclass);
 9   ALTER TABLE public.quarter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233                       2604    16532    tcn id    DEFAULT     d   ALTER TABLE ONLY public.tcn ALTER COLUMN id SET DEFAULT nextval('public.loai_nx_id_seq'::regclass);
 5   ALTER TABLE public.tcn ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            #           2604    16533 	   tonkho id    DEFAULT     f   ALTER TABLE ONLY public.tonkho ALTER COLUMN id SET DEFAULT nextval('public.tonkho_id_seq'::regclass);
 8   ALTER TABLE public.tonkho ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            $           2604    16534    tonkho_tong id    DEFAULT     p   ALTER TABLE ONLY public.tonkho_tong ALTER COLUMN id SET DEFAULT nextval('public.tonkho_tong_id_seq'::regclass);
 =   ALTER TABLE public.tonkho_tong ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            &           2604    16535    tructhuoc id    DEFAULT     l   ALTER TABLE ONLY public.tructhuoc ALTER COLUMN id SET DEFAULT nextval('public.tructhuoc_id_seq'::regclass);
 ;   ALTER TABLE public.tructhuoc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            w          0    17028    activated_active 
   TABLE DATA           ;   COPY public.activated_active (id, status_name) FROM stdin;
    public          postgres    false    282   %9      `          0    16873    assignment_type 
   TABLE DATA           3   COPY public.assignment_type (id, name) FROM stdin;
    public          postgres    false    259   Z9      Z          0    16797    category 
   TABLE DATA           j   COPY public.category (id, header_lv1, header_lv2, header_lv3, type_title, tructhuoc_id, code) FROM stdin;
    public          postgres    false    253   �9      1          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   �:      u          0    17022    dinhmuc 
   TABLE DATA           k   COPY public.dinhmuc (id, dm_tk_gio, dm_md_gio, dm_xm_km, dm_xm_gio, phuongtien_id, quarter_id) FROM stdin;
    public          postgres    false    280   �;      3          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   �<      l          0    16972    group_title 
   TABLE DATA           A   COPY public.group_title (id, group_name, group_code) FROM stdin;
    public          postgres    false    271   �<      V          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   ==      ^          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, xd_id, title_id, quarter_id) FROM stdin;
    public          postgres    false    257   Z=      d          0    16904 	   inventory 
   TABLE DATA           �   COPY public.inventory (id, tdk_sscd, tdk_nvdx, total, status, tck_sscd, tck_nvdx, petro_id, quarter_id, import_total, export_total, pre_nvdx, pre_sscd) FROM stdin;
    public          postgres    false    263   �b      H          0    16487    ledger_details 
   TABLE DATA             COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, phuongtien_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id, import_unit_id, export_unit_id, so_gio_tk, so_phut_tk) FROM stdin;
    public          postgres    false    235   �d      R          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   s      X          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   1s      5          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   �u      s          0    17014    loai_nhiemvu 
   TABLE DATA           @   COPY public.loai_nhiemvu (id, assignment_type_name) FROM stdin;
    public          postgres    false    278   $~      T          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   J~      q          0    17006    loai_phuongtien 
   TABLE DATA           >   COPY public.loai_phuongtien (id, type_name, type) FROM stdin;
    public          postgres    false    276   u~      9          0    16430    loaixd2 
   TABLE DATA           |   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2, petroleum_type_id) FROM stdin;
    public          postgres    false    220   �~      ;          0    16437    mucgia 
   TABLE DATA           |   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id, inventory_id) FROM stdin;
    public          postgres    false    222   g�      >          0    16445    nguon_nx 
   TABLE DATA           7   COPY public.nguon_nx (id, ten, createtime) FROM stdin;
    public          postgres    false    225   ��      j          0    16964    nguonnx_title 
   TABLE DATA           K   COPY public.nguonnx_title (id, nguonnx_id, title_id, group_id) FROM stdin;
    public          postgres    false    269   ^�      ?          0    16455    nguonnx_tructhuoc 
   TABLE DATA           I   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id) FROM stdin;
    public          postgres    false    226   �      /          0    16395    nhiemvu 
   TABLE DATA           �   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, team_id, assignment_type_id) FROM stdin;
    public          postgres    false    210   (�      A          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   �      m          0    16986    nxt_reporter 
   TABLE DATA           �   COPY public.nxt_reporter (petro_name, petro_title_lv1, petro_title_lv2, title_lv1, title_lv2, title_lv3, title_lv4, petro_title_lv3, petro_title_lv4, xd_id, quarter_id, quantity) FROM stdin;
    public          postgres    false    272   	�      b          0    16890    petroleum_type 
   TABLE DATA           @   COPY public.petroleum_type (id, name, type, r_type) FROM stdin;
    public          postgres    false    261   &�      C          0    16471 
   phuongtien 
   TABLE DATA           �   COPY public.phuongtien (id, name, type, han_muc, dm_tk, dm_md, dm_xm, quantity, status, "timestamp", nguonnx_id, loaiphuongtien_id) FROM stdin;
    public          postgres    false    230   ��      D          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   ۔      e          0    16928    price_status 
   TABLE DATA           0   COPY public.price_status (id, name) FROM stdin;
    public          postgres    false    264   
�      F          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   '�      7          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   ��      h          0    16945    team 
   TABLE DATA           3   COPY public.team (id, name, team_code) FROM stdin;
    public          postgres    false    267   p�      o          0    16992    titles_category 
   TABLE DATA           ?   COPY public.titles_category (id, title_name, type) FROM stdin;
    public          postgres    false    274   �      K          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   �      M          0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   ��      O          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   �      \          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   ��      �           0    0    Inventory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Inventory_id_seq"', 664, true);
          public          postgres    false    262            �           0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 249, true);
          public          postgres    false    250            �           0    0    activated_active_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.activated_active_id_seq', 3, true);
          public          postgres    false    281            �           0    0    assignment_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.assignment_type_id_seq', 2, true);
          public          postgres    false    258            �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 61, true);
          public          postgres    false    252            �           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211            �           0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 16, true);
          public          postgres    false    213            �           0    0    dinhmuc_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dinhmuc_id_seq', 31, true);
          public          postgres    false    279            �           0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215            �           0    0    group_title_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.group_title_id_seq', 2, true);
          public          postgres    false    270            �           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 58247, true);
          public          postgres    false    256            �           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 38359, true);
          public          postgres    false    248            �           0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 735, true);
          public          postgres    false    217            �           0    0    loai_nhiemvu_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.loai_nhiemvu_id_seq', 1, true);
          public          postgres    false    277            �           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219            �           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246            �           0    0    loai_phuongtien_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.loai_phuongtien_id_seq', 7, true);
          public          postgres    false    275            �           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221            �           0    0    mucgia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mucgia_id_seq', 2157, true);
          public          postgres    false    223            �           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 88, true);
          public          postgres    false    224            �           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254            �           0    0    nguonnx_title_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nguonnx_title_id_seq', 41, true);
          public          postgres    false    268            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            �           0    0    petroleum_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.petroleum_type_id_seq', 13, true);
          public          postgres    false    260            �           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232            �           0    0    price_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.price_status_id_seq', 1, false);
          public          postgres    false    265            �           0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234            �           0    0    so_cai_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.so_cai_id_seq', 810, true);
          public          postgres    false    236            �           0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    237            �           0    0    team_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.team_id_seq', 5, true);
          public          postgres    false    266            �           0    0    titles_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.titles_category_id_seq', 14, true);
          public          postgres    false    273            �           0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 813, true);
          public          postgres    false    239            �           0    0    tonkho_tong_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 1068, true);
          public          postgres    false    241            �           0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    243            �           0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 32, true);
          public          postgres    false    244            q           2606    16910    inventory Inventory_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT "Inventory_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.inventory DROP CONSTRAINT "Inventory_pkey";
       public            postgres    false    263            ]           2606    16788    ledgers Ledgers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ledgers
    ADD CONSTRAINT "Ledgers_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ledgers DROP CONSTRAINT "Ledgers_pkey";
       public            postgres    false    251            �           2606    17034 &   activated_active activated_active_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.activated_active
    ADD CONSTRAINT activated_active_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.activated_active DROP CONSTRAINT activated_active_pkey;
       public            postgres    false    282            m           2606    16879 $   assignment_type assignment_type_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.assignment_type
    ADD CONSTRAINT assignment_type_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.assignment_type DROP CONSTRAINT assignment_type_pkey;
       public            postgres    false    259            _           2606    16795    ledgers bill_uni 
   CONSTRAINT     N   ALTER TABLE ONLY public.ledgers
    ADD CONSTRAINT bill_uni UNIQUE (bill_id);
 :   ALTER TABLE ONLY public.ledgers DROP CONSTRAINT bill_uni;
       public            postgres    false    251            a           2606    16803    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    253            c           2606    17004 -   category category_type_title_tructhuoc_id_key 
   CONSTRAINT     |   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_type_title_tructhuoc_id_key UNIQUE (type_title, tructhuoc_id);
 W   ALTER TABLE ONLY public.category DROP CONSTRAINT category_type_title_tructhuoc_id_key;
       public            postgres    false    253    253            )           2606    16538    nhiemvu chi_tiet_nhiemvu_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.nhiemvu
    ADD CONSTRAINT chi_tiet_nhiemvu_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.nhiemvu DROP CONSTRAINT chi_tiet_nhiemvu_pkey;
       public            postgres    false    210            +           2606    16553 $   chitiet_nhiemvu chitiet_nhiemvu_pkey 
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
       public            postgres    false    280            -           2606    16540    dvi_nv dvi_nv_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.dvi_nv
    ADD CONSTRAINT dvi_nv_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.dvi_nv DROP CONSTRAINT dvi_nv_pkey;
       public            postgres    false    214                       2606    16978    group_title group_title_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.group_title
    ADD CONSTRAINT group_title_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.group_title DROP CONSTRAINT group_title_pkey;
       public            postgres    false    271            7           2606    16587 	   mucgia id 
   CONSTRAINT     G   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT id PRIMARY KEY (id);
 3   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT id;
       public            postgres    false    222            i           2606    16856 (   inv_report_detail inv_report_detail_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.inv_report_detail
    ADD CONSTRAINT inv_report_detail_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.inv_report_detail DROP CONSTRAINT inv_report_detail_pkey;
       public            postgres    false    257            k           2606    17002 A   inv_report_detail inv_report_detail_xd_id_quarter_id_title_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.inv_report_detail
    ADD CONSTRAINT inv_report_detail_xd_id_quarter_id_title_id_key UNIQUE (xd_id, quarter_id, title_id);
 k   ALTER TABLE ONLY public.inv_report_detail DROP CONSTRAINT inv_report_detail_xd_id_quarter_id_title_id_key;
       public            postgres    false    257    257    257            Y           2606    16840 ?   inv_report inv_report_petroleum_id_quarter_id_report_header_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.inv_report
    ADD CONSTRAINT inv_report_petroleum_id_quarter_id_report_header_key UNIQUE (petroleum_id, quarter_id, report_header);
 i   ALTER TABLE ONLY public.inv_report DROP CONSTRAINT inv_report_petroleum_id_quarter_id_report_header_key;
       public            postgres    false    249    249    249            [           2606    16780    inv_report inv_report_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.inv_report
    ADD CONSTRAINT inv_report_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.inv_report DROP CONSTRAINT inv_report_pkey;
       public            postgres    false    249            s           2606    16927 +   inventory inventory_petro_id_quarter_id_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_petro_id_quarter_id_key UNIQUE (petro_id, quarter_id);
 U   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_petro_id_quarter_id_key;
       public            postgres    false    263    263            U           2606    16758    ledger_map ledger_map_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.ledger_map
    ADD CONSTRAINT ledger_map_pkey PRIMARY KEY (id, loaixd_id, header_id, quarter_id);
 D   ALTER TABLE ONLY public.ledger_map DROP CONSTRAINT ledger_map_pkey;
       public            postgres    false    245    245    245    245            /           2606    16609    lichsuxnk lichsuxnk_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.lichsuxnk
    ADD CONSTRAINT lichsuxnk_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.lichsuxnk DROP CONSTRAINT lichsuxnk_pkey;
       public            postgres    false    216            �           2606    17020    loai_nhiemvu loai_nhiemvu_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.loai_nhiemvu
    ADD CONSTRAINT loai_nhiemvu_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.loai_nhiemvu DROP CONSTRAINT loai_nhiemvu_pkey;
       public            postgres    false    278            W           2606    16766    loai_phieu loai_phieu_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.loai_phieu
    ADD CONSTRAINT loai_phieu_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.loai_phieu DROP CONSTRAINT loai_phieu_pkey;
       public            postgres    false    247            �           2606    17012 $   loai_phuongtien loai_phuongtien_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.loai_phuongtien
    ADD CONSTRAINT loai_phuongtien_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.loai_phuongtien DROP CONSTRAINT loai_phuongtien_pkey;
       public            postgres    false    276            5           2606    16546    loaixd2 loaixd2_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.loaixd2
    ADD CONSTRAINT loaixd2_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.loaixd2 DROP CONSTRAINT loaixd2_pkey;
       public            postgres    false    220            9           2606    16888 :   mucgia mucgia_quarter_id_item_id_asssign_type_id_price_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT mucgia_quarter_id_item_id_asssign_type_id_price_key UNIQUE (quarter_id, item_id, asssign_type_id, price);
 d   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT mucgia_quarter_id_item_id_asssign_type_id_price_key;
       public            postgres    false    222    222    222    222            ;           2606    16560    nguon_nx nguon_nx_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.nguon_nx
    ADD CONSTRAINT nguon_nx_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.nguon_nx DROP CONSTRAINT nguon_nx_pkey;
       public            postgres    false    225            e           2606    16848 A   tructhuoc_loaiphieu nguonnx_loaiphieu_nguonnx_id_loaiphieu_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.tructhuoc_loaiphieu
    ADD CONSTRAINT nguonnx_loaiphieu_nguonnx_id_loaiphieu_id_key UNIQUE (tructhuoc_id, loaiphieu_id);
 k   ALTER TABLE ONLY public.tructhuoc_loaiphieu DROP CONSTRAINT nguonnx_loaiphieu_nguonnx_id_loaiphieu_id_key;
       public            postgres    false    255    255            g           2606    16846 *   tructhuoc_loaiphieu nguonnx_loaiphieu_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tructhuoc_loaiphieu
    ADD CONSTRAINT nguonnx_loaiphieu_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tructhuoc_loaiphieu DROP CONSTRAINT nguonnx_loaiphieu_pkey;
       public            postgres    false    255            {           2606    16980 3   nguonnx_title nguonnx_title_nguonnx_id_group_id_key 
   CONSTRAINT     ~   ALTER TABLE ONLY public.nguonnx_title
    ADD CONSTRAINT nguonnx_title_nguonnx_id_group_id_key UNIQUE (nguonnx_id, group_id);
 ]   ALTER TABLE ONLY public.nguonnx_title DROP CONSTRAINT nguonnx_title_nguonnx_id_group_id_key;
       public            postgres    false    269    269            }           2606    16970     nguonnx_title nguonnx_title_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.nguonnx_title
    ADD CONSTRAINT nguonnx_title_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.nguonnx_title DROP CONSTRAINT nguonnx_title_pkey;
       public            postgres    false    269            ?           2606    16957 ?   nguonnx_tructhuoc nguonnx_tructhuoc_nguonnx_id_tructhuoc_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.nguonnx_tructhuoc
    ADD CONSTRAINT nguonnx_tructhuoc_nguonnx_id_tructhuoc_id_key UNIQUE (nguonnx_id, tructhuoc_id);
 i   ALTER TABLE ONLY public.nguonnx_tructhuoc DROP CONSTRAINT nguonnx_tructhuoc_nguonnx_id_tructhuoc_id_key;
       public            postgres    false    226    226            A           2606    16647    nhiemvu_tcn nhiemvu_tcn_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.nhiemvu_tcn
    ADD CONSTRAINT nhiemvu_tcn_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.nhiemvu_tcn DROP CONSTRAINT nhiemvu_tcn_pkey;
       public            postgres    false    228            �           2606    17000    nxt_reporter nxt_reporter_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.nxt_reporter
    ADD CONSTRAINT nxt_reporter_pkey PRIMARY KEY (quarter_id, xd_id);
 H   ALTER TABLE ONLY public.nxt_reporter DROP CONSTRAINT nxt_reporter_pkey;
       public            postgres    false    272    272            o           2606    16896 "   petroleum_type petroleum_type_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.petroleum_type
    ADD CONSTRAINT petroleum_type_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.petroleum_type DROP CONSTRAINT petroleum_type_pkey;
       public            postgres    false    261            E           2606    16575 *   phuongtien_nhiemvu phuongtien_nhiemvu_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.phuongtien_nhiemvu
    ADD CONSTRAINT phuongtien_nhiemvu_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.phuongtien_nhiemvu DROP CONSTRAINT phuongtien_nhiemvu_pkey;
       public            postgres    false    231            C           2606    16565    phuongtien phuongtien_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.phuongtien
    ADD CONSTRAINT phuongtien_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.phuongtien DROP CONSTRAINT phuongtien_pkey;
       public            postgres    false    230            u           2606    16938    price_status price_status_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.price_status
    ADD CONSTRAINT price_status_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.price_status DROP CONSTRAINT price_status_pkey;
       public            postgres    false    264            G           2606    16567    quarter quarter_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.quarter
    ADD CONSTRAINT quarter_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.quarter DROP CONSTRAINT quarter_pkey;
       public            postgres    false    233            I           2606    16544    ledger_details so_cai_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT so_cai_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT so_cai_pkey;
       public            postgres    false    235            1           2606    16815    tcn tcn_name_key 
   CONSTRAINT     K   ALTER TABLE ONLY public.tcn
    ADD CONSTRAINT tcn_name_key UNIQUE (name);
 :   ALTER TABLE ONLY public.tcn DROP CONSTRAINT tcn_name_key;
       public            postgres    false    218            3           2606    16569    tcn tcn_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.tcn
    ADD CONSTRAINT tcn_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.tcn DROP CONSTRAINT tcn_pkey;
       public            postgres    false    218            w           2606    16951    team team_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public            postgres    false    267            y           2606    16953    team team_team_code_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_team_code_key UNIQUE (team_code);
 A   ALTER TABLE ONLY public.team DROP CONSTRAINT team_team_code_key;
       public            postgres    false    267            =           2606    16807    nguon_nx ten_uni 
   CONSTRAINT     J   ALTER TABLE ONLY public.nguon_nx
    ADD CONSTRAINT ten_uni UNIQUE (ten);
 :   ALTER TABLE ONLY public.nguon_nx DROP CONSTRAINT ten_uni;
       public            postgres    false    225            �           2606    16998 $   titles_category titles_category_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.titles_category
    ADD CONSTRAINT titles_category_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.titles_category DROP CONSTRAINT titles_category_pkey;
       public            postgres    false    274            K           2606    16542    tonkho tonkho_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tonkho
    ADD CONSTRAINT tonkho_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tonkho DROP CONSTRAINT tonkho_pkey;
       public            postgres    false    238            M           2606    16866 0   tonkho tonkho_quarter_id_loaixd_id_mucgia_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.tonkho
    ADD CONSTRAINT tonkho_quarter_id_loaixd_id_mucgia_id_key UNIQUE (quarter_id, loaixd_id, mucgia_id);
 Z   ALTER TABLE ONLY public.tonkho DROP CONSTRAINT tonkho_quarter_id_loaixd_id_mucgia_id_key;
       public            postgres    false    238    238    238            O           2606    16862 ,   tonkho_tong tonkho_tong_id_quarter_id_xd_key 
   CONSTRAINT     t   ALTER TABLE ONLY public.tonkho_tong
    ADD CONSTRAINT tonkho_tong_id_quarter_id_xd_key UNIQUE (id_quarter, id_xd);
 V   ALTER TABLE ONLY public.tonkho_tong DROP CONSTRAINT tonkho_tong_id_quarter_id_xd_key;
       public            postgres    false    240    240            Q           2606    16571    tonkho_tong tonkho_tong_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tonkho_tong
    ADD CONSTRAINT tonkho_tong_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tonkho_tong DROP CONSTRAINT tonkho_tong_pkey;
       public            postgres    false    240            S           2606    16573    tructhuoc tructhuoc_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tructhuoc
    ADD CONSTRAINT tructhuoc_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tructhuoc DROP CONSTRAINT tructhuoc_pkey;
       public            postgres    false    242            �           2606    17037 "   dinhmuc dinhmuc_phuongtien_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dinhmuc
    ADD CONSTRAINT dinhmuc_phuongtien_id_fkey FOREIGN KEY (phuongtien_id) REFERENCES public.phuongtien(id) NOT VALID;
 L   ALTER TABLE ONLY public.dinhmuc DROP CONSTRAINT dinhmuc_phuongtien_id_fkey;
       public          postgres    false    230    280    3395            �           2606    16598    dvi_nv dvi_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.dvi_nv
    ADD CONSTRAINT dvi_fkey FOREIGN KEY (dv_id) REFERENCES public.nguon_nx(id) NOT VALID;
 9   ALTER TABLE ONLY public.dvi_nv DROP CONSTRAINT dvi_fkey;
       public          postgres    false    225    214    3387            �           2606    16911    mucgia inventory    FK CONSTRAINT     �   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT inventory FOREIGN KEY (inventory_id) REFERENCES public.inventory(id) NOT VALID;
 :   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT inventory;
       public          postgres    false    263    3441    222            �           2606    16916 !   inventory inventory_petro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_petro_id_fkey FOREIGN KEY (petro_id) REFERENCES public.loaixd2(id) NOT VALID;
 K   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_petro_id_fkey;
       public          postgres    false    263    220    3381            �           2606    16921 #   inventory inventory_quarter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_quarter_id_fkey FOREIGN KEY (quarter_id) REFERENCES public.quarter(id) NOT VALID;
 M   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_quarter_id_fkey;
       public          postgres    false    233    3399    263            �           2606    16789    ledger_details ledger_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT ledger_fkey FOREIGN KEY (ledger_id) REFERENCES public.ledgers(id) NOT VALID;
 D   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT ledger_fkey;
       public          postgres    false    235    251    3421            �           2606    16898 &   loaixd2 loaixd2_petroleum_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.loaixd2
    ADD CONSTRAINT loaixd2_petroleum_type_id_fkey FOREIGN KEY (petroleum_type_id) REFERENCES public.petroleum_type(id) NOT VALID;
 P   ALTER TABLE ONLY public.loaixd2 DROP CONSTRAINT loaixd2_petroleum_type_id_fkey;
       public          postgres    false    220    261    3439            �           2606    16547    ledger_details loaixd_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT loaixd_fkey FOREIGN KEY (loaixd_id) REFERENCES public.loaixd2(id) NOT VALID;
 D   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT loaixd_fkey;
       public          postgres    false    3381    235    220            �           2606    16593    mucgia loaixd_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT loaixd_id FOREIGN KEY (item_id) REFERENCES public.loaixd2(id) NOT VALID;
 :   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT loaixd_id;
       public          postgres    false    220    3381    222            �           2606    16882 "   mucgia mucgia_asssign_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT mucgia_asssign_type_id_fkey FOREIGN KEY (asssign_type_id) REFERENCES public.assignment_type(id) NOT VALID;
 L   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT mucgia_asssign_type_id_fkey;
       public          postgres    false    259    3437    222            �           2606    16670    phuongtien nguonnx_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phuongtien
    ADD CONSTRAINT nguonnx_fkey FOREIGN KEY (nguonnx_id) REFERENCES public.nguon_nx(id) NOT VALID;
 A   ALTER TABLE ONLY public.phuongtien DROP CONSTRAINT nguonnx_fkey;
       public          postgres    false    3387    225    230            �           2606    16981 )   nguonnx_title nguonnx_title_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nguonnx_title
    ADD CONSTRAINT nguonnx_title_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.group_title(id) NOT VALID;
 S   ALTER TABLE ONLY public.nguonnx_title DROP CONSTRAINT nguonnx_title_group_id_fkey;
       public          postgres    false    269    3455    271            �           2606    16648    nhiemvu_tcn nhiemvu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nhiemvu_tcn
    ADD CONSTRAINT nhiemvu_fkey FOREIGN KEY (nvu_id) REFERENCES public.nhiemvu(id) NOT VALID;
 B   ALTER TABLE ONLY public.nhiemvu_tcn DROP CONSTRAINT nhiemvu_fkey;
       public          postgres    false    210    3369    228            �           2606    16554    chitiet_nhiemvu nhiemvu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitiet_nhiemvu
    ADD CONSTRAINT nhiemvu_id FOREIGN KEY (nhiemvu_id) REFERENCES public.nhiemvu(id) NOT VALID;
 D   ALTER TABLE ONLY public.chitiet_nhiemvu DROP CONSTRAINT nhiemvu_id;
       public          postgres    false    212    3369    210            �           2606    16581    phuongtien_nhiemvu nhiemvu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.phuongtien_nhiemvu
    ADD CONSTRAINT nhiemvu_id FOREIGN KEY (nvu_id) REFERENCES public.nhiemvu(id) NOT VALID;
 G   ALTER TABLE ONLY public.phuongtien_nhiemvu DROP CONSTRAINT nhiemvu_id;
       public          postgres    false    3369    231    210            �           2606    16958    nhiemvu nhiemvu_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nhiemvu
    ADD CONSTRAINT nhiemvu_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team(id) NOT VALID;
 F   ALTER TABLE ONLY public.nhiemvu DROP CONSTRAINT nhiemvu_team_id_fkey;
       public          postgres    false    210    267    3447            �           2606    16603    dvi_nv nvu_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.dvi_nv
    ADD CONSTRAINT nvu_fkey FOREIGN KEY (nv_id) REFERENCES public.nhiemvu(id) NOT VALID;
 9   ALTER TABLE ONLY public.dvi_nv DROP CONSTRAINT nvu_fkey;
       public          postgres    false    210    214    3369            �           2606    16576     phuongtien_nhiemvu phuongtien_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.phuongtien_nhiemvu
    ADD CONSTRAINT phuongtien_id FOREIGN KEY (phuongtien_id) REFERENCES public.phuongtien(id) NOT VALID;
 J   ALTER TABLE ONLY public.phuongtien_nhiemvu DROP CONSTRAINT phuongtien_id;
       public          postgres    false    230    3395    231            �           2606    16680    ledger_details quarter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT quarter_fkey FOREIGN KEY (quarter_id) REFERENCES public.quarter(id) NOT VALID;
 E   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT quarter_fkey;
       public          postgres    false    3399    235    233            �           2606    16588    mucgia quarter_id    FK CONSTRAINT        ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT quarter_id FOREIGN KEY (quarter_id) REFERENCES public.quarter(id) NOT VALID;
 ;   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT quarter_id;
       public          postgres    false    3399    222    233            �           2606    16653    nhiemvu_tcn tcn_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.nhiemvu_tcn
    ADD CONSTRAINT tcn_fkey FOREIGN KEY (tcn_id) REFERENCES public.tcn(id) NOT VALID;
 >   ALTER TABLE ONLY public.nhiemvu_tcn DROP CONSTRAINT tcn_fkey;
       public          postgres    false    3379    228    218            �           2606    16867    tcn tcn_loaiphieu_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tcn
    ADD CONSTRAINT tcn_loaiphieu_id_fkey FOREIGN KEY (loaiphieu_id) REFERENCES public.loai_phieu(id) NOT VALID;
 C   ALTER TABLE ONLY public.tcn DROP CONSTRAINT tcn_loaiphieu_id_fkey;
       public          postgres    false    3415    247    218            w   %   x�3���wt�s�2�2�9�C<�ܹb���� �V�      `      x�3�vv�2��s������� '��      Z   N  x��R�N�@=�~�|�Zh9V�i�H�tm8x�Di�ƔD?�1�ك����G�O�e7t7��	03;��oֱ�>���>�	+���I�C�'�ؽ����
V~� �S�8�6��I=�S��W�Y�ʪ�wI�4��@<�ČUo)��/��Ap%��ͫ�ؗ#�V���}ɵ �'9�K���;|���s>�K&���7��L�B�"b�b�����@d� �&�e(q��pU�pv�[�76+�#��;|�Ϻ����˃��x�e��=��rLX�3GO��7^��{*����u�,�v��s\�j�*���Ζ�!�	A	}sF���$h      1   �   x�e��N�@�뙧�0��8�k�+H4h��X� e�1�	,={�\ccb���X^d�䖽B����2����$mI�+z0�}�!nL�St۴�+�gB�JN!8�]6��P8�%//S�N[mZ'n����2�lG����8��o���4}W�r��^��]Ku�������g���CH�����"��_��4nM���#RH��a���]QV�s"8��W��M��U�NT���23<Q�ߔ���C�=��mp      u   �   x�M�K!C��a*b �]z�s4�Gj�7��KbO�e;��A2K2E&�$K��$p�p�8����#3�X���z!Nb"3�IP����r��wǊ+��
}�+��Iy�2���Cc��l:C�ѕ�Q(�Fk����x��2FoH�Y;���@o�:/zC��'Cs�g����S�?�z��U	XC�����[��淋�]uIF      3      x������ � �      l   R   x�3�LJ�/�<��T�$���@25_!/#����\�2�gII|^�P��_��]k*J�ZZ�P�p��<�����=... H] �      V      x������ � �      ^      x�ŝK�]�q��W��n(@���cI�Ri����fČŁG3Ɂ%�/��d�E�A`�@A�2��=�Mr��t���9��O�\٦84QU�������jm������o?���y��ͧ�߾~v����w���6O���7۷?m_��)�����ۿ�o�N߽���F��Vï����J��͓wo��|�j��߯��^^����	~t�矶����������ͯ�?t����K�6���������ї۟<��~�b�χ����ݟ��ϗ�߼{�-������/?���%n|�|_l��{3\��}d9�<�����nyxcw������.����{�m�W�'/.���k��C��<h6���L�IZ�S�n��{p6�]��O?��_{�&L��Q��b{�&,�!���' �ԶU�qH>��i���l�AXK~dP��~xy�}��φ��.�}ǂ��aD4�j�Q-L�DJ�Q)��|�h�����~��y�����w'g�_�Y��`��lQ�L�I4~��ͅ/�
seYlj�K��-�/�֒�TV���j�ȓ�q��>-�	Z`���(-x��|A���%kM6ԑ�,�	��ڱ.8_���pc�%�wFi��3�	�,�yyY��Kd�_m���g��r5U��_o��%��ėD�Q<�%��3|iK~z�0��L�$��_���n��Ԩ`E�l���,�]�{��i{�4U��*��DvG�Q������s�9��	d�k��2�J�S~5�O�l��l�}����o��`7��U�F׿`
jWn�V���d�⏗ےR��W��PM�TG�a�\�o�퀃>\�\�V��CDu�lt�z,�jZ�â���K�Oq�b*4\RHirU�IdX���m��d�s]�l�T����Fff�[{�Z�g��F��wf�p�w)k5�����W�h���/��t8����;�g'�����]O�u�A��KI�:L�jnX�I�$wG�A@���S�Ð�^e,���M�t�f�Y.�{�`p��n\�ۅ��$��]\Ǵ�O�u�ή��̈́+��''���O'+��9Q �T�B�H�bz�C�x)Pm�l�^Kh�b.�7��ZNȩb>�����@Qg������@L|*&j]UAWO�L��V�Uq��!��� ���9�N]UPW���"V>��'�����'�ذ:�j����F��w w�'���`]d�'�t�fXGB��l�3,��Q��t�<��Ag*%y�CX��$���iL��
�]��%{AԄKW3��.�Q��(��u�KH,�f���{a��<Q��si��yVs�XX�2O��ti��y"���y���D��Z>��Z��(�<<�0�5AY�+(����(�}h�P�Yzm\�<N�q4��Ua��ێaNe��mN��!�I�iĐ���k�0]��[8�W����m]�5MSxB飧nB֍]Ӆ�HF����3��w�4hy \xh������Ŧ��9�՜���"�Dr�u�E�Q26OQ�Y,┊ͷ�o�7���Z"��M���;,�,n�CX_�Y��T��S�Y��T���6�N��Z�P��$c֕j+����:�b������%A��V�6q�^G�v��>)u(����l�3�2��Q T��jx�BSj���vYu(�FN�k��ըt)ߝ�:W���X���դi�t��:PX�g�z�u �&O�V�u��6ϥuR�Pjm�E��֡�Z�y��g��/�}�X����ų����?|x�=.�?η�����O�Qu��t]F�� ��d�&��|X��Κ�>�K��a���gA��ϜU*t���$�eΊb]ot��IӝQ��;�������  9P���;��R���s��K.ׄ*�oX}�S.
O���G.W�V��B��ZC����ۏ�m a���jW]W5z]�S�h{.�0�A[]*��p�'���,�wo{�S-ݴ��ʙ�٩�A5�͕T��2�8髣�*��`�t��M�x�� �U!�V�?�w�^/8��԰��)�m	4z{�m�q4z��]�ݪ2h�R��㝑�Bhw3��O)�{5��!�C��W�W�B�X�I�!x%�YI%�!x�YI.VTD�&Z��N��_KkVR���Qk��Ú$�/d�]�\Un�x�w�z��O�yL[{�{��X9�k.�&<�&0�W�\�"��"����b�K1=L8xYEA|7���mv�	��.����M��>��u��L�Q� �3�b�r�`�WgZ�r��gP_k!��
��+:-F�LF/|S��(�)��/�p��㗯^\�~���*�:����坖��l����6-����!×oZ����9���R+;���R�y|S���5�=�4���~x�������H) ���,'�
 �+>-}�6)���Ve� �<GҪ,!+�/�*k<�ݣVeՠ���Ԫ�ӷs����(-	t����P�r��[;|j���)&W���	(��<4�|��f������O$m���P��Iוx\�GNV��Au?m����<rD\ax�0��;ZUYx�,��(��*���D���$<Tê(CZAx� t��+*������b�P1h�]��R�qʯ�<T&�u���ce`�,��<VFm>�������_DKl�����s=[�hcR?k�[%v���Y�=$�q��2Db�bm|�#{k�R_kH"�[��|�rg� +b�{ቄ��ʉx(�"�ϲ��.�SEB���?�YJ�H��m�tl�ЇJ�L��"�?���PFb�km3 ���n��1�d�U�V���ٴ�a�['6��~{yv��\=��,���N�x�Ml������,6�NO��&�$�CWlY���=��k�bO����ҵ�e���V=��T�o���)R�{���� *tP�>IyR�Bu퓜'�)tF�>I�(�n��'YORl�}���V��;���gG�Y�����G���3q�E�cH#_�����bv��N{|~|~�=�x)����R�����01�n5�� �d����SSGs<:�0=ᒘ�x��af��*��Y���W8o�+:���|��|X�䇓�J�% h`8��NZ�9�O�	aQ ������E7|JO��<���)%�����旿���ˣ�[��"�bH�!��JG]W��ō`����~�F�Y�ч�"&Zla?h#d�X���9[�*lm��4�5@J���~�͠��S��	�A�+�
$A'h#rA ���62WBA�*#siX h7md�	d��v�F�j@	l7md*��OŎ^F�
r;�wح��ka�5�<`_	b�b�m#m���Y��F���j�bWo#������
P,&Z�bcE�x���<�(�9[^ln��4�5�W���~�Í�S�����+�
�B�p�rA /4	7*WB�B3J�riX^�Dnt�	d�U�{���A�=a,?���V�hF��GYc`cw�S��O����ЩX��c+]3�������'��|����x���wo~~=���x¶Rf�h��hR�<�
2�����~PGmg쯈V�KG���h�+�'�*ˌ6oA/�� �V�3�lC�1e��qC�aDd���h
	"�刪J�&�!�M��Z��pH(�JCU�Ѷ ��T*��&G��0�Hʍ&ÐA�:,�m��)Յ
��
�2��ʡ�RX'�Wg�Z�A��M�&v�|��~�/�$cB3ɑ/
H�p�HNx�]5�QƄ����"%�1����=*qی	&G���wϘ�Q�`�?v�eh!	��L�KcB��<&jd��^M�YcB{ɑijl��r��'�1.�u��6��A	O�uc\�����7Ƈd���pLhϸ��n�1�����n�1��儇�'���5�n�1����9�n�1�	���JH)ܘcBϿ����R��X��l�1�3`1�lұ,׏U�R�Qǲ\.�!�B*-in�j���=Ű�:���n<�,�DR+ؔdY.��@�`c�e�*�X��$�r=���J��b��;Y���,K5���B�F%����������W�P��f%�|�����KvXS�'�b7-Y�g쯈    ?,�a�&#E^���%�e⍾�L�����"71�!�ʶ��%�fl{olf�ܖ#�.?`C��V�+>`S��4P���ɊTh����HEb�a���:P79Y��1�q���,�Vq7;Y���k�� Ļ.V/^���a�+v��]�:���7p���u��\R�?���Q�w&Y������B$+�9�qo���蓞ظ9�JQ���۸;��as���-U�������sqQ�6(YY���<�JV�e���E�ʲ�в�(YY�u��MJV�����Kɪ����)YU!��|��W%�5���{V������ϷN�e��M��ZV�
�ѴV@W&2>	�
�A<��4�%L�����`}䠒��$h9(�w�W��� ��ZCs�X]���� ���$$��3� �e[a��81��X�d��83+P�l;�O�)Z�޲-X�qn.B�bA�*����h��R0�h����"L�ᕫ��K�7s�2c������"!�j�F�u@�F&k��v7�p�5&���%���;�O��Bd���"	��Ɨ�5� ���-G`o���	F`;��b<j�@�F�C��cm�=�}>�Fi�Z�q��QQ�>nE����޽y��|�3��_����_������ۗo_��q�;0���E'7W��$(����46�kr��ۄ�ިÊ�}�6�%�mvdx�u��Ѣ7;
z���m�(�V� ̻�
f;��ޝ�f�$�5Ɨ�Y��Vg!)}���h�����D_P��%�ę>+�>���8�[�V�!3|��3�h^@!K|���h�K�%͸�o����̚Uނ������gm?|tDM<��z_�k6��s�X�h5<�8h������u0/�a��(�̜��vLe�V���vLO��: �1���T�h��T@�`���b\��gktt#��$;�X;��;�����$����i�?��}��HZf�؎�HXj�؎���܀�ϕ����ï�5������Oq?�|�x���S~�׎����������b��6?x����Oל�؎������v��Y�=̾`��Vxض<�E\x���N��ת��vBNY���b���:�n'�D<�E��D�+j8�ۉLHa�r;�� !k�pn'2AX�Z8���L	�H�u;�i %h�n']2�SO!uR�g�*�An�M�q�w'/O��?#&-Wv�5�x�����j5o�\t'킃�+���J�EK]<�I_pG^<�)Vp���x�S|�xg�_%2��!0����p�S%�X�a8ݩ�H��NAw���4�3Н*��
 �	�N�t���x��S%���2�~�t.�!�C2�\Un�x�ө����vEN�"B��7X;���[ll��t�!$ﲱ/�өp��ml��t���^�"9�J������TFV��ƞHΤ���7��əT6n�}7tDr��+���)�)���3%� �3�Cr�$+�ݐ�)����3%���3�Br&�����#�M�*�glK�,�<����'ǃˣZ6k��,���3��A9+rOkɬ���r�~o�aXU)R.k��ν�bYc(gM�m�5v�r�N���l]j{/L���Y?%�5�r���D���ɹ�4PYC�'�
�@�c]��+�D?�5�Dr��T4��ɹ�.�Xc?$�2Q��5vCr.Ӓ[A��^Hι��+��u1o�yn�����ɃO�>��s��G�EI���_���^j-��|�rW�a��Hǥ���:?a��L�T��S�'��W���cz��`����+�՛�*��<U�@,�K�<U�B.�4ߋG�T��Iӻ�4���u�ĳ4���rႋ4ыg�T���d�����-<��]wM��(�d)�S�]�-��Lp6�	1Ԏ�����`O"�l䆎�؇�3��XGH�=䙟��s�k��q!$$��'~(	�}�<��~Bb/!��՞X!=W��=zy�˱��yn���%$��<Mo:BB? ����"$� �<M�^BB�/��!$���"�m2Bb/����	�=}������,H�2���������x�k\�������.ֱ;�xa�wE��A!$#v����n(���~�d��~.b�/y�hO��E)�F�@E���,�BE��e��L�N@^&IM�D��e��TD��@^&��D��e��4<�A^&M�C���J�N@a� �xm���
j��8|����>��	��J�9i�A�!�J��C"6�Jϙ���dCC�ElX�MQ�;y�RG�h�F^�)�=�5�������k> ����Y��"�y�%:$�ߑ�Y�Say��|/(a'��Y�Ӡ�*y�e9,���׎.i:��|{�볦�[��A����۟N_m�r������<�aL�A�2Wt��&Sވ��u��FS��%�]ч�7�8L�ņS��3J�b�)oL�Y?N��7v�tOԀT�r�X�T������
M��-hD?^���EA�C,4��T���T����Д�ۢ&��Sy[T2�bs*oR ��k�b�*o
r��&Uކ������������۳wo��ٴ�P孯�Mg���\�R/����d��9�}q�Yw"�ʣTj=��v2�T{�J�� N���ǦT��:=e�+^ �3�]�#R*Áh�D4u�Tz��2(�Ri&K��CPjڍ��|��'�NQ}���O*���Y�/sR��B��,߫7�u�Wt�S8Y�6X�>{V������勯/�O�]��	��}�<}g-���Y�	[-yo�=E��)�ԻO���3�A������pWhM�Tg��̛	�����>��7��ou]�S�7xl�
�mq� v��&m�r��4$�H/G���>�(��9��醟V��4����`p5�=��SG.8�������A|N��g�+d�Ӆ���������(��	-YHa��i-Y��3s���ͽ�/����m�����_��
��1tc|�_-��_f�W/�����V{h�Xn~�H���������C,6���,x�����B�X�S8;���51Q���ż~���ż\P ��ż^���H�y�hǴL�y�Xj���ZA�j���sBq��vk9�/��v�k-[)���cT{D���~Zf�#����Ӌh�����zc� �����#����E�e�X�n�W�="Y�E�m1���|�(��bŗ����i]hG��i�����iX�^�UӂЎ]�U�J�����5� �q���NQ��jJ7H1��:��p���K���ռ�OÌ���b�O'fC�jYe�1�0�ZM�fC�j=���!f���ՁY���.Zn�0�݄�Ĭa�Y��!��a�Y3�͘50k�e� ��fʹ�Ƭa�Y3-͘50k��`%fC̚iX�Y��fJ ���!f͔nPb�0Ĭ	�Qp)�&�+G�_g�e�8Bղ�|/K9���9������"rr$���`r�U��Nr��S�"<Z�S*r���aP��m�����@�%+�8��eٺ�x�粴mй,_��#�\��X�5�蒠.i�t}��	�����U�A��_����)
d��M^Z�N Ҝ���K6�ds��vc�a�=��	���hp'w^Lxꡞ@�y�`�-^��WE�w�@�z>

@��Ҁv"
 ��Jy
0
 �����|�G?���=�gSY����i�1��Є>H��r��);��NY#H
��wA:�ܾ���h�	����A��A�����2� f����haz]a8HH	�'>wBI��8g��>B���$�6�e@#�"5y�T���@�d @}�G��nga�z4�+$0Cϣ�C!��0t<�R�~��9��{���K�<��Y��)�$�NdO
:�����3O�L+D��˦[fJ!܄��ŚB�	=e�1B�A]<	��Lرy�)��pc�=�R�/�K��"pI���Y
�%y!
X)�����S
0%�$� �@�(ףI�d���PR %��Z)đ�2� D
A$�"o�BI Q  _��{|Sl3�m`Ё=�yצ?��o�!� R"6ދ �Rr�dc�a�J��C1�t�DA�L�EQ�l�\[t #����Gp�|1
 i �N2�I���Ĥ��(�$3�cI�t���`� &���Z4iD�N�� N�բoF�F<i[��{�}� Ɨ�t��nLL�6��p���5�N �6]@S��������`c�a���7_u8e��0m��k�u�QV��N�6_:~r� )�k�����#=`r9�B�9Qr�EHee~��%X�Q֜Y�Lnl�(��\�0d�t�O�\�V���p�ȊEV��2����
�a���Y�٩�1���U��#���,h�c>�.�n���nl�>�c������9]<	|��w|l�>�9�;16�lÝ,k����S�@3�t!
�@�l��{�.JB
�@�,\h��]�����.�Gy�>ز��(	��=Z�4��ؔ�{Y��{|�7������Q��8�]�^�o�!�½���"�po�M6F	s�! ��N���h@��Rv-v#=(��(�B�h�-� #���ܝ�ڟ&�AP 	���dj;����`IbR@	:��d�z,A��m�,,�͵h�&%�%YI '�J"8�Z����6$���U���/7	�r0��$��n#��*�-�=FW��^Fag�����8a&M:
$��."�����w��.���)�"�����J��ޝ�
���*�b��� B�9��*�"D�����B�9��V��C�4Y�q�>�H�t-��Çi~ �z��3K����z���	b'����0rx�������}����I��vɗ��}U���.}�Pe.���S暢�&Utً7T���c��6T)+��x�QC�)���%S-Q��CSd3�D �B K2�8����?b����n����,G7��B��@�^��B���rU�ss-TM|X�*ʶ��,Ô�E}FPL��[��nN/�ä�|������_�n�8�?���g{�}����۟�A=��O���Z3�wt���������K)ܗb?qI�Jf���ǟ=>|����� 	B�c���(�{g��g�Ǉ�l����AM���"����'������Ʀ����F�;z~��/�۳�wo�x���j��}�)������&��=��(�;eu�oVF�C���E�]�V&v����K6�^\������ác3)�q��u��_m?9yu�V���V#DA�|��fh��H��;��wt���~��ȋ�U4��UO��ջ�CO�N���`(��>&��?�����F�      d   �  x��V�n� <���� �۪꥕��������4��c2��c�F�Q}e[���Ϗ�4J�1�T�p��}�M� ��0�8���V���^��w�h�@ ����@�favG`����"A,�։�B<!��x�0����b(1�3��10��9َ�0�P ":K��B�G5��ϯ������������ S�� T[E}�&��@Hww_� M�r��&�,=��BsF�10����Q��AV��O�MH&;�_�!���s"��Q�&����\մA�X�S�Y��K&����B6}�����S��L��݂�P����#`y��Y�����󀳐�/�W5��-U#1P�f�}w��y�3)�L�,�g!��%�=J���Ő|��PV����xw릻�	���Q�/������׃�zP��٭���q��TK�      H   q  x���Mo���Ϗ?/Z�"vfߟ�,Q�X�c%�!%�c��:2Z�~���C�A�E{ȥ�QF���Ig�|�%�K.�Բ$Z/�����wfv��훫�l������ӣ������������G������P�����͛>�����ꫛ�������bӼ�Cp�p#�6j��{�.*c`cQ��lt�V8�����[�
��V`-�T�o`#o���s�}zt�i���Ͽ���(��=M8��m�u)�6����N��"�;*�k�Q=�p�F�� x�7F{o�8z�8�q{��p�V�Zh�"�c�,�ܼ�����`
qƾ&���ʭ18�1t��8V�˞�����'��{p�'�g��hć⤷>&�G߲h7t��\��3�j�$���5g�czY}p�dO@!����X�f39���L���/cʨ�G�gR=�jI�w9%���>?}N\�W:z]\��k�famF�\���m5��z�p�$tk	LL��`�`^I2t�`����Z0���!��
2��R��\J�9唋V�"���x|� ���U������%91�t�4}W�shBHa�#e]�0��v`_^���:xvs���}����&�,� -�Si	\�y�XdR[0�W�82�L���.~~(/�XU��H��F����@MX�?�C��F��R8M�߫1��&r֩�2eD���_�xvY���z������0�+�k����H��Z&JF8E�2�r+M�$
B������5��(�>���W�����o�+O���6J���2�dVsD%�%�m�F`8 �&��_HV�vW�K��)T�D��zp�#e�����w�!"e�z);Wn��vV�O��J���7g�M��y�A��H��1���L>*8J��L崺�)�~KV���d�DY#�4���By�u*����JK��r�������	*�+ Uǟ<8��:<&2�D�2�'�v�X���F���LQJQBFI�Y�t��� ��#�`|f̤}��|"?
0��͙�0�x��]�V#�IJ�(��6t�"���
ʇl-%D ��}��O^CD�D�eF6Q�ƕ�P0��ɢO���gׯ/���ڜa�b��@&�#��8y���\��l��὇ĥ#_��u����Tm 5�ige3���lh\=I'�Z�zUP�R�td(��;���� �m�K�%*�[�5Pbҥ.��!_��J����g�[�G��H@7�Dk�5�Rb+E��P��e��*hT�R7S�^9��Vt��	��	7�f�Z׆RNb�h� m"z�X㌜d�5W�����R.�Q���9�H���!��\���;��Ѡ��b�m�y�[�&+�tcE�x��S���3(Л���GH��.CI-O�,�.9z�H+�I� ���b(�H|2U	T�n������ G�T:�4���R(#@$�q�j�b�嚴cC�Cل�i.��K��&K��+�J�����
����N�̴d�`w.��P���[�����h�����N�Z,iy�i��9��\	Ba�/3w��9$?�BgA�.C�<I��Pm�%ی "�EU+K�M�9[��6��஥�G�>QX������)��\K&ң���4���<�D�U���$nK:���8&�}���H:!Y���BK���.T�eE
���]=�tyk�����P	*6(}�$�J���,�9s��ŋ��/(} %�<���I���k4�_�3ۈ
6
�QY�T��E�8��m�.$�?�?�n=~y����w�ho�5�N�`��V�Z8ާ��[� ���5���au| Lg��H�n�ݍCUp���%�Q�����݁A��Ե⽳�p�C���\ht�x�ֲ&�R��A���[����i�I�S��tZ�y��xw{�<�;0;��u��T�F�-Z� Z/S4�u��e�(M���v$�6JA�ڡ��e2%y���2(��t����$h&y�2���CG�V�(c�zX�	r9��ӯ/_\|y��m����iE�G�w�D��Б�7��.G��U]�4�yF�)%t��(��::������Euv�Ľ��$���(E��`���a v���w�o�~w>^W#�n���eB���y�C�β�d2�����ߖ�9��X>U	PN$~&�fb�-*U�9) m�6D�ԘC�d%��~Ѱ�R���p�q4*9�&+C�d�r����uxzA�������yI�Q�,��L�L���gP��ϤTFhW{c=���j�j2rS@5�Q���0�0aҼ��*�K���][}u��U��;��Q��=0��D7�~��]c��q��YJ&�"We˯6<�煣�<���TeLc9_�Z���|%e��W-"��\����|�/2YŎc����oQ���н�B4�ȍ[�u^�m*�KXدT�N�QYB�/N�	��W��RB!&�g'+�'B�w��?ճ��T{��auR?~����;'�Az��Z2h`��=�c��^�%�ERvI���{OM�,ln�h��: �s$ȸϽ�}��z������O/��S�Q�/pB�c�l��x�Z�ZS]��6ɞB��Gӕi�}l�#|��`Q�%�C��|,�5��[��V��Q��ZS��SN�DYR8�8��$�ڜ8p+U-�4
F���s��gD�j�]1��qZ�Pt�Z�LBń���.����HA�{�^��~@�
��&�fVD�"�@��	�Cu���3eX�PwN���u9�ks��N�$}�i�X��]9JnQ��� ��hw1Q�p�~p�ġ{�|rT}v��c�`"Ƒ��g��6���󤧷�k� ���;>�����B+�d�	!�����(7�B��@�w"���p_�hZy�	�����Ӟi��7n4��wL�}�����/g��fȴ[y$�2M��"�%َy���5<<blKx���Z��#��ϲ��g�����_��g�kz�V$�q�بn}x��d�m?�IwL��3ͭ�����y�{���);��,L�h>�����aV�v>L�����%+���O��-����	}ݢ��Xp�g<N'Z��<��.�K�A���m+9�$�'��B��LPF,ṂU,�ڤ�e�2)n2�����\zIǢԻf�+2�
�ך�U8a�lӵf�\D(Ao��ٚ`��/��p��H�]H�Zs�Y�tY0��M �I�EͰ(( ��R����(Z��+�w9d�P�������x��u3���dk�MD��Ħ{����_N����K�������~^��9e��:�â����F@�or[ak�7�@�
@Aw)�������H�o�D��Lmh����G&j��fHc<�B�K���-�N#�76O�T�H�tЉ��C��
`�T6��t�ֈ�H���⎾lE��^����<S4�8�Ġ�Sj�����'��a��0�$=? �&S��7w���L~�g$��D�F��dz�Q`fx���J�E�Kz`)���:ٱ�����?��F�~�"�`t"z���;3.�T((R=o���f�	��Pv6Uؑ�=y=ά�?�4�C*zl�*���y���HR�|Ĉ�����LU Tbvb��L&T&"
�ND��A;�gq�"�J����y���8�O�<����=١���
:�Ee��0z�χ~�Č�I�EYk�ϴ%�)4�o�`�O�[�n�fˁ      R      x������ � �      X   �  x���=��0�k�]&��2R�R���%y�tֆ��B�3��G��Kr �H�o������߿��l�°�$��M��x�W�O�wj�~���B>����������]�jzq
�Gʈ�y�+����Y���ѩx4o��#PQ�Y�Lp&b�dd����!�l��)�q�;���9e`0��-(���~�L;�{f�����vHո1���C�{����;˿�o[;�i�������`0F�ej9&�$3��<��C��"<�T�`�k�i��XU?����l^ �1s����-H[�.=�cv/Cߌ�~�((���m�4G�]��!E܏)b����E�i�4�����ů2<`����(Pï\��k$�n�`9>0ɂ��fU�Z�"��Ir������s��A��l1��9s�,�bh8"�C��.���fn�@����3gv��n��tj=p�ΗkTh��g{q&��w�kQ�XU�tP;s^�.J���������M���7;+��P��䳵Nc�~����Pl;9R��$�(+���D��#ˈ's!��cgZ����{y@�j�>�W�_F�M
o]�.������@d���'�� �~�׆l��a|z��P)��h���}�!���}?���}N��P�$�(*�ӫJ�+W�2����p�t��4���^��?���3      5     x���K�E��=��Ht)3"#�����Ax���FBdk�X���p�����ʙn�5*�F�����#'��yy�����l_<{Zh��������sC�t��nG���gʴ�W����#����,��Ee�����|���n�c�q�+�s�'8_Dq�O�m��N>�~uH���e\��+�o>���߿��\��i�9g�}��,@����~��_,�4k쉯�F��o�̣�!������i����˝[�)��=gL�M����I'#�{��p0fl����a�}8�L��i�e �L���sb����e<����\�N�x�)�i��/�_=�.�Eb&s=�f.}3�]]��c1�j k6���c�0�8� ���Ǭ 6dn�9އGdtS4�\�E,�{.���{�!;�o���?n�o?���>��񣦌��Zp�]j���NZ�%�\3{���KB��x�7j.�G=}::��:+CY3�<�U_�c5Z��q��^��>Q��+E;��ɵ�8Ǣ�~��}�_"��U%�A�ѓ!Si KI��YyF)�$�� �Wa�}����9�0-�y���)"Ĳ>d;��&�f8t���+.�S�$L�ﰺ))��y��q.+&<Ct>{$b�Y�"}İ���yd����w���f\���5�Ц� ��AbB#O�#���I�d$�i���tҦu��	[�2��|�"���	����k#O�o��2d�DS_�&�V�j����GX[,�,z&�������%K�#������y�!j[��q�,��*�'`�>���+TL�Lm̄�,*�-�ʌ.'�dͮ�ݖҦr85��q����UL�WL���!���v�h	�,S�J3����,x�f�0��3� �WVN�A3��眇�G� �˚�9tuO�<�Ïʡ����z���1�ꔙ��d6��֡��M�r���7O�޾�}w����y�]9C�GY��7B�zu�5/����*�*T\E*ӏAs�ʪ��ϯ\��XS3_�BAz�e�|�H�ҬhV�ei&�rV$~X��SY�iS�bC6�Q{�2RBsQY|�G�&/��+3���;�K������޴�H��̑!��ɛ�W�޿�����'��7;�y�;+���y ȱ�\tC�q������Wo^����޽c�]?f����	��i���1����W)�T`�V��������*J�M�ʳ9F6��r�>�Co��r���M�bA��z&1Hq�B*nߔ|E�P%cy�����f��,=���@��n�L���<����|�<u�h�ž�Q�o�6h��?-K����aE�ޝ��8�Π)��<I=��YB4��GS��O�&{�W73Z"��,�@��������c|$��,f{9P��vzn�k��H�I�CD@Sj$�}v2����H�0w^(7����dF�#��p��g���	)I�/};�-�N�p�IX�'#�=��I�> �D(�|"=E�Xn#��v���f^���C
04�a�B=�V�ՈZqxkV�>����. C=��Q���� TK	�I�h�c�C�檰�hZ�����%B@D�6/�\������>L�j_U�c[絸-�Jҵ�<^��|Nk�,�B݆Dx�XL���(�ń��}˄"��v����Mrd�/k�S]���S_����z��U�ɶ$A�����+�0���'O��C���H�����V���} ���.��'��N�I�!-up�f����-%�j�Tg��|��D���,����i�����G��&2�H0�Ec�q����0��c'E��HNw�4KY�_���^���d]����Pڔ����&p��E�\$ى���K���;c�˧�����v�
f �����lT�=1���&9[u9������S��C
&.<�,�=��$�`��9+�{�6���~��N(b}X�P��0�`�0��Wmd��:��ꩵ�
��Z����N嘙)��b��yUh�l�_�p����7���/E.pxЊ�Q˨q.�������      s      x�3��SpJ������ p�      T      x�3���p�2�u����� '/�      q   M   x�3��u�uv��u�tr��2�p�w�p��w�t�r�r�L�b�~� 3�r$! ��dPH� S��I E1z\\\ r{*      9   �  x���Mr�F���S�&UP�v���� �1bc�f�$�X�r��L��	r��r��2��"�I�@�c���J�5]��V��F1���-�Bbge9���%��C����KBa3���7J�;����ӳ���L�#�Ӳ�I֔)��d��zDܖD?�c�Z@ո2�]�"�hE�dk�56�z���t�8�&C<Px�M�$ ����l�d��{>L��A������~��3ɛh�6�7��d�7x/7� f�@e���d�(���) �2g4�N���X����< �p����Z�I�5:L= M������4k�/�D��������kH�5���"9�b�5U_��x1�~0n?�x�B��R��b<��\I+Z��Q�����I[�x�	��������Ī�/�a7,�	%Es���x�)�lP"Z.7O�t^�8��hÈ��4�yf(�qh��O�;"N$�r�VP4���&�����(3�:�����v��W��T�'K)92u2d�����!�I����/��ۂ�)����ۛ`~;�0�8̲��w��\/w@G)%t�iE��ku�Ѻ�����}�h��)�|�o�[0�B��Qʳ u��yҹ�oC�	��]|]0�<64����X��Ne_���4�*8l����&�J�$���^�"���!r�Ug�ˇ{�/O��z�UyY�Be��1�e}<�N2�t�P6�?��a�Dʡ�0�n�*adS��z����?�T4o���q����d�l?�I�ˊ/\s�]����j����&��1���&���])j��	kR��q�����@����z�Y�Z�J�ѯ����<��<���[�i��9��$U��u�q����J����K�f�1M7�����C�C��8�AgI�8^Xl��̠>oɠEA�N7��j��Ym�%����m���(���x�r�����N�Y��QOcV0�p�Ҵ�U���m��Q?cBhw�w1]t�:	h~ˊ��L��4G�]�p�;���u�<YmlB%C"�
�;��^����4p�2u�,�̏�R3�L�l��
���Đ��5
��c�r���vr$�iC��k7��t<���L:/@��z"�a�fmUS���`���\����S�!��;!��✢v��饾;?;;�vVb/      ;     x��Z�
d�]W��@�˶j���"�]`��/��}�U�iz��:֕��d���>�q�x@�?l�ǿ~��?��ǿ��?��������Թ�������;�T� � r!P���;�,�0��a��G�@ɏ�n <�8\��|�H�p��]�;���
� �� �;���Q� �F ���
�D`.��ۿbB{�Z��#��}����^ �1E!uG����Pāg���]���>�Ga���g*<�N<��C�i�3�"�tPT���P��y�@pRC_ʺ��QUs�/��L�G\�X�A��8�8�d����\�X���" �>��q�
��ga�#l2Q"�a?V�"��&rք�nrY!����@��(則�,�D���2a��h�� Z*�Fb�^�5A��*z~E �l�B�}C/+Z�P(K�"V:P!.L���¤�5����@�Mi���q���aE(��:�w+/mވC����a%U�2���]x#/%� �l&P�8H��"��0�D�6#���C9�����1��.\�ZԜ����eeT�Л��'��(�X�M��.�FVF�]2��������L�Y	U#XE������<g��FVB��h>�J�r5u8�#BU���Cc�'��!T�СE�I����9� ����*�DHT"lU�]��x���7|*�Ӂ �Щj�6�E�ťo�T H3u
�L���q!Ob�:����7t,�ڒ+�P'i6������X�X"��u�!V:J�N�����4V:��� +�P'��,�����X�X#L�1�%�JH)�ɺ��1�W��2�F@���ae��&h#T/��6VJ�6�:%���	Zig\�憒��d l(Y��\�����P�D�$�@%���	)���%nn8Y!�+�~"l8Yic�A\�憓%��fa��J�eF�׸��d`J-�B ����	����5NWJ��=S+%{�q�u�J������쿇D%�J�^�\�ce .r�R�F��^�+%{%r]��8���J�a�*N���������8])Y�sd"l(Yi� �ڸ�q���]36��4n�_��9�%�bn�aC�J�&�T����d�`be�JV7{��;:���%��a�#+�����>�#l(Y"���&VJ�J㔔C�il�5�_�Ç@0n�ZqP+���z�����e�Ҝ>ם���!�Et���|9�j�ʹo�L��xN�M:_	�����<����@�4M�w
 Әx<�����M�z��EVm3Hu>��?��]�u�?�M�����C�a/��1|�=�7���v����������u7B�[�g�\�$�w��|1>��`�I�<hy �;���F�i��ϧ2@O���^�ث�ޫ}<��O��{���X�s$%�����x5���T���5xC����4�<r��#�o7��q��f�/�go��I�9���/����"�=Y&ٌЏ�<�ۋړ�Qk�Ǐ�Nߪ�c�x�D�6F�;v�-�=of�/h>aӼK�B쮤<�0���u����g�J./s����.�`�E�]�:�i\��$���a
:�;��\�C������B�.s��
_i�-w4��W:�@<r��W8�%��on���W��I<xX�0�p����秽O�>ߚ�)��e�K��fUc�U˟]K��������v'�f?���vi�b��uO����������Heܕ#>�{���L��M�I�L�z�r#j�x��<�So��w��g���_A�6����a�]\�o��|7l�y�_#xL8]��������8~�m����[���tcf�fm�g`�����/�I!�\�?�P� H��}�,
����NcՎ�`֐�������ƫ�~��g��џ���7l������[��?h���Ax�8q]�h�X�N7	�˹�P���W��im�U�Q�T�S{���Y��N����t3~��6/ƨ��f��9.{KY��;�<��������t!(E      >   �  x�]��j�@�ϣ��c{p�]ɒ���P�c������PK`Km�y�^�C="J95������&�4���gg���%L�����"(���}ه28�@���:͑�N�fT��0M>�%��C�C�!����5��5��I�Dέ��U�lq��1уKk���]����__�E��zV��q������l�!��x�W]����V�K5\.���wk~���5������4/2�*Sv\�t�`zt��)nlcX�<����b�N��`l�:Ͱ*ۺxM�2مx/���� "��m�[<s�6�6��.�ˎ~;+�X<"�gǻ�O��}�'��y.���$,iO,N�`Df���Q]��Ґ�y{�3\cfV�8)1��b<8�S�<��z����5���יּK�}�^eH�L�Sjʦ��e_�՚o���"���8�2��.      j   �   x�5���0��az��ػt�9*���/Ȗ 
��$��BBk&��G6̪j��M�#	+�k59|��w��N��M/|,+��y�����j�ĉ�U��o�!ƞ��RQe�Ȟ�M��;�%�̐v3.%v���������-S,�AO��/�v��~D���1	      ?      x������ � �      /   �  x��U�j�@=��b�-�ƒe;>&jAE��"L�(
H"�:$���m�&�=��LI!�C.�=����?��-vjmc�%��f�ͼ���0巘�"� �2Q~d@���}��eæ�� �G�m�������3"��=��Q,�Dy�i���:�+�e��6Ow�*�N�b��:���D?R���=�N��#�s�}�||��E%��p_�ׁ�2���_Ё����7s�K��T��P��4�'�J8�d�j�W�u�;�|m���a�#ʫcQ~�P�2���ykN�8HdO)��:[S����8�Ce:� \Ҿ�:gsQ���B�����r�Ϊ��,QaRj�&�e��T���p�8M�%�è�4IZ3�����<��e���bC�;$���Ŵ�1�j0wM��&$).r�%9�:x��m�%��|�����5�Q{&�EmQ|�Sٙ�:��r�SQ\�������Y�du;�Q�'*���eS�k���%���b<���R�,�>0ܕ]���0�bi�TyN}��ёlpi�e4_�7�eY�#Q�5���,�Zr��a�jN��}v�V���cTߦ�.�rx��Z��|u��V0�ْ���B7��4��+éN�=j�wU*ٓ���h�è��JpF�������^�ه-~�q kZ.Rp]|���>�V�Z�7| �iGI�Y����6��Sx#      A      x������ � �      m      x������ � �      b   �   x�U�K�0��]�H�wi�E�S$������JLX�y�=ְ�fd))��-�G��ݺ��r/y-��(���a�z��Kh��0=.��#x8�8rk�[���=�:ҭ��q"G�_ȼS�[����>)�����/V�G      C     x����jSA��ܧ�ˊd��1����m��b�R� ��� ���Е뾁��Jߣo�1��t!�,�����9��U��z FM���n����p��L�T��[���H�A�8@�ML�f�.eY�
��̗�e2�h�Q��ћ�^�*��F	��Q�Q^=]\��_�/��N��"��A���z0H��ښr:���kɬ��b�$f^�M�J��8@��Q��;[p�r
Km�	��Q�e+���%�$qɒX$CoacQ��
J�w��ѹn;ŢƲ%}��%KjD`gW5��?��L�PM6[�"X+�&+H1h�-tTh	qB�y-b鸋e	L��I:ɩ�����'�����˳F��D��+'m/[ %jp,��X��B����o~�\_�ջ����E���_�~T�Ӿcr��x �y����Ll�q�A,���Z	͹�R��QGO�[M�v�Z;�^/G����lC��˱]n��8x9y���F�q�X[2�! �����������7���ޑ��'�I@�|_�dY~����B.�Q!�� FD������7N��(ˆ"듑S�"�_�,��t��pX�3;�Z��G���9V��K	�h��O����e;����!j��z5����`�j8��r2�E���m�����i���b���x��}[_�|��(lL�C��������ϟ^�Y&�%�cV��h"w���6*)y$z�cO���}��E��
L.Ğ��5��+�E@b���#��P(���6"نh�t�������      D      x�3�42�4�2�44RƜ���\1z\\\ *�%      e      x������ � �      F   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      7   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      h   �   x�3���x�{������;B<B�Z�������C��`j�=��y(�=��Q�������eS����{l}(D���eS��"T���e~%���Ύ~\����@��KB@�x���=... ��9�      o   �   x�-�;
�@�zr�9��y�jM
A�X�ѨIwU��g���!)׋�M�Ymv������k���oX8K���T�b�d��/��H��,
�9��~�4v!�Ļ���c�j�V܎��Wq���j��z�}���0��sG`� (��o^,�f�/�K�u�Z�ZX�gFmկߴa2q=�B��?�f$Q�0�/e9UM      K      x������ � �      M      x������ � �      O   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      \   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����     