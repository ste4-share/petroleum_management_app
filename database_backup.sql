PGDMP  !    :            
    |            postgres    14.13    16.4 $   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13754    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3772                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
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
            public          postgres    false    5    263            �            1259    16782    ledgers    TABLE     �   CREATE TABLE public.ledgers (
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
            public          postgres    false    282    5                       1259    16873    assignment_type    TABLE     P   CREATE TABLE public.assignment_type (
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
            public          postgres    false    5    259            �            1259    16797    category    TABLE     �   CREATE TABLE public.category (
    id integer NOT NULL,
    header_lv1 text,
    header_lv2 text,
    header_lv3 text,
    type_title text,
    tructhuoc_id integer,
    code text
);
    DROP TABLE public.category;
       public         heap    postgres    false    5                        1259    17060    category_assignment    TABLE     �   CREATE TABLE public.category_assignment (
    title_1 text,
    title_2 text,
    title_3 text,
    title_4 text,
    id integer NOT NULL,
    code text
);
 '   DROP TABLE public.category_assignment;
       public         heap    postgres    false    5                       1259    17043    nhiemvu_reporter    TABLE       CREATE TABLE public.nhiemvu_reporter (
    id integer NOT NULL,
    title_1 text,
    title_2 text,
    title_3 text,
    title_4 text,
    soluong text,
    nhiemvu_id integer,
    phuongtien_id integer,
    ten_nv_1 text,
    ten_nv_2 text,
    ten_nv_3 text
);
 $   DROP TABLE public.nhiemvu_reporter;
       public         heap    postgres    false    5                       1259    17042    category_assignment_id_seq    SEQUENCE     �   ALTER TABLE public.nhiemvu_reporter ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_assignment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    284                       1259    17059    category_assignment_id_seq1    SEQUENCE     �   ALTER TABLE public.category_assignment ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_assignment_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    288    5            �            1259    16796    category_id_seq    SEQUENCE     �   ALTER TABLE public.category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    253            �            1259    16395    nhiemvu    TABLE     �   CREATE TABLE public.nhiemvu (
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
       public          postgres    false    5    212            �           0    0    chitiet_nhiemvu_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.chitiet_nhiemvu_id_seq OWNED BY public.chitiet_nhiemvu.id;
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
            public          postgres    false    5    280            $           1259    17076    donvi_nhiemvu    TABLE     k   CREATE TABLE public.donvi_nhiemvu (
    id integer NOT NULL,
    dvi_id integer,
    nhiemvu_id integer
);
 !   DROP TABLE public.donvi_nhiemvu;
       public         heap    postgres    false    5            #           1259    17075    donvi_nhiemvu_id_seq    SEQUENCE     �   ALTER TABLE public.donvi_nhiemvu ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.donvi_nhiemvu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    292            �            1259    16407    dvi_nv    TABLE     s   CREATE TABLE public.dvi_nv (
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
    hanmuc_md text,
    hanmuc_km bigint,
    hanmuc_tk text,
    soluong bigint,
    pt_id integer
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
            public          postgres    false    5    286            &           1259    17082    hanmuc_nhiemvu    TABLE     �   CREATE TABLE public.hanmuc_nhiemvu (
    id integer NOT NULL,
    quarter_id integer,
    unit_id integer,
    nhiemvu_id integer,
    ct_tk text,
    ct_md text,
    sum_ct text,
    consumpt bigint
);
 "   DROP TABLE public.hanmuc_nhiemvu;
       public         heap    postgres    false    5            %           1259    17081    hanmuc_nhiemvu_id_seq    SEQUENCE     �   ALTER TABLE public.hanmuc_nhiemvu ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.hanmuc_nhiemvu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    294            �            1259    16776 
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
            public          postgres    false    257    5            �            1259    16775    inv_report_id_seq    SEQUENCE     �   ALTER TABLE public.inv_report ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.inv_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    249    5            �            1259    16487    ledger_details    TABLE     ~  CREATE TABLE public.ledger_details (
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
    loaigiobay text,
    dur interval hour to second(0),
    dur_text text,
    thuc_xuat_tk bigint,
    dur_text_tk text
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
       public          postgres    false    5    220            �           0    0    loaixd2_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.loaixd2_id_seq OWNED BY public.loaixd2.id;
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
            public          postgres    false    5    269            �            1259    16455    nguonnx_tructhuoc    TABLE     �   CREATE TABLE public.nguonnx_tructhuoc (
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
       public          postgres    false    5    226            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.nguonnx_tructhuoc_id_seq OWNED BY public.nguonnx_tructhuoc.id;
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
       public          postgres    false    5    228            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.nhiemvu_tcn_id_seq OWNED BY public.nhiemvu_tcn.id;
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
       public          postgres    false    5            '           1259    17089    tab1    TABLE     S   CREATE TABLE public.tab1 (
    pkey integer,
    dur interval hour to second(0)
);
    DROP TABLE public.tab1;
       public         heap    postgres    false    5                       1259    16945    team    TABLE     Y   CREATE TABLE public.team (
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
            public          postgres    false    267    5                       1259    16992    titles_category    TABLE     e   CREATE TABLE public.titles_category (
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
       public          postgres    false    5    242            �           0    0    tructhuoc_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tructhuoc_id_seq OWNED BY public.tructhuoc.id;
          public          postgres    false    243            "           1259    17070 
   tructhuocf    TABLE     o   CREATE TABLE public.tructhuocf (
    id integer NOT NULL,
    root_id integer,
    dvi_tructhuoc_id integer
);
    DROP TABLE public.tructhuocf;
       public         heap    postgres    false    5            !           1259    17069    tructhuocf_id_seq    SEQUENCE     �   ALTER TABLE public.tructhuocf ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tructhuocf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    290            (           1259    17092    v1    VIEW     K   CREATE VIEW public.v1 AS
 SELECT sum(tab1.dur) AS sum
   FROM public.tab1;
    DROP VIEW public.v1;
       public          postgres    false    295    5            �            1259    16515    vehicels_for_plan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vehicels_for_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.vehicels_for_plan_id_seq;
       public          postgres    false    230    5            �           0    0    vehicels_for_plan_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.vehicels_for_plan_id_seq OWNED BY public.phuongtien.id;
          public          postgres    false    244            7           2604    16516    chitiet_nhiemvu id    DEFAULT     x   ALTER TABLE ONLY public.chitiet_nhiemvu ALTER COLUMN id SET DEFAULT nextval('public.chitiet_nhiemvu_id_seq'::regclass);
 A   ALTER TABLE public.chitiet_nhiemvu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            8           2604    16517 	   dvi_nv id    DEFAULT     f   ALTER TABLE ONLY public.dvi_nv ALTER COLUMN id SET DEFAULT nextval('public.dvi_nv_id_seq'::regclass);
 8   ALTER TABLE public.dvi_nv ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            G           2604    16531    ledger_details id    DEFAULT     n   ALTER TABLE ONLY public.ledger_details ALTER COLUMN id SET DEFAULT nextval('public.so_cai_id_seq'::regclass);
 @   ALTER TABLE public.ledger_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            9           2604    16518    lichsuxnk id    DEFAULT     l   ALTER TABLE ONLY public.lichsuxnk ALTER COLUMN id SET DEFAULT nextval('public.lichsuxnk_id_seq'::regclass);
 ;   ALTER TABLE public.lichsuxnk ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            <           2604    16519 
   loaixd2 id    DEFAULT     h   ALTER TABLE ONLY public.loaixd2 ALTER COLUMN id SET DEFAULT nextval('public.loaixd2_id_seq'::regclass);
 9   ALTER TABLE public.loaixd2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            >           2604    16520 	   mucgia id    DEFAULT     f   ALTER TABLE ONLY public.mucgia ALTER COLUMN id SET DEFAULT nextval('public.mucgia_id_seq'::regclass);
 8   ALTER TABLE public.mucgia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            A           2604    16523    nguonnx_tructhuoc id    DEFAULT     |   ALTER TABLE ONLY public.nguonnx_tructhuoc ALTER COLUMN id SET DEFAULT nextval('public.nguonnx_tructhuoc_id_seq'::regclass);
 C   ALTER TABLE public.nguonnx_tructhuoc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            6           2604    16524 
   nhiemvu id    DEFAULT     q   ALTER TABLE ONLY public.nhiemvu ALTER COLUMN id SET DEFAULT nextval('public.chi_tiet_nhiemvu_id_seq'::regclass);
 9   ALTER TABLE public.nhiemvu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            B           2604    16525    nhiemvu_tcn id    DEFAULT     p   ALTER TABLE ONLY public.nhiemvu_tcn ALTER COLUMN id SET DEFAULT nextval('public.nhiemvu_tcn_id_seq'::regclass);
 =   ALTER TABLE public.nhiemvu_tcn ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            C           2604    16528    phuongtien id    DEFAULT     u   ALTER TABLE ONLY public.phuongtien ALTER COLUMN id SET DEFAULT nextval('public.vehicels_for_plan_id_seq'::regclass);
 <   ALTER TABLE public.phuongtien ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    230            E           2604    16529    phuongtien_nhiemvu id    DEFAULT     ~   ALTER TABLE ONLY public.phuongtien_nhiemvu ALTER COLUMN id SET DEFAULT nextval('public.phuongtien_nhiemvu_id_seq'::regclass);
 D   ALTER TABLE public.phuongtien_nhiemvu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            F           2604    16530 
   quarter id    DEFAULT     h   ALTER TABLE ONLY public.quarter ALTER COLUMN id SET DEFAULT nextval('public.quarter_id_seq'::regclass);
 9   ALTER TABLE public.quarter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            ;           2604    16532    tcn id    DEFAULT     d   ALTER TABLE ONLY public.tcn ALTER COLUMN id SET DEFAULT nextval('public.loai_nx_id_seq'::regclass);
 5   ALTER TABLE public.tcn ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            I           2604    16533 	   tonkho id    DEFAULT     f   ALTER TABLE ONLY public.tonkho ALTER COLUMN id SET DEFAULT nextval('public.tonkho_id_seq'::regclass);
 8   ALTER TABLE public.tonkho ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            J           2604    16534    tonkho_tong id    DEFAULT     p   ALTER TABLE ONLY public.tonkho_tong ALTER COLUMN id SET DEFAULT nextval('public.tonkho_tong_id_seq'::regclass);
 =   ALTER TABLE public.tonkho_tong ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            L           2604    16535    tructhuoc id    DEFAULT     l   ALTER TABLE ONLY public.tructhuoc ALTER COLUMN id SET DEFAULT nextval('public.tructhuoc_id_seq'::regclass);
 ;   ALTER TABLE public.tructhuoc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �          0    17028    activated_active 
   TABLE DATA           ;   COPY public.activated_active (id, status_name) FROM stdin;
    public          postgres    false    282   ^      �          0    16873    assignment_type 
   TABLE DATA           3   COPY public.assignment_type (id, name) FROM stdin;
    public          postgres    false    259   H^      �          0    16797    category 
   TABLE DATA           j   COPY public.category (id, header_lv1, header_lv2, header_lv3, type_title, tructhuoc_id, code) FROM stdin;
    public          postgres    false    253   s^      �          0    17060    category_assignment 
   TABLE DATA           [   COPY public.category_assignment (title_1, title_2, title_3, title_4, id, code) FROM stdin;
    public          postgres    false    288   �_      c          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   �`      �          0    17022    dinhmuc 
   TABLE DATA           k   COPY public.dinhmuc (id, dm_tk_gio, dm_md_gio, dm_xm_km, dm_xm_gio, phuongtien_id, quarter_id) FROM stdin;
    public          postgres    false    280   ic      �          0    17076    donvi_nhiemvu 
   TABLE DATA           ?   COPY public.donvi_nhiemvu (id, dvi_id, nhiemvu_id) FROM stdin;
    public          postgres    false    292   7d      e          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   Td      �          0    16972    group_title 
   TABLE DATA           A   COPY public.group_title (id, group_name, group_code) FROM stdin;
    public          postgres    false    271   qd      �          0    17052    hanmuc 
   TABLE DATA           a   COPY public.hanmuc (id, quarter_id, hanmuc_md, hanmuc_km, hanmuc_tk, soluong, pt_id) FROM stdin;
    public          postgres    false    286   �d      �          0    17082    hanmuc_nhiemvu 
   TABLE DATA           m   COPY public.hanmuc_nhiemvu (id, quarter_id, unit_id, nhiemvu_id, ct_tk, ct_md, sum_ct, consumpt) FROM stdin;
    public          postgres    false    294   �e      �          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   "g      �          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, xd_id, title_id, quarter_id) FROM stdin;
    public          postgres    false    257   ?g      �          0    16904 	   inventory 
   TABLE DATA           �   COPY public.inventory (id, tdk_sscd, tdk_nvdx, total, status, tck_sscd, tck_nvdx, petro_id, quarter_id, import_total, export_total, pre_nvdx, pre_sscd) FROM stdin;
    public          postgres    false    263   x�      z          0    16487    ledger_details 
   TABLE DATA           *  COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, phuongtien_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id, import_unit_id, export_unit_id, loaigiobay, dur, dur_text, thuc_xuat_tk, dur_text_tk) FROM stdin;
    public          postgres    false    235   A�      �          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   a�      �          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   ~�      g          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   ؙ      �          0    17014    loai_nhiemvu 
   TABLE DATA           @   COPY public.loai_nhiemvu (id, assignment_type_name) FROM stdin;
    public          postgres    false    278   ��      �          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   �      �          0    17006    loai_phuongtien 
   TABLE DATA           >   COPY public.loai_phuongtien (id, type_name, type) FROM stdin;
    public          postgres    false    276   J�      k          0    16430    loaixd2 
   TABLE DATA           |   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2, petroleum_type_id) FROM stdin;
    public          postgres    false    220   ��      m          0    16437    mucgia 
   TABLE DATA           |   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id, inventory_id) FROM stdin;
    public          postgres    false    222   <�      p          0    16445    nguon_nx 
   TABLE DATA           7   COPY public.nguon_nx (id, ten, createtime) FROM stdin;
    public          postgres    false    225   y�      �          0    16964    nguonnx_title 
   TABLE DATA           K   COPY public.nguonnx_title (id, nguonnx_id, title_id, group_id) FROM stdin;
    public          postgres    false    269   I�      q          0    16455    nguonnx_tructhuoc 
   TABLE DATA           I   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id) FROM stdin;
    public          postgres    false    226   ��      a          0    16395    nhiemvu 
   TABLE DATA           �   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, team_id, assignment_type_id) FROM stdin;
    public          postgres    false    210   �      �          0    17043    nhiemvu_reporter 
   TABLE DATA           �   COPY public.nhiemvu_reporter (id, title_1, title_2, title_3, title_4, soluong, nhiemvu_id, phuongtien_id, ten_nv_1, ten_nv_2, ten_nv_3) FROM stdin;
    public          postgres    false    284   װ      s          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   ��      �          0    16986    nxt_reporter 
   TABLE DATA           �   COPY public.nxt_reporter (petro_name, petro_title_lv1, petro_title_lv2, title_lv1, title_lv2, title_lv3, title_lv4, petro_title_lv3, petro_title_lv4, xd_id, quarter_id, quantity) FROM stdin;
    public          postgres    false    272   �      �          0    16890    petroleum_type 
   TABLE DATA           @   COPY public.petroleum_type (id, name, type, r_type) FROM stdin;
    public          postgres    false    261   .�      u          0    16471 
   phuongtien 
   TABLE DATA           l   COPY public.phuongtien (id, name, quantity, status, "timestamp", nguonnx_id, loaiphuongtien_id) FROM stdin;
    public          postgres    false    230   Ǳ      v          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   i�      �          0    16928    price_status 
   TABLE DATA           0   COPY public.price_status (id, name) FROM stdin;
    public          postgres    false    264   ��      x          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   ��      �          0    17089    tab1 
   TABLE DATA           )   COPY public.tab1 (pkey, dur) FROM stdin;
    public          postgres    false    295   7�      i          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   l�      �          0    16945    team 
   TABLE DATA           3   COPY public.team (id, name, team_code) FROM stdin;
    public          postgres    false    267   3�      �          0    16992    titles_category 
   TABLE DATA           ?   COPY public.titles_category (id, title_name, type) FROM stdin;
    public          postgres    false    274   ˶      }          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   ��                0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   ·      �          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   ߷      �          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   b�      �          0    17070 
   tructhuocf 
   TABLE DATA           C   COPY public.tructhuocf (id, root_id, dvi_tructhuoc_id) FROM stdin;
    public          postgres    false    290   ȹ      �           0    0    Inventory_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Inventory_id_seq"', 1072, true);
          public          postgres    false    262            �           0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 365, true);
          public          postgres    false    250            �           0    0    activated_active_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.activated_active_id_seq', 3, true);
          public          postgres    false    281            �           0    0    assignment_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.assignment_type_id_seq', 2, true);
          public          postgres    false    258            �           0    0    category_assignment_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.category_assignment_id_seq', 3209, true);
          public          postgres    false    283            �           0    0    category_assignment_id_seq1    SEQUENCE SET     J   SELECT pg_catalog.setval('public.category_assignment_id_seq1', 11, true);
          public          postgres    false    287            �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 61, true);
          public          postgres    false    252            �           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211            �           0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 49, true);
          public          postgres    false    213            �           0    0    dinhmuc_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.dinhmuc_id_seq', 101, true);
          public          postgres    false    279            �           0    0    donvi_nhiemvu_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.donvi_nhiemvu_id_seq', 1, false);
          public          postgres    false    291            �           0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215            �           0    0    group_title_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.group_title_id_seq', 2, true);
          public          postgres    false    270            �           0    0    hanmuc_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.hanmuc_id_seq', 70, true);
          public          postgres    false    285            �           0    0    hanmuc_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hanmuc_nhiemvu_id_seq', 180, true);
          public          postgres    false    293            �           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 64673, true);
          public          postgres    false    256            �           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 38359, true);
          public          postgres    false    248            �           0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 979, true);
          public          postgres    false    217            �           0    0    loai_nhiemvu_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.loai_nhiemvu_id_seq', 1, true);
          public          postgres    false    277            �           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219            �           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246            �           0    0    loai_phuongtien_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.loai_phuongtien_id_seq', 7, true);
          public          postgres    false    275            �           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221            �           0    0    mucgia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mucgia_id_seq', 3116, true);
          public          postgres    false    223            �           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 88, true);
          public          postgres    false    224            �           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254            �           0    0    nguonnx_title_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nguonnx_title_id_seq', 41, true);
          public          postgres    false    268            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            �           0    0    petroleum_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.petroleum_type_id_seq', 13, true);
          public          postgres    false    260            �           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232            �           0    0    price_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.price_status_id_seq', 1, false);
          public          postgres    false    265            �           0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234            �           0    0    so_cai_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.so_cai_id_seq', 1052, true);
          public          postgres    false    236            �           0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    237            �           0    0    team_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.team_id_seq', 5, true);
          public          postgres    false    266            �           0    0    titles_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.titles_category_id_seq', 14, true);
          public          postgres    false    273            �           0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 813, true);
          public          postgres    false    239            �           0    0    tonkho_tong_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 1068, true);
          public          postgres    false    241            �           0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    243            �           0    0    tructhuocf_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuocf_id_seq', 9, true);
          public          postgres    false    289            �           0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 32, true);
          public          postgres    false    244            �           2606    16910    inventory Inventory_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT "Inventory_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.inventory DROP CONSTRAINT "Inventory_pkey";
       public            postgres    false    263            �           2606    16788    ledgers Ledgers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ledgers
    ADD CONSTRAINT "Ledgers_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ledgers DROP CONSTRAINT "Ledgers_pkey";
       public            postgres    false    251            �           2606    17034 &   activated_active activated_active_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.activated_active
    ADD CONSTRAINT activated_active_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.activated_active DROP CONSTRAINT activated_active_pkey;
       public            postgres    false    282            �           2606    16879 $   assignment_type assignment_type_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.assignment_type
    ADD CONSTRAINT assignment_type_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.assignment_type DROP CONSTRAINT assignment_type_pkey;
       public            postgres    false    259            �           2606    16795    ledgers bill_uni 
   CONSTRAINT     N   ALTER TABLE ONLY public.ledgers
    ADD CONSTRAINT bill_uni UNIQUE (bill_id);
 :   ALTER TABLE ONLY public.ledgers DROP CONSTRAINT bill_uni;
       public            postgres    false    251            �           2606    17068 0   category_assignment category_assignment_code_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.category_assignment
    ADD CONSTRAINT category_assignment_code_key UNIQUE (code);
 Z   ALTER TABLE ONLY public.category_assignment DROP CONSTRAINT category_assignment_code_key;
       public            postgres    false    288            �           2606    17049 )   nhiemvu_reporter category_assignment_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.nhiemvu_reporter
    ADD CONSTRAINT category_assignment_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.nhiemvu_reporter DROP CONSTRAINT category_assignment_pkey;
       public            postgres    false    284            �           2606    17066 -   category_assignment category_assignment_pkey1 
   CONSTRAINT     k   ALTER TABLE ONLY public.category_assignment
    ADD CONSTRAINT category_assignment_pkey1 PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.category_assignment DROP CONSTRAINT category_assignment_pkey1;
       public            postgres    false    288            �           2606    16803    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    253            �           2606    17004 -   category category_type_title_tructhuoc_id_key 
   CONSTRAINT     |   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_type_title_tructhuoc_id_key UNIQUE (type_title, tructhuoc_id);
 W   ALTER TABLE ONLY public.category DROP CONSTRAINT category_type_title_tructhuoc_id_key;
       public            postgres    false    253    253            O           2606    16538    nhiemvu chi_tiet_nhiemvu_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.nhiemvu
    ADD CONSTRAINT chi_tiet_nhiemvu_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.nhiemvu DROP CONSTRAINT chi_tiet_nhiemvu_pkey;
       public            postgres    false    210            Q           2606    16553 $   chitiet_nhiemvu chitiet_nhiemvu_pkey 
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
       public            postgres    false    280            �           2606    17080     donvi_nhiemvu donvi_nhiemvu_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.donvi_nhiemvu
    ADD CONSTRAINT donvi_nhiemvu_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.donvi_nhiemvu DROP CONSTRAINT donvi_nhiemvu_pkey;
       public            postgres    false    292            S           2606    16540    dvi_nv dvi_nv_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.dvi_nv
    ADD CONSTRAINT dvi_nv_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.dvi_nv DROP CONSTRAINT dvi_nv_pkey;
       public            postgres    false    214            �           2606    16978    group_title group_title_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.group_title
    ADD CONSTRAINT group_title_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.group_title DROP CONSTRAINT group_title_pkey;
       public            postgres    false    271            �           2606    17088 "   hanmuc_nhiemvu hanmuc_nhiemvu_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.hanmuc_nhiemvu
    ADD CONSTRAINT hanmuc_nhiemvu_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.hanmuc_nhiemvu DROP CONSTRAINT hanmuc_nhiemvu_pkey;
       public            postgres    false    294            ]           2606    16587 	   mucgia id 
   CONSTRAINT     G   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT id PRIMARY KEY (id);
 3   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT id;
       public            postgres    false    222            �           2606    16856 (   inv_report_detail inv_report_detail_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.inv_report_detail
    ADD CONSTRAINT inv_report_detail_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.inv_report_detail DROP CONSTRAINT inv_report_detail_pkey;
       public            postgres    false    257            �           2606    17002 A   inv_report_detail inv_report_detail_xd_id_quarter_id_title_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.inv_report_detail
    ADD CONSTRAINT inv_report_detail_xd_id_quarter_id_title_id_key UNIQUE (xd_id, quarter_id, title_id);
 k   ALTER TABLE ONLY public.inv_report_detail DROP CONSTRAINT inv_report_detail_xd_id_quarter_id_title_id_key;
       public            postgres    false    257    257    257                       2606    16840 ?   inv_report inv_report_petroleum_id_quarter_id_report_header_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.inv_report
    ADD CONSTRAINT inv_report_petroleum_id_quarter_id_report_header_key UNIQUE (petroleum_id, quarter_id, report_header);
 i   ALTER TABLE ONLY public.inv_report DROP CONSTRAINT inv_report_petroleum_id_quarter_id_report_header_key;
       public            postgres    false    249    249    249            �           2606    16780    inv_report inv_report_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.inv_report
    ADD CONSTRAINT inv_report_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.inv_report DROP CONSTRAINT inv_report_pkey;
       public            postgres    false    249            �           2606    16927 +   inventory inventory_petro_id_quarter_id_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_petro_id_quarter_id_key UNIQUE (petro_id, quarter_id);
 U   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_petro_id_quarter_id_key;
       public            postgres    false    263    263            {           2606    16758    ledger_map ledger_map_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.ledger_map
    ADD CONSTRAINT ledger_map_pkey PRIMARY KEY (id, loaixd_id, header_id, quarter_id);
 D   ALTER TABLE ONLY public.ledger_map DROP CONSTRAINT ledger_map_pkey;
       public            postgres    false    245    245    245    245            U           2606    16609    lichsuxnk lichsuxnk_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.lichsuxnk
    ADD CONSTRAINT lichsuxnk_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.lichsuxnk DROP CONSTRAINT lichsuxnk_pkey;
       public            postgres    false    216            �           2606    17020    loai_nhiemvu loai_nhiemvu_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.loai_nhiemvu
    ADD CONSTRAINT loai_nhiemvu_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.loai_nhiemvu DROP CONSTRAINT loai_nhiemvu_pkey;
       public            postgres    false    278            }           2606    16766    loai_phieu loai_phieu_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.loai_phieu
    ADD CONSTRAINT loai_phieu_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.loai_phieu DROP CONSTRAINT loai_phieu_pkey;
       public            postgres    false    247            �           2606    17012 $   loai_phuongtien loai_phuongtien_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.loai_phuongtien
    ADD CONSTRAINT loai_phuongtien_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.loai_phuongtien DROP CONSTRAINT loai_phuongtien_pkey;
       public            postgres    false    276            [           2606    16546    loaixd2 loaixd2_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.loaixd2
    ADD CONSTRAINT loaixd2_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.loaixd2 DROP CONSTRAINT loaixd2_pkey;
       public            postgres    false    220            _           2606    16888 :   mucgia mucgia_quarter_id_item_id_asssign_type_id_price_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT mucgia_quarter_id_item_id_asssign_type_id_price_key UNIQUE (quarter_id, item_id, asssign_type_id, price);
 d   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT mucgia_quarter_id_item_id_asssign_type_id_price_key;
       public            postgres    false    222    222    222    222            a           2606    16560    nguon_nx nguon_nx_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.nguon_nx
    ADD CONSTRAINT nguon_nx_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.nguon_nx DROP CONSTRAINT nguon_nx_pkey;
       public            postgres    false    225            �           2606    16848 A   tructhuoc_loaiphieu nguonnx_loaiphieu_nguonnx_id_loaiphieu_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.tructhuoc_loaiphieu
    ADD CONSTRAINT nguonnx_loaiphieu_nguonnx_id_loaiphieu_id_key UNIQUE (tructhuoc_id, loaiphieu_id);
 k   ALTER TABLE ONLY public.tructhuoc_loaiphieu DROP CONSTRAINT nguonnx_loaiphieu_nguonnx_id_loaiphieu_id_key;
       public            postgres    false    255    255            �           2606    16846 *   tructhuoc_loaiphieu nguonnx_loaiphieu_pkey 
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
       public            postgres    false    269            e           2606    16957 ?   nguonnx_tructhuoc nguonnx_tructhuoc_nguonnx_id_tructhuoc_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.nguonnx_tructhuoc
    ADD CONSTRAINT nguonnx_tructhuoc_nguonnx_id_tructhuoc_id_key UNIQUE (nguonnx_id, tructhuoc_id);
 i   ALTER TABLE ONLY public.nguonnx_tructhuoc DROP CONSTRAINT nguonnx_tructhuoc_nguonnx_id_tructhuoc_id_key;
       public            postgres    false    226    226            g           2606    16647    nhiemvu_tcn nhiemvu_tcn_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.nhiemvu_tcn
    ADD CONSTRAINT nhiemvu_tcn_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.nhiemvu_tcn DROP CONSTRAINT nhiemvu_tcn_pkey;
       public            postgres    false    228            �           2606    17000    nxt_reporter nxt_reporter_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.nxt_reporter
    ADD CONSTRAINT nxt_reporter_pkey PRIMARY KEY (quarter_id, xd_id);
 H   ALTER TABLE ONLY public.nxt_reporter DROP CONSTRAINT nxt_reporter_pkey;
       public            postgres    false    272    272            �           2606    16896 "   petroleum_type petroleum_type_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.petroleum_type
    ADD CONSTRAINT petroleum_type_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.petroleum_type DROP CONSTRAINT petroleum_type_pkey;
       public            postgres    false    261            k           2606    16575 *   phuongtien_nhiemvu phuongtien_nhiemvu_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.phuongtien_nhiemvu
    ADD CONSTRAINT phuongtien_nhiemvu_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.phuongtien_nhiemvu DROP CONSTRAINT phuongtien_nhiemvu_pkey;
       public            postgres    false    231            i           2606    16565    phuongtien phuongtien_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.phuongtien
    ADD CONSTRAINT phuongtien_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.phuongtien DROP CONSTRAINT phuongtien_pkey;
       public            postgres    false    230            �           2606    16938    price_status price_status_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.price_status
    ADD CONSTRAINT price_status_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.price_status DROP CONSTRAINT price_status_pkey;
       public            postgres    false    264            m           2606    16567    quarter quarter_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.quarter
    ADD CONSTRAINT quarter_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.quarter DROP CONSTRAINT quarter_pkey;
       public            postgres    false    233            o           2606    16544    ledger_details so_cai_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT so_cai_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT so_cai_pkey;
       public            postgres    false    235            W           2606    16815    tcn tcn_name_key 
   CONSTRAINT     K   ALTER TABLE ONLY public.tcn
    ADD CONSTRAINT tcn_name_key UNIQUE (name);
 :   ALTER TABLE ONLY public.tcn DROP CONSTRAINT tcn_name_key;
       public            postgres    false    218            Y           2606    16569    tcn tcn_pkey 
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
       public            postgres    false    267            c           2606    16807    nguon_nx ten_uni 
   CONSTRAINT     J   ALTER TABLE ONLY public.nguon_nx
    ADD CONSTRAINT ten_uni UNIQUE (ten);
 :   ALTER TABLE ONLY public.nguon_nx DROP CONSTRAINT ten_uni;
       public            postgres    false    225            �           2606    16998 $   titles_category titles_category_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.titles_category
    ADD CONSTRAINT titles_category_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.titles_category DROP CONSTRAINT titles_category_pkey;
       public            postgres    false    274            q           2606    16542    tonkho tonkho_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tonkho
    ADD CONSTRAINT tonkho_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tonkho DROP CONSTRAINT tonkho_pkey;
       public            postgres    false    238            s           2606    16866 0   tonkho tonkho_quarter_id_loaixd_id_mucgia_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.tonkho
    ADD CONSTRAINT tonkho_quarter_id_loaixd_id_mucgia_id_key UNIQUE (quarter_id, loaixd_id, mucgia_id);
 Z   ALTER TABLE ONLY public.tonkho DROP CONSTRAINT tonkho_quarter_id_loaixd_id_mucgia_id_key;
       public            postgres    false    238    238    238            u           2606    16862 ,   tonkho_tong tonkho_tong_id_quarter_id_xd_key 
   CONSTRAINT     t   ALTER TABLE ONLY public.tonkho_tong
    ADD CONSTRAINT tonkho_tong_id_quarter_id_xd_key UNIQUE (id_quarter, id_xd);
 V   ALTER TABLE ONLY public.tonkho_tong DROP CONSTRAINT tonkho_tong_id_quarter_id_xd_key;
       public            postgres    false    240    240            w           2606    16571    tonkho_tong tonkho_tong_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tonkho_tong
    ADD CONSTRAINT tonkho_tong_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tonkho_tong DROP CONSTRAINT tonkho_tong_pkey;
       public            postgres    false    240            y           2606    16573    tructhuoc tructhuoc_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tructhuoc
    ADD CONSTRAINT tructhuoc_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tructhuoc DROP CONSTRAINT tructhuoc_pkey;
       public            postgres    false    242            �           2606    17074    tructhuocf tructhuocf_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tructhuocf
    ADD CONSTRAINT tructhuocf_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tructhuocf DROP CONSTRAINT tructhuocf_pkey;
       public            postgres    false    290            �           2606    17037 "   dinhmuc dinhmuc_phuongtien_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dinhmuc
    ADD CONSTRAINT dinhmuc_phuongtien_id_fkey FOREIGN KEY (phuongtien_id) REFERENCES public.phuongtien(id) NOT VALID;
 L   ALTER TABLE ONLY public.dinhmuc DROP CONSTRAINT dinhmuc_phuongtien_id_fkey;
       public          postgres    false    280    230    3433            �           2606    16598    dvi_nv dvi_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.dvi_nv
    ADD CONSTRAINT dvi_fkey FOREIGN KEY (dv_id) REFERENCES public.nguon_nx(id) NOT VALID;
 9   ALTER TABLE ONLY public.dvi_nv DROP CONSTRAINT dvi_fkey;
       public          postgres    false    225    214    3425            �           2606    16916 !   inventory inventory_petro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_petro_id_fkey FOREIGN KEY (petro_id) REFERENCES public.loaixd2(id) NOT VALID;
 K   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_petro_id_fkey;
       public          postgres    false    263    3419    220            �           2606    16921 #   inventory inventory_quarter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_quarter_id_fkey FOREIGN KEY (quarter_id) REFERENCES public.quarter(id) NOT VALID;
 M   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_quarter_id_fkey;
       public          postgres    false    3437    263    233            �           2606    16789    ledger_details ledger_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT ledger_fkey FOREIGN KEY (ledger_id) REFERENCES public.ledgers(id) NOT VALID;
 D   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT ledger_fkey;
       public          postgres    false    235    3459    251            �           2606    16898 &   loaixd2 loaixd2_petroleum_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.loaixd2
    ADD CONSTRAINT loaixd2_petroleum_type_id_fkey FOREIGN KEY (petroleum_type_id) REFERENCES public.petroleum_type(id) NOT VALID;
 P   ALTER TABLE ONLY public.loaixd2 DROP CONSTRAINT loaixd2_petroleum_type_id_fkey;
       public          postgres    false    220    3477    261            �           2606    16547    ledger_details loaixd_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT loaixd_fkey FOREIGN KEY (loaixd_id) REFERENCES public.loaixd2(id) NOT VALID;
 D   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT loaixd_fkey;
       public          postgres    false    220    3419    235            �           2606    16593    mucgia loaixd_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT loaixd_id FOREIGN KEY (item_id) REFERENCES public.loaixd2(id) NOT VALID;
 :   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT loaixd_id;
       public          postgres    false    222    220    3419            �           2606    16882 "   mucgia mucgia_asssign_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT mucgia_asssign_type_id_fkey FOREIGN KEY (asssign_type_id) REFERENCES public.assignment_type(id) NOT VALID;
 L   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT mucgia_asssign_type_id_fkey;
       public          postgres    false    259    3475    222            �           2606    16670    phuongtien nguonnx_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phuongtien
    ADD CONSTRAINT nguonnx_fkey FOREIGN KEY (nguonnx_id) REFERENCES public.nguon_nx(id) NOT VALID;
 A   ALTER TABLE ONLY public.phuongtien DROP CONSTRAINT nguonnx_fkey;
       public          postgres    false    225    3425    230            �           2606    16981 )   nguonnx_title nguonnx_title_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nguonnx_title
    ADD CONSTRAINT nguonnx_title_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.group_title(id) NOT VALID;
 S   ALTER TABLE ONLY public.nguonnx_title DROP CONSTRAINT nguonnx_title_group_id_fkey;
       public          postgres    false    271    3493    269            �           2606    16648    nhiemvu_tcn nhiemvu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nhiemvu_tcn
    ADD CONSTRAINT nhiemvu_fkey FOREIGN KEY (nvu_id) REFERENCES public.nhiemvu(id) NOT VALID;
 B   ALTER TABLE ONLY public.nhiemvu_tcn DROP CONSTRAINT nhiemvu_fkey;
       public          postgres    false    210    228    3407            �           2606    16554    chitiet_nhiemvu nhiemvu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitiet_nhiemvu
    ADD CONSTRAINT nhiemvu_id FOREIGN KEY (nhiemvu_id) REFERENCES public.nhiemvu(id) NOT VALID;
 D   ALTER TABLE ONLY public.chitiet_nhiemvu DROP CONSTRAINT nhiemvu_id;
       public          postgres    false    210    3407    212            �           2606    16581    phuongtien_nhiemvu nhiemvu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.phuongtien_nhiemvu
    ADD CONSTRAINT nhiemvu_id FOREIGN KEY (nvu_id) REFERENCES public.nhiemvu(id) NOT VALID;
 G   ALTER TABLE ONLY public.phuongtien_nhiemvu DROP CONSTRAINT nhiemvu_id;
       public          postgres    false    3407    231    210            �           2606    16958    nhiemvu nhiemvu_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nhiemvu
    ADD CONSTRAINT nhiemvu_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team(id) NOT VALID;
 F   ALTER TABLE ONLY public.nhiemvu DROP CONSTRAINT nhiemvu_team_id_fkey;
       public          postgres    false    267    210    3485            �           2606    16603    dvi_nv nvu_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.dvi_nv
    ADD CONSTRAINT nvu_fkey FOREIGN KEY (nv_id) REFERENCES public.nhiemvu(id) NOT VALID;
 9   ALTER TABLE ONLY public.dvi_nv DROP CONSTRAINT nvu_fkey;
       public          postgres    false    210    214    3407            �           2606    16576     phuongtien_nhiemvu phuongtien_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.phuongtien_nhiemvu
    ADD CONSTRAINT phuongtien_id FOREIGN KEY (phuongtien_id) REFERENCES public.phuongtien(id) NOT VALID;
 J   ALTER TABLE ONLY public.phuongtien_nhiemvu DROP CONSTRAINT phuongtien_id;
       public          postgres    false    231    230    3433            �           2606    16680    ledger_details quarter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ledger_details
    ADD CONSTRAINT quarter_fkey FOREIGN KEY (quarter_id) REFERENCES public.quarter(id) NOT VALID;
 E   ALTER TABLE ONLY public.ledger_details DROP CONSTRAINT quarter_fkey;
       public          postgres    false    233    3437    235            �           2606    16588    mucgia quarter_id    FK CONSTRAINT        ALTER TABLE ONLY public.mucgia
    ADD CONSTRAINT quarter_id FOREIGN KEY (quarter_id) REFERENCES public.quarter(id) NOT VALID;
 ;   ALTER TABLE ONLY public.mucgia DROP CONSTRAINT quarter_id;
       public          postgres    false    222    3437    233            �           2606    16653    nhiemvu_tcn tcn_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.nhiemvu_tcn
    ADD CONSTRAINT tcn_fkey FOREIGN KEY (tcn_id) REFERENCES public.tcn(id) NOT VALID;
 >   ALTER TABLE ONLY public.nhiemvu_tcn DROP CONSTRAINT tcn_fkey;
       public          postgres    false    228    3417    218            �           2606    16867    tcn tcn_loaiphieu_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tcn
    ADD CONSTRAINT tcn_loaiphieu_id_fkey FOREIGN KEY (loaiphieu_id) REFERENCES public.loai_phieu(id) NOT VALID;
 C   ALTER TABLE ONLY public.tcn DROP CONSTRAINT tcn_loaiphieu_id_fkey;
       public          postgres    false    3453    247    218            �   %   x�3���wt�s�2�2�9�C<�ܹb���� �V�      �      x�3�vv�2��s������� '��      �   N  x��R�N�@=�~�|�Zh9V�i�H�tm8x�Di�ƔD?�1�ك����G�O�e7t7��	03;��oֱ�>���>�	+���I�C�'�ؽ����
V~� �S�8�6��I=�S��W�Y�ʪ�wI�4��@<�ČUo)��/��Ap%��ͫ�ؗ#�V���}ɵ �'9�K���;|���s>�K&���7��L�B�"b�b�����@d� �&�e(q��pU�pv�[�76+�#��;|�Ϻ����˃��x�e��=��rLX�3GO��7^��{*����u�,�v��s\�j�*���Ζ�!�	A	}sF���$h      �   �   x����x�{i	����Ghg�rzxp�ed^�����pw{)��T����=2����?��1*l�������&a�����;2��.�U~>!0{���6���[�ґe�!��z=\�r&@&�>��)H�����@qT�X�����24 iC�Ar��!�! �=... |�[:      c   �  x�eSMk�@=���=�`�%���U�ar��Q���&�L}lsȱm=��PR0%�J����?��5!Nkg��7o�!���WBŉ.O�b��Kvɥ �ť��
q%�z�u(�����6��U�]q���7'�X�W��i4��]r
�<8��
�3�����~�Ry�}���V�J,Q}�N��.�,��a8�:�}��s�a�#�G~(�..Ԥ!��ّ6l�31��);m�]�"���D���5a�c��.~�"������m]�l��S]��x�N�俽��O�5�0�ۢ��)�� ��B�Sy��X�_>t)v��M�x��iZj�i��G�ҿ��ʨa�Z[[�&��T�v�.���T'^���AW�"=�����v	D[Tj�~��NT���J�nG�XV��Z]����5B�/��[^��"P��X&!=K�*f�!0�f$� |�;a��s	��xj�0��˞G��[fWö<�ٓd�^��+7�63�����@�P��0�.6�(�)�6�\��Ԡ1�]���1>p5c�G��|���@;�%OEz{ͲE��A�a�<���!`vK��`� �'�r���vf���Xz��ϕ�����UC��<)	Ё.��ٖ��~�-�f#��OT�� )�rR�T*&I��K"��3qx71��1��؃�H�χ�1�>�wO�[U�����Y��      �   �   x�M�� C�u�����r��qК�_Olgq&%MG� rR3�LK�$���RtK��FX�)q���tG�\�O���g7%Dm�cc��tZ+\��;� c0�"� �P+�p���A�P���[6�F��o[;��RZ�M�i��$y\�=oǮ��G�1�$�x�6µ!��#��6Mo��'�~z�?2IF      �      x������ � �      e      x������ � �      �   R   x�3�LJ�/�<��T�$���@25_!/#����\�2�gII|^�P��_��]k*J�ZZ�P�p��<�����=... H] �      �   �   x�m�Kr� е�0)���g����f�*VOEc�&�Z�8Sj>�.ឤ�S����݀HڊC��0��i�ڻ`��1�9�2̻
ꈦ
��ˮtAwSe��Zw�u�jx��VOHt�nXWS����舎���%qݐ�7t� x���
�S3�P�@�stx��<S8�����dS      �   {  x��ԻmD1D�x��J�������cF$�]��2y�y�M���1�3B^WD��C>���A��ڠ��A��;(R�QN��\�6W�Q,���bAUb�rK�R+գXy�3��W��h{�Q��>�/O�D˫Ѥ�@4��5���6�D�?�D��S�5��́hL�J �j���D����]�hq�/�D��ј�@4��5-���D�� ���O^<��1#6(�h̨j Z<-�O���)�x-�DcflPјY�@�x Z</-^D��S�y�2 Z��Ƭؠ�1�6��h�:@�x] Z��o\�>y�(ڼ}�ٱR9��Z�E��E��E����|���_�R#%      �      x������ � �      �      x��]K��u]�~ŷ	� ��n=�%���!-�ٌZ��|��w��Z��"@� 0` � Z�K
��'�o8uoף�����'$6%�ܯ��9Տ:m�js���ɭ�Gz���/�����Ο~���ͣ��o��ow�{����˿9z�����͏�o~�����ٛ�>�=9{��O/��p�����e�\`~ҋ��_D~���O���	Y_"�!�����������o:xL��/wO߾����W��v�7<>�@�s����ߎ:}��T9�}x��������?�u��}��b���O��짿�������k)k�s�|����7q�ml6�w^��������|��cu��m���=x���ͫ�l�@wIa�U~��|�������N ���������^`��^
LI��.��n`0AfM��E�������c!H���ǂM�����`	,'"�^�$VNN�]�
��R\"%P���F�K�
��ۂG����W2�0	&�a&Q$J��}xw7�à�n���*}x������J@%)�W1hA�֠��x=u��נ�B�&��k�����xUiր��x'�$��[�`�4e��E�|EHV�e O�bs�`�����~���:0����
k�8�d�-K�j���q����X������~�{'��?H� %�	QC�� �����
�W[4��?ݷ����X6VނD���"@�q�ڻ}3n�/�I�j��T�I�_e���#0]�^�b�b�k��#K�0B4a+0�<n
b\d�X��/�_z��h�;р�Y�.�Şj�9�^���U��	�0C���|����:�	v���^�78�dp�[���вE����;�@d~* R�/���
���8j?9��C%kk(���Ui�aR*��<���Ub��;�2�tL���� �!lL��ۡq�,��m��^����	�M&���5�q�j�I3-���y��]&]���qâ�I;-��;�;��e�H+;�&���?~��Ʊ��}�h�C��!����"C�x)�S��x�K�"I���UU������
�"a��L[j+ع���U��B�u�V�Ϡ׮�:��%��;�W�*��[{��+u��4��+�u�w3��+�v�.��?��xXܻ~u���O1�ش(��/bFU�a�E���RR���j�1T��CXB2��l��Pj���
�JX����JWX�:�&������mV%k���� q:o��ĭ��i�Z��ed���T#ck�aA�����D/B�ɽ������w��7�����x�|[ѽ3P	�QFo�=�~�J7����:l+�����{��I��h�6/8CN�TBa\��9Z��R��M��wĪ�4���\�� Z*�v����⡡L��m�jm���0aѭ�Q\S�`z�����-�q1 �~��~���c3fi3fE߾���r
v��0��0����,�����l��ɢ��d�o�0Y�0�dݷ�,�l��m�,m�l��7�,�\t��|?mӑ�8��Y_�#5q&��G��l���)�4����]VɊ�kT����\��š�x��]���<�v�r(V>舘z�P�|�\���P�|�U�Tˑj���6�C��<��O�ݼ+�?��yE���?����^����9�=�<�������^�ݑԨa~�E���x�U_)gd&�錬R��| �YQ�ꡃ���%мzW_��
���z°���J�����a����*������
�U����iU��{4y#�HZ�_l����ͻ�+� �.�O���z���=
��mO�k�B$�*��4�V��~���%���F�H�T��솲�M6Hj�~d���m��N���WuMa�'������-tc��r2�\z��\����M_�5@��H-��S�<��HW�Tof0�>l��E�R��Y����ˆ�7A�D4�;��"��p4{r�V'�晞�z)Vz{9l��,0o��ٯ�P�c�BӃ`/u�n�&��
{i2��l����v�$֍4>/�2�M[i|x�enj�wV�%��q㎏�=�:z���1{(�2��8{(51����>��5��?�^�ѤZ���i�sd�,��ȃ/�����8�4"�BM���¬��l�+I,�v�t���M{��Y'J�R�0
�O���Y%���24���.�Ԥ�Yeny5�eF��g\^M�z�h�.�'�̦�����IsJ4=��2�<}�������}0��/��|�Fm콶E��Kȼv��ë���̏rX"d�]z|�G�,nR����Q6��;�G16� ]�gw��RQ����QŁޠ��dϛrW�
7>�۟!,����s?o��A��1�7e�`Svz*�MY58E~��+髹7f&wWT�	[��ҫ{ޖd@*���F���
~�X`��	�Y�uI:���S�q�?N����k`;`��Bo�
+p}���ޢ��d�W��&�>�<�����w�C�[�$~�Ӡ��K�<m)��H6o%=m%�����Bz�BZ1o=m���6I��H�/�vV�[E7L`�E��Et�T���������aK�qK��nd�
z�
:������-�a��q���^g��y���9�z��z~8������vBy�V1�x�r}�u<=�(�{Hy�J<Pү�*��*���N�x�(��{�rm�z�(,��rg�(����Q|�La��L=��!WX������}�V#l֨��!�x$�Y/��?���&�~���6�fJ�����#K��6 ��<���ξy��t��z�+Θd���wE,[�q�Gl1��[wX��0ţ�+���<2A��,���<2��i��cLራ˸��^���k������<Vc�հJ�@�.�B/P�E��2/P�e��"/P�e��$^��ˤ��^��ˤ�9�򥽝^fIPr��EO�;$�G)A^�]ս�����o�6�^=��\�fwh�e�����~W�d�#A���񲑾��������ӇiG�������������s�Ƿo��gn��R�vH���+GNV�� ��%a=�Kuf�xwJ�vJ�*)S2o�$m��?�)7�$��6Z&����U$8�nJ�n
�rY��*��*03ýa%qsbºђ�т95a�qI�q���l�zI�z�9=aۃIڃ�9%�܌I���'�����/N�������S]��G"]I�����L��h��Y����Շ�Q.&^��-�32f�2�>%�dU@V��,tg�hR����cO��4��X�	Иt�,	Вt.�fhF:WF�!�K�4 �k�� Y��Հ�t�LǤR�����!��!M� Ws�tyg�	�i��/%��*2^�D]���x�ʈ6�"�5z��z\&&^�Ud��fd�ƫ�x���6�"�5~��j4^;$Ї1^��k�\A�ƫ�xm��W���\X�W���\�W���\6�B㵹&���\��\�����-n.���� .�\�8���6��l1m1l��W3����G�N����}��n������߾��������L��Չ*�hRۘ�&�Ʉiv�ц�������*p*��MF� ��U�2�؂\:���Mظ�pv��n�j8a�n4�J|����Fc�`�jEa��ʧ�P��h[��*Ն��FQ�o�T$
��&��A>U���F��
��S]�q�6*\X���rSl+	׉��A��eV� ���|��~�'3����wv��!&m��a��>��_3~�2/vS�3#d|���gF>��m5f<?3��Y��ڃ5����3�p�f�����m��P�ș��6�gkF�\.�-:�QB�z�k���H��6�nF�\18��݌L�V0[5��R�8�Y{4k!R}�2��w�D�F�j�Z�a���VruΰȮC�儋���(B�Æ�DH>���]���:!N���Zd�!q·Ѯ�@vb����]��D?�]��:$1�51۵��PB���ɮ�2�f�Vx,J�\/X�Z��(!s��d�
�G	��Ѯ��k�]+:&% �Cٵ�����rUv��kPG��>����}yf-Ȭ�k���٥�iL��    a�tDM�]��P?.���I�Q51n�b6~���jb\{1�V��#kb�s��n�g%#샙3]
�q[3_*ՊmƌG؄J��ۖ��P�6�2e*�m���لJՁӐ�H�P�.0۱ ;�[sm�E:%���A��i[�Ϟ�=���(��~{�Lo�}�V5_�,�1)1�g��Ü霔]t�e�o��a�c�n�tRJh[��k:*%�+rn5m:+%F�%��߀�=R�3p<-%���q<.%LYg��9���,+ܖ���)�
���)a�����Ȕ0ee�4y:3%LYS���M	S���$�7%�2ۧW	���=>}�x���O����?���c
�hZ+���[��yd���U���*�:�� �	�A�WI�&"(��::��E����^������zX�/Q��$��\ܩ�\�
�ōY�K&�ǝYa�����\ܢ�[�
+�Ž�jr"�rwe��U��R0L�>w��*p�m��b	��.�d����?�	+��:v�ѡ*�)v�;�9*��bk�a��~?�7�i)�a��dMt@Jx5��r&:%�.�5ֆ���]�/��'�m�[��N�G���Jx�I��YL	�4�!�GO�SLr��Ò�������HtVIQ/rڑ��Y��NA�t��V{�	$c[�}�j'��j��ſ���۟���7���o^�X �S9r���*��\5�@ qI����U���нU�I޿�8�5�j&
�qB�j^�D����$N�k�n&�/ `;��&��",���V���R1+�J�Rĝ9]+fh7���5/��w����rq�G&؊:Cƽ����(t���|��Y�ґ��i���\MX*�f[�Qy)�����݇wOxMӐiJ]I�5���S��h�y2Oi�{���w�0�!�>#c6RCF
CF��L�)�Y�Ϊ�PA&Ї1U��
0W��4V�b��4W���`,��h�Mri�`��rM`3[Cf�p�!�U��t��J�j�א��7O�;{r�����|�p�ڷ���+��tͩ%�U*��캖\W�%���q�M6F��k�s�M��-ג�*�rmr\K���rg�h�z����V��zX�֢��L6��E�ՙ���E�ՙ0z�E�ՙ l�Z�V�3%`sZKN�3�4ZKF�_3���%�վ��6�5�[�[xt����֧�N��i����WGfkd�j��:�[+�� ,�J��뺎\����:2^c
t��ב�� �Y9گq�aء?_�	;4a[R�>�ЇmI$X�ءےJ0��C7�%��`�ٖt�͓y�-)�-;�e���a�ّ3�\U�Ɯ��Mņ��-�7I���[�n�.���$]�!,Oq)�I�T8��Y.7I���<ѥ�&�RI��\�b��Ked��]Jm�oDܹy�
}�����^Mao2A�tF�T������K�語c�t%-�`�%]IzX-s��/i��c��%�`��%}I}�,�B��/���S������)J�\����)Jzst���'_?{t:R���:���'�m-S��jJ���L[�^S���~����u ��#����r�`9��kJ}�A�l[�^S�0��Y7Z��R�x�Ƽ'�lE���1�	��V�;�Ƭ'
��i���`(h�k�y�� �v�1�	DA��XS���.0����'�(ċ5�;�ȴ�J�XS�EW�^�靪k�u����p�_�P��?(�=�S�tB�䮚q�]:.��D���9�	O���x�H�W�1�̗��P�`��A���u���	*������Z�\K姏��B/ʴߋ_=��"�����Q��
$iW}먊"��L����*H숴�+�pT�t�;�ޮ��OIX40�5K��;uń� ��[�ɂt�D&�?#Xu��������#��c�=R��^@�'ڤ��h���`N{��$ ����#�#�"����Z��3�@���kd�K*mD>#�,"Pi'r��J[���0sTڋ<FF9C��.d32��ؚ��[(O���~� r:������Q�hQC�>�'Z��\�R�@�<pW�a��J���(a��i8-�r�@�����(m�-��T��w�MA���<�K�3E��ty�'b
����,���$]�刘H&i�^C�\"0I_��!��I:��)���j�N���"0��K���Z� ��w�Xp^�Qp_G�>��`vHI�Y"E�K�]U���2F[�p#��q#��U)Q�5R�X=�S-��51����ڙb����f��k��6kt>��l$pY�s�$�$��Z��(1-	\��<VI�I�.g3K�O������(H	���~��������7?��ؽ����ٷ�h�������&%+�s%�m�I�J��|W�a��P&F��%�D�i���^���͔Җ��tO�h�^��0UL]�
�3VL^_T�^s��%�EA�3XL`_T.��&�Ei�5ZLbRCQx̖Ҙ�PT6åD&5�� �K�Lj((�/%3�!l:nܹU}�:���|�{����>�g�X&5�:�h:�Y ���e�n��U��K�}u㬻lt*?�R˄��S��O��2�C�T�`K%n�X%�nW��`��1.��Y*��j`���O�T�����>�R	Fd-_���څh�����J%�$Y�>�R	��u��Vj�vK��U�U��	H|�S��Im9aMHQ�=肨Jyt�峯Ο�=<?{"�p��w�̕��Y�p�D)KJB3S4��L�J�Z`�ϱ���:H]��X?.�4R��� ��֛x���n��.�>�F{����n�Xf��8?-	+��%姌��aI+jr�S��P�$})��TK�Г��ۅ%��I�O�C��:���g�+t,�BW�~F�k^�8�?+	�ɼ�lL��(����ƣg��?z�d��'/��Y����x̘����UW��RӨˋ\��LQL�lU34����Z/S�0&�����9'9[Uh�d�����y�wR�,��8=�;)e���jG�Wn�Z����55q�=F<)�,H펏OJ/���cȓ�����1�I�e%j�}�yRzY��:?�<����������P\��Sғ�K������t�ځ�߹���x?�<)�yZf�B��fyz=���U荵�`���x=e;)�\<�L�NʨY�K�T'e�*r[�h��� _�c�2v���%e�u�݂1sI�y�_\Rv^�[/�-);/���QK��+�V˥�%e�5��n)dI�9�V���%e�t��f)^I�DN�����,6k(\IY���0�����u�<�׍����Bo�=L��ǈ�f�*)'f�Xl�P��rr���f*)��m5��:5�|�6k0LI9�V���RRn^�m�`��r�2�`�c���ׁ�6k0DI�yAh�Y�J��+�F�5����l�YC�I��	�uڬ��$��t��fE')�� ��fqWJMR^����&)oR�^/��$��hc�8�.礄$�}J�c����!���I�E҃�l�0أdx���iHz��28�����uo�b��f�>�?�C֭������m��a��~��o�w���Sl��������\(�HQ�=<�1���/ù��)�R
�+E�8��XZ�B��P3,��F1Gz��u�ƺq�����Eiag�x��p3L=�GqGZ�ܶz���PĽV� %-�r5V�QJZ�i@�#b���s-�a����\�o�GT�r���m#������nI�JZ��;�iR����f�V�`%-��j���!H�����|����A����*i�9A�gR��X�m�6L/��p�8%*i�9	�IR������#�)i��mU�5�K!��1HI��-��1FI�BG�{!�(iUh`�%�
��1@I�B+���'iU�᭾G�IZ����(:I��u���(8I���Y��b��B�_�~j�˛8�~�e�("Ik1���J/�ZF��8���Sxϡ�"����m(�Hk]k�}F�V��,"�m�o�"��&jw��:�?��!m����;	fi�c��`��6Qnu��&�@ߠ!m�"o�q��F׭���b��^   $�<��<��(%H[�2C�����{/�(H?�Xe�C;$C�bC�����	x���~��1A�Q���P�k��Ȫ)ܵ���h��Ep&�h�tj�%aZ��Icr�&�h�t�v[�Tm�m7&L��.�ͭ�D�;�%]�`N�����Z���A);�A���a	�> ,�fO��%�,4������%�����>���`M���c�Gvs��
q�\�㫾 Y����u�����>�����u0���u���24��A�=�W �k��PB�g�)B���+��<�#����&���c�2	�Q��q9ؐ��1�t�:��׾�X�pUGX�q�
���7���ȳO#VԠC�n��p���Y��И֡[f�Rg̠�н�C13f�s���ܙ�ǳ�ɘ�N�ẏ�c���=�CQ1f�%��ʂ�1ص���!
%p���ue��`܋Qr��u�v��@#�vl7Lp1"�í�C�-FD�`>��b��Y���@�,F��U��TL^6��O��j�h8Ů)j�[f�rV��1x�Q���0�Xe�C��!`�!�N1R�<FD�&F���Ǌ(��H[�k��H�)ܵ����EpƓH:�ݒ0��@Ҙ��$���nK�8b i�vcIon�&�1�t%�9Q��õ蛭�RC��U���.����,E� |z�<Q$�QC���Qb�X�l�3̤��(���~	�MQԇQ*a��)
�0J��ՇF�L�w�N�aF�rV�F�=��U�aTڢf�qF�=�ݭ0���Y��
�9�N�t�_Q ��i2�p����P��Ѻz����U���m�����/���7?��[��0ڮ��}U������^r��-;��\Sua�FM���՗���d�=_��
<���S����(�#%���Њ�"(��j*�t���jB����jp�B6Qí��P�4r�q�//���1Q��/.����k��[zi�j��*�Q����P���J�E�FPUA�Ru����R���>;�����g�A��?����{�{���ś�lw~���8�0^������������s�Ƿo�����h��*Hm]x��|w��7��7�GIq~_�T��ʯv��:�'�����������zy$�{���w����#���G�������-�����&)�!���=9�����D�4^�dIO���*}7Y��T�W��O��X����_}z��]q����7>�˅5�o�Ԏ��qQ�r��ōc�ɸ�s�u��(LW����b���
w����������      �   �  x��VIn�0;ۏ),�"��E/-�s����ZS � F%4��h.KG��k\�]�_��>�>������~��W4�"��G�E��B�*(��|H^O
�h��
a(BJ���(:ʫT�HP�Z�0(&�Qaɫ�i�hx��B$jU��xzx/�s/��S���mg���G�B<�7ō�R�,^�w:�^0E�k�FE(r�j�9�T�Z-��Eǃ���***��D�^����e'թ}- �yQA��*ZEr9d��E�����v�s���ξ��~Ѯ"�)����+���T�
*}L3�ǲ�!`|É
�B��mf�͔?h*�����2-�A=-�r�Au*_TEu��c���10G�o3m�|�D���::�r���jS��p�p>����~�`�H|.�"�p�����t�����Um      z   
  x���;s���k�S�I��s�};��X�d�E�,�Ќ�H��-%Q�I�:e��X�h<)2I�J,RГ�q�I�Y</�إ-j �]��������<�^��f�B����8=8�������=��@�������?_��}�)_m��q^�'��AJ,4�)@xT Å{/.K���(
���{ ��{�]��Z�5��k�44�h@ R),�T��������p���I�����7@[�I�:8cY��.�B�:��R�*4��4�It?�i�<p"��1�{I�F�3��h����L2�t�n2����R|"�/�'�F�;4h|(�{����`XЛ�� ��10��������
�m��Z�ʹ�V��4I��DC�p����}����
�%��a�D-����c�L2z|12�D����D�sd��-�'���^���� I��<v�ϯ���+�fI��M�$�y89̏�l4hi`�e�����3��(�"��d��f��,B�r���>ԒѬƸ��M���6O��P�7�������o�t��d:猈ҙ|��y��)md�𚅤D25_H��f��^���M�>�s�a8��j=�nIQB�r�@�r�@	5�_����t��]�i�2-T��H"I����G:�𠐦�s��ُb�^A�X��P�����l��m�F�7���f���2����,q7!��<��Nt�q���)o&pr���pTR�>��`����=�Փ�;J$��ɒ�Ȫ�rfa:-���ΥC��RY��e�����!rI�B)5$u�u �p�2N��(����{������������;�[Mb��V�(RHR�= ����5C����3�@ɳ�v74<rB4Xp�z�EʉK!��ל�NP!�>Fhj,��cy!�y���.��Wڐ���KCO���.�P���*�pZ���&Ih�j�����%��(��-�fj�Vw�Vjo����)�0T,`�I��Fs>�6<��;� ���k��t�Dpa����d��7Of����X�)&�Za۩���ڗLF���M��}�`t��d=:���x�6�+_2z+br,T���e�1����U�C�7[<�׽d<E.攡�e��}��˗G�Q�/W:�~C�Iʙ�K�S�Pr�5�Y�]S�x+e��NV`�Bq�ojY�� xz�k2*�6�҈���, �4�Q�63��)&��zG-�	��l���7�����o$�<����{�az�ԭ*�����JuP?�4�w��ˋ?�=]�DB���+�4��p�I�qf!��IH-Q�O�����ˋ��+�jD���R��
��Jz�b!�`�KM4�EF?d||���˳�:��k��2'��z��ik����W��_.��۔�N���-#��E�"jUye��1DC�a�z�%��ߟm�6����Ww?���*]���(�8�Wci���%sa�c�����*f*�������,?Ϸ?�nym�aT�LG��-�� T?����]߼+Oo?�]W�~�DB�O�b�5�-9焐���C��ь�!;h�ܰ`�� �㨌�`%��橩)��#��y�A�x��O��h��Qd[*�tN�"�������/�߾��f:��O�88�tOj�8�|x�?���dX>lV�ɦ텶-�|�ͼ�{�EB���NkC�?"d<�C�q����4٣��vm֒�2S:�<:o=/&ӑ�¥��@F�;����_�����M��s�CP)��a?�
S0��j-De@�c�S�|���\sP�Br`�*la
f]2���+��v��"��MeT>��R���L*zx�*ոW`�e��マ�����Ҽ�l���u*�$�/�����#)�E�f�=��햚=�#F���O����-{]��Ұ���!�M_(!�=`&��0��wSL��/+c���?�N��7)p�9�W\|��
=��T������z���@K}hqr���<q�����'�VU�*�'iY~}�n�e������&<P����Z�XSmPs����Z7�6ԥ�{t�������O��桪�Ҿ���@ON#���B�y�_��z~�s�=���%������.?@�\x���b� /�;��T�[E��8<{G�������%����fr&�Ħ��b���t��U�	h�������69aj7y{��A��Sa��G��,�uyL}Q^w��kk ǰ�f������h|��Ȼ��#a�ô�.�^w���MJ=R�M��޵�7��՟_���^}HNk�=��5��������[^C�r˰��cs7�i<]q�V�w�������Z�I�<�����7%/7��CY����B��A���,7�t���rlȱ�q��MM������ ƕ�����r�.³�5�AA�N�a�k1��GW��*�����í���uN��wG��C#�o�����k�X4m��e���1��.�e��Jy���(L���%Um�"8�s�PU{)���eC�_�J�f��c��i �8�Q3�Zy9�)\���D��f|�Toڷ��yR��z���]ݺu��U/�e      �      x������ � �      �   J  x����n�0�g�]R�W��"�н����Rrр�z��|<�"��Ģ@�Y������z�߿>�?�6QPg���ԸH}={����A�ZEZJ�|��1_J�嘭�SI�g�А �e����dAR��Cΰ[��Q��H#4��s���"�*D'��N�᭮�	a�FpɡD�r��q�d:�@���0��6�pf�O61��	��N�寨���D�IjX��,�8;��W�x�!���]r�epE9w8�h�GϿ���g��y|���L�qZ�4�Oٳ�喺ʿ��<�Jh�	E����t�f6�B{��VE��m�/����      g     x���;nG���Sl��;誮��f4E��e��(���A�&K���0��c_�7���Ci=؅`���c=���6s�nO.^n�t{}y���8?����c�;�ӅюK��ԕw����.�)�Y	m2��r��5H��g$>%�3��I/���`����?ޞ$7��#Ȏ��d�(Y�݋˭���7�7"�����[�@u!�&{׽����noNw4�	B����"TJ����Ov��jed;G���ZH�QE�z�3�.��:����E�y�]89e@��5֏�(����8�@�e-���j�c\�/��S�Y�e4�2�� A�!���|N����h6gK�'A�Z	s�.�ޫ��y���vNc\�;��J��&Q�����_��h�=��e�\J��i[����i��6x䜔�5�2���	�~�B\ ���}uzI�7'g2�
1��9Aj��Y�����\R�/ŜRUx��}&�~�5�6�AE�
�%?I~�$���+LY��͟�E�?G�(&*�ԥI�*�&@Ѱ���s#��1�����>�%>�|�� �7a��x8%����$.����{Gї�SS���P"��]� eI�#�FrS��C�Z��HQ�T��p]L��I���B���lw���	7�Rwz���oO���A��v�WY���q���
Ht�D���Q��L#�,1�TSWb������h�e�(,���p��97�zb$9=�p�������ۼr�+�\�Yy ��ڽ��������nnlD��Di�H�������Ow�k��V�[%q�<6CT�a�6>���������O<��_���[$wl爜٧�JiwZ��YF!#�f��n2ñ۫b�0/w[��Sγ!_
} 26!�2��H�ZټKX��1�x�W-4��۷'7���O.oG��͐z�5��H;���W-ܛ����� ����7̯����b�q47�	2�Aeﰻ�b���R�DI�q@�\��0�t�X5�M>�a�eo	af�jN�j�~�e��Z,�y��
5��!��qЀ5�D��^Kjf^��|�6���Ơ���̡��(�\��=s����qWC�эL�jNi������R+�V�م^��~= �n�ĄZ#�7��!
��$ky{�H{ɽ��i���1b,������%�A��+�"���(hx��vjw��(�Ʋ�b���~S6��W�A����Z��wG'�0N�)�|��Sl˄�������VB�f�/q_QP � �����"sϯ� ���z,Z�z����l6�N��i      �      x�3��SpJ������ p�      �      x�3���p�2�u����� '/�      �   M   x�3��u�uv��u�tr��2�p�w�p��w�t�r�r�L�b�~� 3�r$! ��dPH� S��I E1z\\\ r{*      k   �  x���Mr�F���S�&UP�v���� �1bc�f�$�X�r��L��	r��r��2��"�I�@�c���J�5]��V��F1���-�Bbge9���%��C����KBa3���7J�;����ӳ���L�#�Ӳ�I֔)��d��zDܖD?�c�Z@ո2�]�"�hE�dk�56�z���t�8�&C<Px�M�$ ����l�d��{>L��A������~��3ɛh�6�7��d�7x/7� f�@e���d�(���) �2g4�N���X����< �p����Z�I�5:L= M������4k�/�D��������kH�5���"9�b�5U_��x1�~0n?�x�B��R��b<��\I+Z��Q�����I[�x�	��������Ī�/�a7,�	%Es���x�)�lP"Z.7O�t^�8��hÈ��4�yf(�qh��O�;"N$�r�VP4���&�����(3�:�����v��W��T�'K)92u2d�����!�I����/��ۂ�)����ۛ`~;�0�8̲��w��\/w@G)%t�iE��ku�Ѻ�����}�h��)�|�o�[0�B��Qʳ u��yҹ�oC�	��]|]0�<64����X��Ne_���4�*8l����&�J�$���^�"���!r�Ug�ˇ{�/O��z�UyY�Be��1�e}<�N2�t�P6�?��a�Dʡ�0�n�*adS��z����?�T4o���q����d�l?�I�ˊ/\s�]����j����&��1���&���])j��	kR��q�����@����z�Y�Z�J�ѯ����<��<���[�i��9��$U��u�q����J����K�f�1M7�����C�C��8�AgI�8^Xl��̠>oɠEA�N7��j��Ym�%����m���(���x�r�����N�Y��QOcV0�p�Ҵ�U���m��Q?cBhw�w1]t�:	h~ˊ��L��4G�]�p�;���u�<YmlB%C"�
�;��^����4p�2u�,�̏�R3�L�l��
���Đ��5
��c�r���vr$�iC��k7��t<���L:/@��z"�a�fmUS���`���\����S�!��;!��✢v��饾;?;;�vVb/      m   -  x���M�c7��~��b����4�F�� ��wR�.�d]H!���)�PCx ���f�����?���_���w�W�_~m���M�E�Hе?lac����#�B�~�#���1aF�;#ˌ(���D�B莠
1�R��G��!m҈(b��$]"
u��	������v�T�A��8+��61�X��8�B$e1qg�`虊�8��W�9"�鈃8K� Iq.�A��@�6z�B�#�,8'�(q�2�,V���8KD�Y��)���9f������1��3�X�]�R�� �Q����!�.��S*��!�)�{���FL���B����&���}�wu��S#����)��M3�<�=��Y#Fka�!u�G������'u��<�E8���=���D��� ��F�q�Gmj׈�}O� ��,q�G&Mq����Y"LY!�@�Y��t�YQ���A���Z�#t��GV�-t��{���F7�(bW��G���(Tu��]�%�ǁ��@�����l�PX�����a�Z9��թ��Y�(��tWg��6!s��:��=b�y n{���&Ȑ,G�8+��9%�B���A�B�$�3qV�g�s����,:$Kd!�|O�R��}��Y!���� ���������A�%AW�7����tډDn{� �
���E��8{e{�S��]o�ڬ	�[�E LXv�G�E�{��n���]"� �K�h������cD'D��Y��Hn�Ck �7�b0�]`�/Da݀Ly��]vH�(|l�2����� .DQ���c�#�� ��ـL��.D󍼢0��B�	4E����yEQT�!�$�)��*q�����.�U�T�ӳ����FFFA�_O��1���?�*>��:���^�������B���W�h��{w)p�������XL�9kD��w�P��n���͝f����t?�ZYJ#d)k?�RY��	CY����Җ/{KY���.��H粋yHgiZ:4�Z��X��V��p5�&�%R"�2�E8TH��Ѹǁ�g*��,�,�ѻ�BU��i|���涟i���-�J�}���-&����vUԄ9�-쪠��"�����p����w�@�7Uo@M��.D>7á�K�NLq.�>zS�d#��d�s3ܢD��8��z?�>[>���q��^��qV���2����,6D+[<|��^kq䇀5��ՄM��h�k�60���f��4&g&���u�n�t-�g���������<oh�=�B5��ojO��S�k���?���X/�z�D���2���g  ݟ�^����rS�� ��wlD$��	#�x�����m��?�
rz�t����C��ّ��m�оa>-d��\�� 1~>� փ�O~a�X:��ϧ�z����l���e���� ���Г;����5D	(2 $v�nM�+xz�ؤ�Q� vO�M��27� ��� ��Co[Jv1_;��V�����}u��&`�G���/Z\~���BB�M�������7��Z��{	�z���8\`���p!� `W~I ���u �h(�[`�Fv ���ڂ�c�}a����%x�|?s�L�X2'\b�0� �7³u�|�X�7�ebY��g� �j���Ϟ�wg����2��U ���C�M�<;I�<�@�9y��kj4cxL���$7�O�ZD��� x?s]�?��o"���F$� �bΆ����j���˩��TY�'��^F6������vj)Pۿ����������F��      p   �  x�]��j�@�ϣ��c{p�]ɒ���P�c������PK`Km�y�^�C="J95������&�4���gg���%L�����"(���}ه28�@���:͑�N�fT��0M>�%��C�C�!����5��5��I�Dέ��U�lq��1уKk���]����__�E��zV��q������l�!��x�W]����V�K5\.���wk~���5������4/2�*Sv\�t�`zt��)nlcX�<����b�N��`l�:Ͱ*ۺxM�2مx/���� "��m�[<s�6�6��.�ˎ~;+�X<"�gǻ�O��}�'��y.���$,iO,N�`Df���Q]��Ґ�y{�3\cfV�8)1��b<8�S�<��z����5���יּK�}�^eH�L�Sjʦ��e_�՚o���"���8�2��.      �   �   x�5���0��az��ػt�9*���/Ȗ 
��$��BBk&��G6̪j��M�#	+�k59|��w��N��M/|,+��y�����j�ĉ�U��o�!ƞ��RQe�Ȟ�M��;�%�̐v3.%v���������-S,�AO��/�v��~D���1	      q      x������ � �      a   �  x��U�j�@=��b�-�ƒe;>&jAE��"L�(
H"�:$���m�&�=��LI!�C.�=����?��-vjmc�%��f�ͼ���0巘�"� �2Q~d@���}��eæ�� �G�m�������3"��=��Q,�Dy�i���:�+�e��6Ow�*�N�b��:���D?R���=�N��#�s�}�||��E%��p_�ׁ�2���_Ё����7s�K��T��P��4�'�J8�d�j�W�u�;�|m���a�#ʫcQ~�P�2���ykN�8HdO)��:[S����8�Ce:� \Ҿ�:gsQ���B�����r�Ϊ��,QaRj�&�e��T���p�8M�%�è�4IZ3�����<��e���bC�;$���Ŵ�1�j0wM��&$).r�%9�:x��m�%��|�����5�Q{&�EmQ|�Sٙ�:��r�SQ\�������Y�du;�Q�'*���eS�k���%���b<���R�,�>0ܕ]���0�bi�TyN}��ёlpi�e4_�7�eY�#Q�5���,�Zr��a�jN��}v�V���cTߦ�.�rx��Z��|u��V0�ْ���B7��4��+éN�=j�wU*ٓ���h�è��JpF�������^�ه-~�q kZ.Rp]|���>�V�Z�7| �iGI�Y����6��Sx#      �      x������ � �      s      x������ � �      �      x������ � �      �   �   x�U�K�0��]�H�wi�E�S$������JLX�y�=ְ�fd))��-�G��ݺ��r/y-��(���a�z��Kh��0=.��#x8�8rk�[���=�:ҭ��q"G�_ȼS�[����>)�����/V�G      u   �  x���KnA��=��e"��ѯٙ��cP�D �ˉ�l)2���b��:�(��M����A�ը���������&ۼ�5ޙMNwZ�M#mS-�q��C�XA�^�.��������D����H������.R�2ޡ���U��DQ�>[S0����
@��6�U�ȸd�Op`P5o_�h�:P�5��c9�L�Xq�`4�wD,�{w19��p!�B�bW�=�V��gK����Q��u�*��(��fC�0f��ċ�&����2�)��sa��}aQ��ڵ�[Y��jN&B1J�0�����۟�W˅>07��}�n/�ԦKr�BN8I�1���/��Z;�['���G��.�KlY���j�qy{�9ݱv}�	1P���L��N����dC�=!���Z�R�>;����9���8k9bAM'��~3��'/AJ���=&��[]��G�r��_���)���B�J�
�j�3-%(�؟@\#p�� Eu��p1�Gq.�()��T�~i5nl�}�Y���H�!+ݘ���À��h<X�A�z)�^Ko��Z�]w�W�8�+ӣx~��FW�T3��� ��]�$s��.u���&�)Bo�����tK$Ԉ����e8�{�U�����w�ޙ��~�mWl      v      x�3�42�4�2�44RƜ���\1z\\\ *�%      �      x������ � �      x   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      �   %   x�340䴴��24�21�240�440�#�=... e��      i   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      �   �   x�3���x�{������;B<B�Z�������C��`j�=��y(�=��Q�������eS����{l}(D���eS��"T���e~%���Ύ~\����@��KB@�x���=... ��9�      �   �   x�-�;
�@�zr�9��y�jM
A�X�ѨIwU��g���!)׋�M�Ymv������k���oX8K���T�b�d��/��H��,
�9��~�4v!�Ļ���c�j�V܎��Wq���j��z�}���0��sG`� (��o^,�f�/�K�u�Z�ZX�gFmկߴa2q=�B��?�f$Q�0�/e9UM      }      x������ � �            x������ � �      �   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      �   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����      �   5   x���  ��[�Q�^�s�&��%&�`��Eb�Ep��bQ?�ہ`<	�     