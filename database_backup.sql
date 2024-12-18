PGDMP                  
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
            public          postgres    false    249    5            �            1259    16487    ledger_details    TABLE     �  CREATE TABLE public.ledger_details (
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
    dur_text_tk text,
    nhiemvu_hanmuc_id integer,
    so_luong bigint
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
    public          postgres    false    282   L^      �          0    16873    assignment_type 
   TABLE DATA           3   COPY public.assignment_type (id, name) FROM stdin;
    public          postgres    false    259   �^      �          0    16797    category 
   TABLE DATA           j   COPY public.category (id, header_lv1, header_lv2, header_lv3, type_title, tructhuoc_id, code) FROM stdin;
    public          postgres    false    253   �^      �          0    17060    category_assignment 
   TABLE DATA           [   COPY public.category_assignment (title_1, title_2, title_3, title_4, id, code) FROM stdin;
    public          postgres    false    288   
`      c          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   �`      �          0    17022    dinhmuc 
   TABLE DATA           k   COPY public.dinhmuc (id, dm_tk_gio, dm_md_gio, dm_xm_km, dm_xm_gio, phuongtien_id, quarter_id) FROM stdin;
    public          postgres    false    280   �c      �          0    17076    donvi_nhiemvu 
   TABLE DATA           ?   COPY public.donvi_nhiemvu (id, dvi_id, nhiemvu_id) FROM stdin;
    public          postgres    false    292   bd      e          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   d      �          0    16972    group_title 
   TABLE DATA           A   COPY public.group_title (id, group_name, group_code) FROM stdin;
    public          postgres    false    271   �d      �          0    17052    hanmuc 
   TABLE DATA           a   COPY public.hanmuc (id, quarter_id, hanmuc_md, hanmuc_km, hanmuc_tk, soluong, pt_id) FROM stdin;
    public          postgres    false    286   �d      �          0    17082    hanmuc_nhiemvu 
   TABLE DATA           e   COPY public.hanmuc_nhiemvu (id, quarter_id, unit_id, nhiemvu_id, ct_tk, ct_md, consumpt) FROM stdin;
    public          postgres    false    294   �e      �          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   `g      �          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, xd_id, title_id, quarter_id) FROM stdin;
    public          postgres    false    257   }g      �          0    16904 	   inventory 
   TABLE DATA           �   COPY public.inventory (id, tdk_sscd, tdk_nvdx, total, status, tck_sscd, tck_nvdx, petro_id, quarter_id, import_total, export_total, pre_nvdx, pre_sscd) FROM stdin;
    public          postgres    false    263   (�      z          0    16487    ledger_details 
   TABLE DATA           G  COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, phuongtien_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id, import_unit_id, export_unit_id, loaigiobay, dur, dur_text, thuc_xuat_tk, dur_text_tk, nhiemvu_hanmuc_id, so_luong) FROM stdin;
    public          postgres    false    235   ��      �          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   ��      �          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   ʑ      g          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   ג      �          0    17014    loai_nhiemvu 
   TABLE DATA           @   COPY public.loai_nhiemvu (id, assignment_type_name) FROM stdin;
    public          postgres    false    278   ��      �          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   �      �          0    17006    loai_phuongtien 
   TABLE DATA           >   COPY public.loai_phuongtien (id, type_name, type) FROM stdin;
    public          postgres    false    276   �      k          0    16430    loaixd2 
   TABLE DATA           |   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2, petroleum_type_id) FROM stdin;
    public          postgres    false    220   l�      m          0    16437    mucgia 
   TABLE DATA           |   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id, inventory_id) FROM stdin;
    public          postgres    false    222   �      p          0    16445    nguon_nx 
   TABLE DATA           7   COPY public.nguon_nx (id, ten, createtime) FROM stdin;
    public          postgres    false    225   �      �          0    16964    nguonnx_title 
   TABLE DATA           K   COPY public.nguonnx_title (id, nguonnx_id, title_id, group_id) FROM stdin;
    public          postgres    false    269   ��      q          0    16455    nguonnx_tructhuoc 
   TABLE DATA           I   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id) FROM stdin;
    public          postgres    false    226   j�      a          0    16395    nhiemvu 
   TABLE DATA           �   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, team_id, assignment_type_id) FROM stdin;
    public          postgres    false    210   ��      �          0    17043    nhiemvu_reporter 
   TABLE DATA           �   COPY public.nhiemvu_reporter (id, title_1, title_2, title_3, title_4, soluong, nhiemvu_id, phuongtien_id, ten_nv_1, ten_nv_2, ten_nv_3) FROM stdin;
    public          postgres    false    284   E�      s          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   b�      �          0    16986    nxt_reporter 
   TABLE DATA           �   COPY public.nxt_reporter (petro_name, petro_title_lv1, petro_title_lv2, title_lv1, title_lv2, title_lv3, title_lv4, petro_title_lv3, petro_title_lv4, xd_id, quarter_id, quantity) FROM stdin;
    public          postgres    false    272   �      �          0    16890    petroleum_type 
   TABLE DATA           @   COPY public.petroleum_type (id, name, type, r_type) FROM stdin;
    public          postgres    false    261   ��      u          0    16471 
   phuongtien 
   TABLE DATA           l   COPY public.phuongtien (id, name, quantity, status, "timestamp", nguonnx_id, loaiphuongtien_id) FROM stdin;
    public          postgres    false    230   5�      v          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   ק      �          0    16928    price_status 
   TABLE DATA           0   COPY public.price_status (id, name) FROM stdin;
    public          postgres    false    264   �      x          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   #�      �          0    17089    tab1 
   TABLE DATA           )   COPY public.tab1 (pkey, dur) FROM stdin;
    public          postgres    false    295   ��      i          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   ڨ      �          0    16945    team 
   TABLE DATA           3   COPY public.team (id, name, team_code) FROM stdin;
    public          postgres    false    267   ��      �          0    16992    titles_category 
   TABLE DATA           ?   COPY public.titles_category (id, title_name, type) FROM stdin;
    public          postgres    false    274   9�      }          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   �                0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   0�      �          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   M�      �          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   Ь      �          0    17070 
   tructhuocf 
   TABLE DATA           C   COPY public.tructhuocf (id, root_id, dvi_tructhuoc_id) FROM stdin;
    public          postgres    false    290   6�      �           0    0    Inventory_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Inventory_id_seq"', 1225, true);
          public          postgres    false    262            �           0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 398, true);
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
          public          postgres    false    285            �           0    0    hanmuc_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hanmuc_nhiemvu_id_seq', 351, true);
          public          postgres    false    293            �           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 67427, true);
          public          postgres    false    256            �           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 38359, true);
          public          postgres    false    248            �           0    0    lichsuxnk_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 1015, true);
          public          postgres    false    217            �           0    0    loai_nhiemvu_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.loai_nhiemvu_id_seq', 1, true);
          public          postgres    false    277            �           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219            �           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246            �           0    0    loai_phuongtien_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.loai_phuongtien_id_seq', 7, true);
          public          postgres    false    275            �           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221            �           0    0    mucgia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mucgia_id_seq', 3425, true);
          public          postgres    false    223            �           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 88, true);
          public          postgres    false    224            �           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254            �           0    0    nguonnx_title_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nguonnx_title_id_seq', 41, true);
          public          postgres    false    268            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            �           0    0    petroleum_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.petroleum_type_id_seq', 13, true);
          public          postgres    false    260            �           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232            �           0    0    price_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.price_status_id_seq', 1, false);
          public          postgres    false    265            �           0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234            �           0    0    so_cai_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.so_cai_id_seq', 1088, true);
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
V~� �S�8�6��I=�S��W�Y�ʪ�wI�4��@<�ČUo)��/��Ap%��ͫ�ؗ#�V���}ɵ �'9�K���;|���s>�K&���7��L�B�"b�b�����@d� �&�e(q��pU�pv�[�76+�#��;|�Ϻ����˃��x�e��=��rLX�3GO��7^��{*����u�,�v��s\�j�*���Ζ�!�	A	}sF���$h      �   �   x����x�{i	����Ghg�rzxp�ed^�����pw{)��T����=2����?��1*l�������&a�����;2��.�U~>!0{���6���[�ґe�!��z=\�r&@&�>��)H�����@qT�X�����24 iC�Ar��!�! �=... |�[:      c   �  x�eSMk�@=���9�`�%���U�ar��q���&�L}m9֦���B�J
���R�Ѓ�����]�`�vf߼y3or��h%:���l*�*�d�\�%Uv��8Y!��/��Q�z=y�����A�*�knR���$��h�-����&ǡ�H�2G�[�f3��3�OPVYq�$U�I�E���b\n�i�Ӧ�3G~w���{~�\Z�x�v��\Wم�����eÖ9�yM�i�jS?�^q�'�&,n􄝖��U�#�q���E�U�:��wPT�Rs��~��۠�i�C bvѾB��*���?�����م�&��Q��fB��E�9�В��ʴ�.�4α�D���ʷ�6	\���	��Tk�0.���^W��v��*6�_&Vv��s�.p2�ɲ8��0��j�n�@X�}�Ό������\�e�/6�%��=��8������Q�v����
���tj����=�<g��qXlu���=E@��]�4	����}n���P���"`zU�M�����sQ��n
�ѽ-O�y��	{~���~�K �!�(K|{ͪA�XW�`�,���r���8X�@�Un0\�b�I�Ь<l������᤺&�>��گ�_�y�#�_��彇ٱMF:d�+
���n*�IT�sƋPf�39�s��kh���ʬ��͞�a��.�wO�;U����sv�      �   �   x�M�� C�u�����r��qК�_Olgq&%MG� rR3�LK�$���RtK��FX�)q���tG�\�O���g7%Dm�cc��tZ+\��;� c0�"� �P+�p���A�P���[6�F��o[;��RZ�M�i��$y\�=oǮ��G�1�$�x�6µ!��#��6Mo��'�~z�?2IF      �      x������ � �      e      x������ � �      �   R   x�3�LJ�/�<��T�$���@25_!/#����\�2�gII|^�P��_��]k*J�ZZ�P�p��<�����=... H] �      �   �   x�m�Kr� е�0)���g����f�*VOEc�&�Z�8Sj>�.ឤ�S����݀HڊC��0��i�ڻ`��1�9�2̻
ꈦ
��ˮtAwSe��Zw�u�jx��VOHt�nXWS����舎���%qݐ�7t� x���
�S3�P�@�stx��<S8�����dS      �   �  x��ֻu�0D�X*f~$�����a���L�K��H�yL���#���W��Q����X"��Pt&���;�GyfȌg��yȂg���D6y����]��
۪Cs���E8NCƅӑq�d\82.��,�¹Nǅ3�Ex�D]�K�⾥]q޲��nyW��+n[9mMd\�,8l��}����.��uѮ(��uEa]�+
��Ha]2�ٕ	
��'�uɮ.�����h^`U��j]qXul��8�XpX�Ÿ����jvu���8���}����/�f��a͑qXXpX�E\`mv�amu�a�f�lu�a]�Ⱞ��aݐqXwXpX߅_`}t�a}v�a}u�a=���VW69l(2~��y�G�g������B�u#�]x�,��?��}��]      �      x������ � �      �      x�ŝM�G���տ�nȀkq�{IQ=ԌDJ�ⴴ��-s�BS�@�pkv�,�����c ^�Us����g��d|df|��;��&5���}�*o�i���⛿���N����l������g/O�~w��?���^��������������������o�����o��M�w:�~���/��]���/Nϯ޿�Oo.@^Hs�W�Z'.���_��B^~u��Z\H�bh����7˿�W���ϱ�O>:�x���qz�������o`�#�o�߿�����?�i����(�-i/����������/���$\���_��ѳ��??�_nqa�Me�^�����BX�&����W/�����M������ۋo>\�	��D~I�;+�r�
Zpy3b��kѯ���	�眘��A�A�,�K�Ɉ���g j@���/5?��ce�[y��,���__�^?�;��2���l
��>�X�����������_tB����@诺L�MU�5���k�잘�K��A������e^pdzJƭ��/�|�����v�D?$�(RN��ǧo�����O�?��	%ʑ��7���_2�](g��'/O×z��~�$+���w/����k�Pw�j%n��%��J�Y%��3+�b�ܬ:����ׂ�Z%Y�R���J�Ue�QK�d�ʮo���N%��rcZ��J%Z�J�b�F%ڨ
I9.�h�:�2��h�:�1�h�:�3۔d�:�0&˔d��^|��I�a���#�����?<}�#+
�ڧE+FyT*�6�K�|�Rq_�}�#K<*m�ȴ��{k�")���A4��b��p9ށ:��������d�7�q���80����U��u���ѹL6�uԈ[�fC��WG=�f�ߤ��ƥ�~[�w~[tdL����?�>,V�2!EfeM�P�~@(�"��T����>�n��D�qC[�]�C���z�[ӵر��őp"�~o7P�d��x�h�֥�L��#lHU:2�~�8�.s������Ar�!a`�E���!ѯ��2kH��_''�=�l,��� 3���\CU>���(n/[�jV1z����O_߻����W{�j�][M����� �&{��0�p7��z�sX��+��Q�	��z�4�Dc6����@"�~6&kdr�[=qcY#�C�sd�H�P�7�5�9�~��g�|���g���~��C��p�u�}�=�	7���뮵���փ�P���I)�7.���4�"v�;q%B	��[1��b�$�ݘ���P2���L�Yȁp�{2M�%����2�{�
q�o���߻����b��1+dc�dM���X�꛷^G5u��vkv���$ty�n��pM��xCu���-��P��5[�6���o���Y=�ۤ�6����EӍсJ�*Y�l�V�X��Ѧ����˗3�p�sP����V�wP,�pYN�!ꎶE���������'/Ύ����g�`G2��d��_�|�y"-=�G8�]�}�� �� qPiy�8��|?B!L�XOg���bw�� Wma�����b�!6 ����*��Y`8��Ʊ�i��9�C�#T�l�9�*�D��`w�{2O��c���?Uح�~<Y��U`pQO.�e��a���TC��丹�T��z=���j�ջCG���lu1o�MU�S��}U��ؼ�z�V]�謻ztW]k��z4XSN�����x���I8�����O]OjV�����;lGwئ��iy��rA�3dMj?�DZ9�$RG�8���O�MG�8�Ɨ���Sb��kDV�X�m�"ܠW{i�B��҃]#�,d�y��q�16��j�[�`�'[n�t�u� YS�m�^�֋J�#4�]'�Ж�PAa{]����ر�p�J7h@�R�Rn5T�A�������>��Ʉ��i��S8s 0�	𜷭],^��`8W�c��i���)�m��S|�s��E��`�zx��+��	������q���+��و��#��A�����詉���V�P|�!8��z��K{�}���n��U�~��Ќ�����R�/y��z����Z�~ @
�^=�	�^w�߸�A��/oW�y�!f̮�K*St]=�	��9�'B5�X�<,�g@!��"9���	r�!'V��
L|0��j�9IχL�ku)���w��A�_�,�ĸ�7����?����T����#��Y�/1=~$'V=q�����X93�=�sb�ɜ76� �	�at�;�2��p-N7%�;�_����W/����ǋ�ח����ԉ�!6���0�-{�&6}�CO`�����"n��P��%�������A�!z\뤮
N���[��^�����[�,�;%|���k���	�:Yw���'|��d�8Xo��A���s0�U�sau��2>&vP�6>�Scu��D5=$uP���P��LԜ�v ���{����W���K��@�^��E�V5��O��u P/�*=�u\u%�K��@`V2br  +H��@�JU�v� VzU�<�^ejͰ7 pU:��Z�:+`V���ր`U��O 5 Pu:�l R�N9'@T�Ќ#,8�j��)��Z_|��/�N�|}��H]Q@�ӦMgd-�;ms�Yr*
#v��U�W�׈���B���/B���/Ӛ����sg�V������M*���
��ݲ���p�Ta��3�/�Ua�3�pBUa�3��qUa�3�!��Ua�3�p�UQ$�3�0VQ,���o����(������4%����o�������^�R<���Eeh5���Te�E��ٮ=�7.�ͮ/\)��Y�*1��©����X�Άz��~�N����휬vÊT��v.�	�b�s�ȳ�#���f����\6�(�xl粩g)�d;��;'F)*�9�5<�L�<9Z�gJ.��_���x��ɋ����?*���:|�M�E�;/��֖�����i�R���Ad���m��օ��-�;o6$��K�����)S"���@`� ���
�����|�o�����LP#�]�2V\c��[n��m��wa�V& ���.l�	�)Jޅ-'�D:�̻P���	]����@��"]����{����	���_�R��BhZa
����ʅ��N��^���ݛX��ċq
��Bb� ��}/t!6�n
���l��:B���>�1t���+�1tߋ�!&���^���
g���tF,c辗�5L C��,=����e����}/s+8~)t���An����c	�̥���K��^�F��U��}/}!4^���2��>� �e�/��{��3x)b�bS�|}j��`�^�Y����=���X����J�� /f�{(����tF�b����&���^���^�W��tN�R��W������U� �^�U�˟<y���O�x�Ïm�}���O�����Ë�v�(��/nQJ�O)�W�Li�}��e(�S��>�Rm��S�2�F���E�"S�·�6�Wˍ��}#�5$�y���v��5�K1N�ν���q�tnM�ۀQ*��w	E
��$*�*����!���NS�-���*���R�'F6O׬d4bs�$��h{h��C��y��FW�������� 2�(�1`Ca�3�v���b�2�/�1�s�Ǐe:f�c��Jo�t�����J����1����x���tϲ'n<�$oK��4�D�nD�$oK���4�K�4�9L��$oK��5�R��
fT�a%os�8��̒�������w�v���Z��%sv�WX�&�NWZ��t���|����7D�5]_/n\k:��c��J�ך�4�z�қĵ�cM>f�V��������X�\��x���$Բ'f\k<��}�S��x����.�q����_��Z�q'�K�µ�#Oޗ���kMǞ�/��ך�>y�Źp���������5���_<x��Ճ����[�5��>4)��.��K�T��t��S����W��t,����#��F��3�Y@��(�F����&��g<&僫wč    f<*�C�s`��R>����e<2D��P�cSA�&1�d<:D��@��SA���c:B�f�).�1� L�t�J�(�ܔ�|����k,J-���- ��R���f��U��TA����4U�Pe����LI�ڱ���S)�����Uaњ�,��DU�jWa�3Dt�+
g8��
����ōq<Td�g�`������
7��XU�u_�;��
�n0sxǃU���	y:Y��)̨��Uj�r6��٪ 5�5��� ���gO^<;}|����vq:P�4O���x:ؤ�&�JF� �Y��K\X�^�6D7��D�����H��=.��U�Z��;ī�U9^�w�M�ZM=�ä�I� �V��*�&:6l�X=��׎�S�V�w\wv:���k���өl!ZC���`��%E��ˬe�R���y�q����*���Q��v��Q�����0��tQ�f�bo���6��<l�3DA�u}&4ѱ�������PСV��7�T�n��灂��X��G��I�s�Jx�'�dY��}�I摁Ix�'�d0���y�I&r�Ht�'�d9�D�v��<���tN'�жۇD��]���۟O�R�L������ߟ�r���ϯwD�TN������Zu�D@]3q%R!Tw�8���L�(=�u\���!�/����p�M"t�n�8���I\	e�-�4��b��`����bY.��v�̈́Z3���C���OH�[3�K� y�[,����˾^��@��|�ޚq2\:�;4��@qJ\:��X�V��c��f���np;�Ʃ�R�>�n�/>���/�B�4]hZMK������%xz�[~�������QK��c�%�z]�M��L��,=�5�۬�y�j��m5�
V�`��CL��"\}i����P:#d-B6��0Z���'���lC����ܐ[�y�k	�!w���%����n����՛�O�^�"��8�npm:Ck����:��uD������a���J�׈��.2wђ�3r]D���q]$�RYmU���Ke�V>o��c6�aŭ����W��m�m������]�,>��Zw��E�0�	����;!'`#-�~Q)<���J�E��i�z�b��!�>MS��n�ͭƃx��ǧ��3�_�H�f��u�W�/R�"5�[|1�"�F?n_�X���D]*r���^�)�zb/ȝ⃝#~���!�G��n��!5ט�GC�$XQ��Ps	F{�1��b��5�`c�'&C�!8��	˪�����U�*�gOpV��0?�g����@pV�y�<�g�{�S�@pV�q�³�@pV�{���@pV��L?�g������@pֹo��o@8��6n�Io@8�kL�9 �u�$X�κ��pg]��	8������Y��΁�K{8��Y��r;pg#.������^=}�H>z��f#��F�*�����E�P�%�D�Eh��h�q,B�b���E�P�Ų��E�P���De�k��P6>�}&�L^.�VG�H6�l+^1Nd#�ȶb�@6�l+���c#�Ƕb�86ql+��Ec#�ƶ��06�`lS8�� ��Kn�F����&�����˶s67�LO����k�O?[kH��M�W�[5"~��46�ݴV�>��N塞�r;ȯK�;}�t�;��4�ΧM'��ә�ƛ|��"`�٨:�+��٤*��{���^\���W�4i�Yt��W���T$����m���wӻz�$"<}>����4����	oxCO�։����n{9O�H�4^�K�-9m��N0��2.�ӯl��5x@x��I����}�1�G <��Sy���A�ׅ�@x2���#d:�x�cPUGzE<�T=�L�><�1��>�G@<�|����ǐ�7��A�c�rR�΃G�Z��f�#f-"�6,���<���<-�b6�E���R�����$�H�����<�E¦sl�T����.<�1.��.
#1ah�	�'1g�I)R�q.b��RT֋�t�(%�����1yhiEU[�b�Z��)ebL!Z*fC͇ĘE�hdS�EĘH�(d�=
D�@��\��Pe6�l8T�C\C2(E4�:%�Z�-!���|��Rr���	���D�WPA�"sHԄD0{���Ƶ�ťaĢ&,�˅8��	��s�q4jB#���#�"�H˞���F3|��HUL�("5"R��I��TŤsaR#&U1��JU�:*5�RS�KM�T�oh�	�*�O͸Z�Q���O?������G��\���i�Z����!pj�	���<�:*?�}\}������ �MM���@�mMl��`��^鑮�ڗ�� U�P�a�!>���:�(\��T��k���Y��5Uk�AК�'���lM�؀k��bg��!蚊��x��ě�{4�����������������%�Ц�,g�JD���&n�kG��r��X�q�-W��%.�Jq��ʕZ_�Ҫ���\��ƺ�Xk������6���r��v���M�+Y��t��j/bi,�S�|��WZ7ڍ�+f��+�"����ګV��	q���`�u�iqż7�V�U&n �����N��vpO��限������7�~���շ/����>��3s㏰E�p����u+%{�Q���R{�}Q?����;��[���+5�q_�����h�}���ÎZ[�}^��UC����^o־�l��%��w4���+�	�{^ђ������a,E�؀Qj�F2�s��]�g-	�y�8Aa�������)���P�~!7V�6�[��/Z��$l{�d2!�8�{O_�������O���տ��w<0� &̀V��R�vWk��$�kV������b�2�1�v�x�LiL˖��3�1��M��z�h;����B��āgLd�����H&�v��h�d����P&��яiLe�����X&�^��j�eZ@xK��MN
f��/���d&��M�I����}�%�)�	����YY�d�7uFM�L MS���q��kĂf�b�6�x�L9L ����)�	d8���3��F�;E1�/ȣ~80��K ۾Џ`^ض�b���̣#� ��������ȥ�%�m`�-%-l����b� �|����*�������w,����Jv�t���|%P��3�YK�J�TS�����+�}�80k)Y	���b���\%PvSk ��R�@���}=#f�ߨ|�����*�ÀY�yJ��}��Ӕ@o� f-f)����i�ZLR�mݘ���z�	&1k)E	���c�R��-�K�ZJP�������:~�B*�\��8�J�I�C[�����$0"/?�R
L#��vv�@q!X�I1I`T.�LJH�s�NR8�U��Cģ�i�;�"F"�qmp�Ӑ����@BS+�0	l1�����#���������:�7
=[L*�(����n�P�X�>#:����x�K� ��G�D	H��)���R�Y;J:�7TF�FYG`CC�ξ�Z;�uuX8GyG���(�l(�P�2�����}�"���ֽSb�8��
1�ܖ����m�<1��������m?&1	����Ғ2��o�;4)	|}�������$$��:�:}��g�Гr���V����$�e&e �w�e;�������BJ�?JHR�Q��𑲏 ��}]"�%�{Am6�DL=�P��~b��� s`� T&x���w�2���ô#���eA�L/�(�H�bt�v�s�D1񬠣�#%�;m*M�FJ���=+E�FJ�u�Q�Q��f�`g���6��,(��"%ܺ<�(�H	�.?�/�'R"Ԋ�u����bw�,�"RRVZ��&)�Le?�0wH�d9 �iCJ&S8�&�R2�~(a�������L&�D�"������`�� %C�.ш.�b���t�<��(%H�l)޳B�����E�)P�%;��k:�,��&�%�(����(�G�����a~]�Nq�)>
B�	 ar�R٤�#	�z���J�УT6��X�T���&�(���,�( �  }G�l*�D�;JY�MߍJ�Qʵ����o���G�Z�iySb�4����߽�7+�Z:�)���C�
�ZƉ���-vvW/�����7����|\��v���^D�P>�n|!��7OC$�w���:C ���^c}��q؂����2�c�8::����Ǖpc'C��ȆmrS�$Sx�~���C&��Ǖ�N6���a�]m�	lx�cC���F�l�⅋=�⚶]>�]��a�P�2�t��P�2~]z>3�L�*��a\;+��
�QV������c��u��PT���V��3���T�N�a0ʚJ���e���ƽ(�!|0�E�d
�Ⴡ.�&��LpQ.��Y�Pd�r�2��2Z��M�
eQN�����b�f�?���&�6���LK����lZ|A����.��%���.�(:E��
����R����(EyY/����úܝ��O�W�&8��y'�g�ڏ$8Q>L(a����d�c	#L��F�L�Y�|6��h��峩d���� �6}7:(�Dٺ�GT�����q)q
,���TS��u��tV}�Q�,��٩��'��ͯ�(ED�)�`��CT���(1D��Q���*-DR�NI�� Z�z��L-��g&�h��(�0�C�|F�i��Z��ڏ+���"��Y^Q�|2 �r=��l���%��Eh��#27f�����_�q���G�_vx��߾����B;��ǅ�Ӿ��*�u�ڗ��ő�j�\Wwq٤N>�����b�u��/64�#�l�U��K-�"��t�R=]!���Rl_fh� �����"�	L���R'ndH��M[#VN&n��-u#q ��-u�΅d����д�qC2m_Xh��Kny6u�5��pI]ۮ�W�ū��_��W���La�G      �   �  x����j�@D��ǔ�V�W綔^Zȹ��u��i@��ll�G�Hk��E��9V{����������ӵ�������Uds1��?�B�����ڗ����������E��0�'b#=��O�q��0�@H3���1��3��l�}~!�~"�1*�kW6�K�<�pŠ���<��$@.��/��@�ƫH�� �j�����Ƨ�PA5�\"�@�̼8@�=ґ
�Z]@.�tB��ʹDh��i ��W�j�|E��Z�|.���|Q���x�{m-m| ��va��Q�U8R��k�����ڝ�xw:���� ��7��H�@����`p�"���Z���7{�f����o� �R����|ETD�NЩ�[k+����/�FS�      z   �  x���;s�D���_���UMw�S��Q<̭�8C]��8;8GՅ1!\Q�; ��#�O�I���j傲k5��F��{.�
�`���\���'ũ-�<_GL_�.F�J]�{]\��n���+���՛��~}Y��yx��<����/�`�^�G�d^}[�7��G���U��W(/���&�L� W�(�Vd*�2:D��f�&?��5iL��6Z=9Q*k*��e7�]��R%9�U�������������'��p�m��sq}���������MMo����-:���H}9(�52%�0IlDd�DT�:bĆ�w��ř�T!6�����2/�4���8b3��&=`���)�_R����?����x�y��5:�V'@�_M�H����ͫ¹i���'����n�t���������od���l֑��Mm��_�^��g�NCb0d�͝�F�10*�����]��>9/���~T<�och�ACɼ7Y�m4��v�L➏c��a����3'�u��~�А���כ�w?n[�[Ұ�g���Z�\�5����	^�ȗ��G�����.��"�.ԁ7� �/��\�E#R+��8R��A�$Ik�\�ʙ�*�n%lc=�2�V�r�Z�&�Ij�vΣ�*jk��k��n�L?N�b�2/I�����p?�싧��|�:5=�K���a#�Mt����헮)�J�R��S~�+��^�b}��o�X�=�;�5�8�.���۫�bc�[~���bs0+�4��0:���i�u���l�]���QHs	���??�X-�,�GQ�<���	[�Q �0; \���D;���"� [�p#MH �F�T�[�rC6ٲq��}8��3{�'�}����\r�~�֢c�iS�5k�󰯆�e��~����ƹA��������������� ��%B��M�I����͏�Ujl�.�jm=[|����գs�=z���5�1�	�X�)#�Q�gm���a6��M<Nt�e^"���&zÍ��\�[;�`��Cr�S|M>��2P�lf�\'�%�=r;&g�n��%�FE��F8'�[�!w��	��G.��l�(�Mżќ�J"������6ͮ���gS�5�f{�]�{�`'�5|���dg����( �E�C�0��j�y8���H���P��x8 ��8���T{/���ܩa�A{��r��:D�E�\�m�C�M���@..u�KKҳ���\,��ɷ,      �      x������ � �      �   �   x����N1EkϿ,�+�]"DA������������q�\qF � w�P��'����_�o�@��((8�P=�c�OI~F�o
���0Dt̜t߿�dZ����<I�]O����攙&�3�_�=z����;�uS_/pAKy2��C++�e,�O�<�xA:�O�CRoRb�گ�z�ܡ�D:$#��s3��lPUB�����l�O�^5b]&� ���jQ�'J�S��=0U#df�j���knk���t�'U��W      g   �  x���;��0��:��t11O��N�5�Yp��v�r�&wH���&!)�%�v!��q�Jf�]�ӻ�����ȝ�OO���#9nG�⁀�%.�ճzqD͌Y�Jd03w�����8%��Ca��bB�볏�ނ���"	#;iǕX`�'�!Q%qM^�M�����S�U��4ޒ�9z� �HZ�n��XؑY�{EI��|3��
��� vHΈi%e��)$0G),TG����]���߿~���.dPAc���v=cL��ˇ�Og<<OG���_�fx�Nܔ8�V<m%�=!�#���}<^�~�)Qچ�;d>*�+i{�L�MD��N<fRo�%zQ��u	N���,�t�z��h�����YF���.{yg��k#�eA�h�̻�l�C*"���	yfQk�e��V ���,`�;:*V��S������ѥr���K+��+[H�?�?�|,3      �      x�3��SpJ������ p�      �      x�3���p�2�u����� '/�      �   M   x�3��u�uv��u�tr��2�p�w�p��w�t�r�r�L�b�~� 3�r$! ��dPH� S��I E1z\\\ r{*      k   �  x���Mr�F���S�&UP�v���� �1bc�f�$�X�r��L��	r��r��2��"�I�@�c���J�5]��V��F1���-�Bbge9���%��C����KBa3���7J�;����ӳ���L�#�Ӳ�I֔)��d��zDܖD?�c�Z@ո2�]�"�hE�dk�56�z���t�8�&C<Px�M�$ ����l�d��{>L��A������~��3ɛh�6�7��d�7x/7� f�@e���d�(���) �2g4�N���X����< �p����Z�I�5:L= M������4k�/�D��������kH�5���"9�b�5U_��x1�~0n?�x�B��R��b<��\I+Z��Q�����I[�x�	��������Ī�/�a7,�	%Es���x�)�lP"Z.7O�t^�8��hÈ��4�yf(�qh��O�;"N$�r�VP4���&�����(3�:�����v��W��T�'K)92u2d�����!�I����/��ۂ�)����ۛ`~;�0�8̲��w��\/w@G)%t�iE��ku�Ѻ�����}�h��)�|�o�[0�B��Qʳ u��yҹ�oC�	��]|]0�<64����X��Ne_���4�*8l����&�J�$���^�"���!r�Ug�ˇ{�/O��z�UyY�Be��1�e}<�N2�t�P6�?��a�Dʡ�0�n�*adS��z����?�T4o���q����d�l?�I�ˊ/\s�]����j����&��1���&���])j��	kR��q�����@����z�Y�Z�J�ѯ����<��<���[�i��9��$U��u�q����J����K�f�1M7�����C�C��8�AgI�8^Xl��̠>oɠEA�N7��j��Ym�%����m���(���x�r�����N�Y��QOcV0�p�Ҵ�U���m��Q?cBhw�w1]t�:	h~ˊ��L��4G�]�p�;���u�<YmlB%C"�
�;��^����4p�2u�,�̏�R3�L�l��
���Đ��5
��c�r���vr$�iC��k7��t<���L:/@��z"�a�fmUS���`���\����S�!��;!��✢v��饾;?;;�vVb/      m   �  x���͎,5F��O�0�ǉ�B�,�x�����}���0�4?uƕI�z�� �5惦�Wn�ǯ����_����3��D�[�oԾ暪���%��/�b�9��τE"�6a��?��P�E4P��v�Q�x#���*��hͬ�1��; ����H�����Ѝ����_��R	p>L�%"惵" l��D�@̊��d�������5�S�FXEB��hVa1�� ���*6�
�+B�HZтP���ak���n2奉�&�U�!L�8�C.s
;D����9Ec�ˈs8�r�S��>�3�؈:���s_���>�K�C������^hB��#Vt�\��ճ�M�`� ,�d^d�\�"��c�FԸ� 6�Lj#�����&FX�A6���A��A�τDV��&Ft�L�D\���*�ca�7�����fG�M4�S���Ȃ:�P����ʫM-k\B"ƚg(6�"'
=���Ĳ�q�"�5�pq5��h�]Dd�^܄��z�i"����l*�""󴪉	s�E(UMA=�Z�cE��V51��@l@5SP�-��a��<�fb�p5����f
�5��.�"󴚉6Ί�����3�i��,2oV51���F\�D-f�h�_���1��፸���&f�9��Л7��eY�F\�{���3z�b'D�R�*6�b'؜X����H�y�"��ꍸ�	R�|�=�-Ro]���3#Q� ���te{�ډSW�*6��9@�y��������A���b#�����Y,���[�N��ȹ	U�r�|I�#���[UN��95�؈*� �g��%��ܳ*'Fxԝو�� ��W��q2E��EN���$r9Q�I���J�{v�"|A_Y�F\�D�燙�3B�{v�"��g,6�b'�=Y��iW�g;!·���%�b'ʽ᝚qA�{�.vB��~Fg"���ro|�s�ډ�%{$�NE���^vj ���*���v*�=�Ό�@T;1Bu�وj���S��;�@T;!b��E"����o�'^V��'T��W���F\�D���vr��N�X44�H��N|Kz�.��p���l�D\�D��[p��d�EN�0b;Ul�EN�{&�8oW�q�"�(�L�EN�{�G�SE�_����/�3Y��JD�s~̽@�a,[�#�./40bL�MN"�c���?�Fd�/z�#�}}�Ͽ��J͸~�q{�o6�2�n��k�O�?�h>���!�_.���oTz{���Ͽ����r+�      p   �  x�]��j�@�ϣ��c{p�]ɒ���P�c������PK`Km�y�^�C="J95������&�4���gg���%L�����"(���}ه28�@���:͑�N�fT��0M>�%��C�C�!����5��5��I�Dέ��U�lq��1уKk���]����__�E��zV��q������l�!��x�W]����V�K5\.���wk~���5������4/2�*Sv\�t�`zt��)nlcX�<����b�N��`l�:Ͱ*ۺxM�2مx/���� "��m�[<s�6�6��.�ˎ~;+�X<"�gǻ�O��}�'��y.���$,iO,N�`Df���Q]��Ґ�y{�3\cfV�8)1��b<8�S�<��z����5���יּK�}�^eH�L�Sjʦ��e_�՚o���"���8�2��.      �   �   x�5���0��az��ػt�9*���/Ȗ 
��$��BBk&��G6̪j��M�#	+�k59|��w��N��M/|,+��y�����j�ĉ�U��o�!ƞ��RQe�Ȟ�M��;�%�̐v3.%v���������-S,�AO��/�v��~D���1	      q      x������ � �      a   �  x��U�j�@=��b�-�ƒe;>&jAE��"L�(
H"�:$���m�&�=��LI��C.�=����?��-vjmc�%��f�ͼYm��0�w��<#SQ|d@���}Ͷi����� v�ˀ��<���"�&�\��QLpEq�I��|�Е߱�X���N
g/f��d�W���Q,�	�1ώt�.��<\ފ⒅:d\��$�oRɾ3<���Q���+:Ё����z�`E~�H|hrx��@	��l����#�Npϟm��Q1,�Eq�b$�/�[&;�9o�����)��_g+J�e�3:T����!�s�s:��+D�n���J/�l��//b&��i��J�g��d��8�zK��5S��Α��N�W�{<��(T�c�ߔ_M�x�sWinB��<�_�s�����i,�-�����X}����W�'U���y�cm��<�5�h{���eJV�.��t�RH\ו���YZY,����!Ʉ��}��L��0��:BU��g�G��ZJ�S^�u>�E].KѺ�Rީ%�Oj&���`d���a���՞^��[��6�u!7�c���5՚m����v�͖,�X��WF�|�2��|ӣ:��<���wa(��8��]��(�=�����T�<����[�Qh5�9�kqU����[a�k����m5�_z^m�      �      x������ � �      s      x������ � �      �      x������ � �      �   �   x�U�K�0��]�H�wi�E�S$������JLX�y�=ְ�fd))��-�G��ݺ��r/y-��(���a�z��Kh��0=.��#x8�8rk�[���=�:ҭ��q"G�_ȼS�[����>)�����/V�G      u   �  x���KnA��=��e"��ѯٙ��cP�D �ˉ�l)2���b��:�(��M����A�ը���������&ۼ�5ޙMNwZ�M#mS-�q��C�XA�^�.��������D����H������.R�2ޡ���U��DQ�>[S0����
@��6�U�ȸd�Op`P5o_�h�:P�5��c9�L�Xq�`4�wD,�{w19��p!�B�bW�=�V��gK����Q��u�*��(��fC�0f��ċ�&����2�)��sa��}aQ��ڵ�[Y��jN&B1J�0�����۟�W˅>07��}�n/�ԦKr�BN8I�1���/��Z;�['���G��.�KlY���j�qy{�9ݱv}�	1P���L��N����dC�=!���Z�R�>;����9���8k9bAM'��~3��'/AJ���=&��[]��G�r��_���)���B�J�
�j�3-%(�؟@\#p�� Eu��p1�Gq.�()��T�~i5nl�}�Y���H�!+ݘ���À��h<X�A�z)�^Ko��Z�]w�W�8�+ӣx~��FW�T3��� ��]�$s��.u���&�)Bo�����tK$Ԉ����e8�{�U�����w�ޙ��~�mWl      v      x�3�42�4�2�44RƜ���\1z\\\ *�%      �      x������ � �      x   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      �   %   x�340䴴��24�21�240�440�#�=... e��      i   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      �   �   x�3���x�{������;B<B�Z�������C��`j�=��y(�=��Q�������eS����{l}(D���eS��"T���e~%���Ύ~\����@��KB@�x���=... ��9�      �   �   x�-�;
�@�zr�9��y�jM
A�X�ѨIwU��g���!)׋�M�Ymv������k���oX8K���T�b�d��/��H��,
�9��~�4v!�Ļ���c�j�V܎��Wq���j��z�}���0��sG`� (��o^,�f�/�K�u�Z�ZX�gFmկߴa2q=�B��?�f$Q�0�/e9UM      }      x������ � �            x������ � �      �   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      �   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����      �   5   x���  ��[�Q�^�s�&��%&�`��Eb�Ep��bQ?�ہ`<	�     