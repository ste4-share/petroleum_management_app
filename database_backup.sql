PGDMP      )        	    
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
    public          postgres    false    282   d^      �          0    16873    assignment_type 
   TABLE DATA           3   COPY public.assignment_type (id, name) FROM stdin;
    public          postgres    false    259   �^      �          0    16797    category 
   TABLE DATA           j   COPY public.category (id, header_lv1, header_lv2, header_lv3, type_title, tructhuoc_id, code) FROM stdin;
    public          postgres    false    253   �^      �          0    17060    category_assignment 
   TABLE DATA           [   COPY public.category_assignment (title_1, title_2, title_3, title_4, id, code) FROM stdin;
    public          postgres    false    288   "`      c          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   �`      �          0    17022    dinhmuc 
   TABLE DATA           k   COPY public.dinhmuc (id, dm_tk_gio, dm_md_gio, dm_xm_km, dm_xm_gio, phuongtien_id, quarter_id) FROM stdin;
    public          postgres    false    280   �c      �          0    17076    donvi_nhiemvu 
   TABLE DATA           ?   COPY public.donvi_nhiemvu (id, dvi_id, nhiemvu_id) FROM stdin;
    public          postgres    false    292   �d      e          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   �d      �          0    16972    group_title 
   TABLE DATA           A   COPY public.group_title (id, group_name, group_code) FROM stdin;
    public          postgres    false    271   �d      �          0    17052    hanmuc 
   TABLE DATA           a   COPY public.hanmuc (id, quarter_id, hanmuc_md, hanmuc_km, hanmuc_tk, soluong, pt_id) FROM stdin;
    public          postgres    false    286   $e      �          0    17082    hanmuc_nhiemvu 
   TABLE DATA           m   COPY public.hanmuc_nhiemvu (id, quarter_id, unit_id, nhiemvu_id, ct_tk, ct_md, sum_ct, consumpt) FROM stdin;
    public          postgres    false    294   �e      �          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   �g      �          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, xd_id, title_id, quarter_id) FROM stdin;
    public          postgres    false    257   �g      �          0    16904 	   inventory 
   TABLE DATA           �   COPY public.inventory (id, tdk_sscd, tdk_nvdx, total, status, tck_sscd, tck_nvdx, petro_id, quarter_id, import_total, export_total, pre_nvdx, pre_sscd) FROM stdin;
    public          postgres    false    263   ��      z          0    16487    ledger_details 
   TABLE DATA           G  COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, phuongtien_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id, import_unit_id, export_unit_id, loaigiobay, dur, dur_text, thuc_xuat_tk, dur_text_tk, nhiemvu_hanmuc_id, so_luong) FROM stdin;
    public          postgres    false    235   ��      �          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   �      �          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   /�      g          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   �      �          0    17014    loai_nhiemvu 
   TABLE DATA           @   COPY public.loai_nhiemvu (id, assignment_type_name) FROM stdin;
    public          postgres    false    278   {�      �          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   ��      �          0    17006    loai_phuongtien 
   TABLE DATA           >   COPY public.loai_phuongtien (id, type_name, type) FROM stdin;
    public          postgres    false    276   ̓      k          0    16430    loaixd2 
   TABLE DATA           |   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2, petroleum_type_id) FROM stdin;
    public          postgres    false    220   )�      m          0    16437    mucgia 
   TABLE DATA           |   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id, inventory_id) FROM stdin;
    public          postgres    false    222   ��      p          0    16445    nguon_nx 
   TABLE DATA           7   COPY public.nguon_nx (id, ten, createtime) FROM stdin;
    public          postgres    false    225   Q�      �          0    16964    nguonnx_title 
   TABLE DATA           K   COPY public.nguonnx_title (id, nguonnx_id, title_id, group_id) FROM stdin;
    public          postgres    false    269   !�      q          0    16455    nguonnx_tructhuoc 
   TABLE DATA           I   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id) FROM stdin;
    public          postgres    false    226   Ο      a          0    16395    nhiemvu 
   TABLE DATA           �   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, team_id, assignment_type_id) FROM stdin;
    public          postgres    false    210   �      �          0    17043    nhiemvu_reporter 
   TABLE DATA           �   COPY public.nhiemvu_reporter (id, title_1, title_2, title_3, title_4, soluong, nhiemvu_id, phuongtien_id, ten_nv_1, ten_nv_2, ten_nv_3) FROM stdin;
    public          postgres    false    284   ��      s          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   ̢      �          0    16986    nxt_reporter 
   TABLE DATA           �   COPY public.nxt_reporter (petro_name, petro_title_lv1, petro_title_lv2, title_lv1, title_lv2, title_lv3, title_lv4, petro_title_lv3, petro_title_lv4, xd_id, quarter_id, quantity) FROM stdin;
    public          postgres    false    272   �      �          0    16890    petroleum_type 
   TABLE DATA           @   COPY public.petroleum_type (id, name, type, r_type) FROM stdin;
    public          postgres    false    261   �      u          0    16471 
   phuongtien 
   TABLE DATA           l   COPY public.phuongtien (id, name, quantity, status, "timestamp", nguonnx_id, loaiphuongtien_id) FROM stdin;
    public          postgres    false    230   ��      v          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   A�      �          0    16928    price_status 
   TABLE DATA           0   COPY public.price_status (id, name) FROM stdin;
    public          postgres    false    264   p�      x          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   ��      �          0    17089    tab1 
   TABLE DATA           )   COPY public.tab1 (pkey, dur) FROM stdin;
    public          postgres    false    295   �      i          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   D�      �          0    16945    team 
   TABLE DATA           3   COPY public.team (id, name, team_code) FROM stdin;
    public          postgres    false    267   �      �          0    16992    titles_category 
   TABLE DATA           ?   COPY public.titles_category (id, title_name, type) FROM stdin;
    public          postgres    false    274   ��      }          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   }�                0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   ��      �          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   ��      �          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   :�      �          0    17070 
   tructhuocf 
   TABLE DATA           C   COPY public.tructhuocf (id, root_id, dvi_tructhuoc_id) FROM stdin;
    public          postgres    false    290   ��      �           0    0    Inventory_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Inventory_id_seq"', 1174, true);
          public          postgres    false    262            �           0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 383, true);
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
          public          postgres    false    285            �           0    0    hanmuc_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hanmuc_nhiemvu_id_seq', 270, true);
          public          postgres    false    293            �           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 66509, true);
          public          postgres    false    256            �           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 38359, true);
          public          postgres    false    248            �           0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 997, true);
          public          postgres    false    217            �           0    0    loai_nhiemvu_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.loai_nhiemvu_id_seq', 1, true);
          public          postgres    false    277            �           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219            �           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246            �           0    0    loai_phuongtien_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.loai_phuongtien_id_seq', 7, true);
          public          postgres    false    275            �           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221            �           0    0    mucgia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mucgia_id_seq', 3320, true);
          public          postgres    false    223            �           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 88, true);
          public          postgres    false    224            �           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254            �           0    0    nguonnx_title_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nguonnx_title_id_seq', 41, true);
          public          postgres    false    268            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            �           0    0    petroleum_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.petroleum_type_id_seq', 13, true);
          public          postgres    false    260            �           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232            �           0    0    price_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.price_status_id_seq', 1, false);
          public          postgres    false    265            �           0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234            �           0    0    so_cai_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.so_cai_id_seq', 1070, true);
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
�S3�P�@�stx��<S8�����dS      �   �  x��Իm�@E�X[�A�kq�u�rҫh�M�����/�K�������~��q�JD>�ҩ+�ʰ���*�ʩ��l|0['[��Ɋ��C&�m�[ؿt*�/�
�˧B���пr*���lD�Z'C�����ߧCF�*ۿ�_E;"}��U�#�W���^%;"y�g��ʚ��Uj*do�zQ��:��#T��#T��#T��#T��#T���˹ѭ}�\���˱���z�5�[=Y]�#TW���;Bu��P]�#T�g֡z�|Qך
�M�
�m���v��f��yG�n��[v����:T�5�[M��.C��՝�];Bu��Pݽ#T���=;Buf���
ս�B���B������zXG���Gt���z<��cM��QS�z�P�z��y���N��iS!|�T(�1�gN��������d��u2�䐑������Ԓ+�      �      x������ � �      �      x�ŝK��u�ףOq7 �t���%S�ć%Z�"��Ł)R�����6F�E"�Y�J\R���7I9眮Gw���\Ö��p��v����/kL�'��ݺq��>�}k��tr���'_~u��֣7?�Ϸ��>z����?�����?|������?�zt��/O��޼���9�9��=;k�L㓷5?魬��٬|����ESe�m~]޼��'���֌�СcA�e:??<y����_�=���:t|�s�އo��~��U�j��^�xW�NSRUN�N>�{x��������4_��߽�X��������_~�����4����^>������CZ��Y�������*+y���Ý�0_�o��;�D���{�p��������}Ox����_����d����|���ћWs=��]@L���������ϳss}W��\;D`��j���k~b3o��m������\_A}��@0X�V�v�
]��Z�A �0���
i�@ �pŊ�="�_T�r ��>��_���x���_���xl�L_���xny_���x���^���xr9�^���xf�L^��K�4^�y����a�Uw���+6(�ɇ���M�o��q�ó����/)*�e2��X��� 05�E�+C��z�ʮ`��L^���
��(��^aQ���	�v� ��)�����v�Q��w��S�@%��f�n�d�v�.��d�6��S8����@�Sv�Nfi�{�T'S�������Zsmڥ}����]�R|G�9��_�^?�@x;����m��o$B� �]��L���_���ͥ�]���D|���Ѱc{Z���/^	��|G���+;�L���B�C.���>H;�������pm/���7Z�t��y��� ��6d�큹]��$�ú�.�ILn�[�G؆z���$����.L�M<a���&n��C	���\Ca��#�"V�Nը"x�c����N�'��'4����R�wm5���L����lݦ��k�������aM�!��G�&�)���&;�Z��w��I��1Y#��Z����r�#�F2��.���.�^>k�ˍc��r�ऴ&J��+�A�	�>5���Z�}�/��kM�������Gw��N������⧸��h����ܫ	S��f�hw���Ko�P�=��.S�D�����B~;�w>��k���/�v��.�ZUH�Q�}�*@l�l���bU���8P>��
P�4�|Xh�);<�S���m�=��Y�����M���źYڑǆtN۰��
���]x.S�qko*�D2�D}�p
7����:���t���p�7��<��M6.��pp�+k���&�,v�Xp'�B(�0�Lp"��V 8 �"�4N4p"��Q8@��8�r��H�p!�D2��pD �=����fu�prʪ���'��b�f�U�d�R�W��E=��T���z2R�3�v/��Ҭ�k��Tڤ�:�GG�n��qS�h�2��V_��2d�ƭգ��|FG�գ��|X[֣��|J�<֓Ǫ|>�m֓���(o���;�o��ϯ}�w�����O�ك�~��?�y��d~����p���x�yR�qgo��^F��/�_]*�j��aӫ�Y��{��s��2�~�x��X��7���h��1P_���j�ήZ'�y�P�6d���D� �������0H:7�*z4l=P��$�:��[C�)�uarL�	�xi�X0E&w��4(��2���Nh���I��B��fa,��^�������Z��/�D�{�߬9�r"}�i��ÿY�߬E�/r~�8Z�-ޟ�_��_�/[X��7Bt_��#л�p&}i���;N΄���!����T�zCD����;;ǷDVfŏ��R9��[b}[����-���#��lɮY���,gK.����l9[����Gx��ْO��A�{^Ζ��-������8o�,�Ir��\��$����l6wO������:����rA|�Ia���vΔ�����lW�����wΑ
3fw�'�!�.n湐�����'�y�ҭ=/�NXJw��b��I7��b�Y�I���b�9I���b��Hw��b�٨��	�s�	�Ž@�9���G��C�tI�A��]�?�����}0�}yj�G��!D�X�z.>`Yf��flP����B��K�K�ŭ�`����\ܹ�(8��ō��6�wv�H�P�8t�ۼ!l5�
Z��맲�0o��l���{�~*;#�����2 e�c짲w��n ��������~*Y�q���~*9�� �~�'����g���ީ�w@p�)T�t�j@`�y3-E�A�^��ҽ]êϛ2�4�`f/T$��@�BGBC b?�I�lg� `?�=x�	6�JͰ7 pE<��Z:+`VƓ�ր`��� 5 Pe<�l RO9'@Tj���GX pJS95Cj�Ҟ|��O��|y�|C\Q
��?eW������?�HtFɩ(q��Wn�zo�����5b姢�i�D�ŋPE��^�Tk�����Rk�;{F�*W>
K&Q{eV��ĩ�4j�2_�'��Dj�2����Tj�2���dj�2C�G��tj�3'ࢫ��j�3`���j�%�0uS�!�Z�OӐ ح�'��}�����g�/d)��kS�ҵ������U�K��^��ڽ}�����R���3Z)�ۛ)V+%z{#�u;�E��[uQ�8P�to?o�R7�HŌoo *&}{��<+N1�ۛd�a����$�?�R���&�z6�R�7ɼsb�r�������i���!90U+On����'��<=�=}����7��Emr��j��Z[��V��ӕƽ5"����]�p���Tro݊$3x)��[�"9D`J2�6�t�D����a2��{'��b�3�{��.���t��̄ט��ݚ�0rSֽ[���c��wk~�FrJf�n�I8�N��ޕm�8l�4w���s9���w������_ܺy�ӗ�_�R���Za�y�^fB�H�Lt��f���ax�_&^�S&��&c8e�{o3�!tS&��n�tg�m����5f�{�b5f���;� �1݇�Xጙ�>���e�D�!�� c&��'���2�}�݀��Cj��/e���:�倗2�}xg,a�9�����@tB�PתR�,�	�����$6��vo���//x)=L*c/%��IgbC���0��ҝ]x�d���/��ɭ5�
^L=S�����0��
^�;"wF�b�y�5��΃�=��sD��ौ� R+8x)�<��A.��n�n���az���:�x��7���ɻ����%��U)E�ڦ�>QZo[}�6���`^��Jա�Mv��Z%{���D�LԊ�m����j�v�`��ڼ�mj	;2厪�ۤ,S�( ��0�L����m�Ro�@p�PX�&Q`pSa� ���.�۶L�J}���mR���d��m-�>Q�z�F%���E��$ϣ6B�g�-z�((S�ջ��(Q��х�鉢 I�+
���ϯ;���� ��=~,�cFBHz�`���������h��Q�~48�G�I�� �����I��s��F4>�t����璂΍c��xRйcp���R
:�
fT��J��Fq4X�3K���ri��G�D�N�rp��� a��Z�+��� 1�-\kz�)@:���k�a��ōkM�3H�\��Z�#M�2z����XS�\�B������Տ�k��7H��{bƵ�G����c�s
6�f\k|�)��/Xq��q�`s�µ�G����ך{
6�
^\kz�)��(��kM�?���e�Z�#P�M'7�v�S}��`M�A'��zW��
N&J��ǡ�S�����tz��!M�Eg5~DӣQ��Dm��xTpn�v߈g��G�3>&\(wčf|T*��+����K�Z7���So��2>6|jcH�G��O݁���T�/0��
޲��1��]�t�J���{>}����9�����L�R���j��U����\���gz    �*��2�Z`{Y�v젦�BPEM~\�U!��(�鉪̦B�k@t[P8���V_�Ǉ�B(����ʶtx�ʞ_��,�������3�wx�j._vN��U�Z�S�Q��V͂%C9��٪���]���Y؞�yt�ɣ��+��}��֋�UsqWQ<Z֊�
����*�+Jj(VK�v	;����!�B P�H���`	��,���/ga�*�k���s9�(ǋ��.�	Sj����"0L"��0�k�F�`Vѱb�@�x2+P�_�'�-po��l��.�*6�rOe�*��V��i�����Y��]ߥ�&���8ܹ>���O��$�~��5҄'i���餉NҭUl�W�G���M��$ò>�4�IM��]d�D&%J�{C0)Iծ�K��T�,iĒ�泃J���qd��F(�h���I*�$iD��&r�H����Y� �& �g���B�����]"`i��k|����8��	���>{��}s�������_l����wE.֪Y u��ąH�Pͥa�Ͽ��R��k\d_�=f5�B�Hh^�B0���I\%k-�4;�b�lg����bY.��v�͈R3;�k��4��G�k�	�b�A�A^��x�7�ת4��Gl�	�a�Yߠa��)1�oc�Y��g�%�����*�fH|�^��?�����[�дM+*��V�8�̄��i	�Vm���V���2�B�D��ĘAj	��fbC0�S�VKwv�@�>)}�Z��k���"X]�p�W�+`-���Y��u�5��"h]�	l��[��'p-ץVp�Z��K�r�k	�����ߝ=>{������P�6G�u�N�kMa�O��0uQ׋�꽽��{�]#^�:b�W�3r!��Tk������Z�Ξ��ƕ��[���n�V�:ĭ�|a��i�3`��C؆�Y됵!3��:DmȜ����H2��#��7L��s��`�iH�6\�ո���O�?<������H\�T׺z�m��a�z�m;���b#�i*],^���(�1�����dAn��x �\\m���+&�?��0��%��+��(�Y�������%�`E1?k�\���p��T�� ��V��O�1���J��e<�}����8d����rW�8���fj6��l1�i�JM���-f7�R�y�ܿ��Y ������,R㸄{���,R���;���,SK���2��ỻ�����7"n^?݊J~��Ã�~�,��'��FRU��ѱ�D�L���D�,y� �"_�����/K�È��ȗ%@~@�˒��!?�e�w8��*7�� ?�U�U���@�W���������Y��S^⛉��T�R�ښ���t�4�{3�ٮ��?�[�R��7�^�\��f"�+�����L�z�kw��P�SZ�(L62Y�Վ8�l&D�.xE?�̈́D�k���Ⱥ�|<6�XL��fB�;p��LDc]�F��`�3S8
��D,֙�\
��D(��O�N��;U�-Ax��F��� ��b����<���'f���]=�r��u�=)�N��$:Շ��Î����@UU�ƭT���j|T��T��f��P��@�*-�E��{�,���0 6��c��6���]uP��Ӧ�^<���$L�M'��ܟ���a�ٮ;�N7�e���;u��Np���/�i6Q�^կ��6Ti��z��Dc�����F实a��L�#%�ѩD�����t�ӏGIxt6�z�I�s�^�@&d.��^�I�K�d�E$|:�\ ��!�ӑ�f	��"�(gH�t
�@F�B�k�a�d�		o���_L΃M|p��`�%		�j$�׏�����(UH��^��cX�0%��a�0$��e8F9C"�X��`�6$�*��?��,z*b���
1H�d�{��)D"$C͇D�"!�j."b"��x�s���5)�HN�D��2��$���P�T$'U;%�Z��~q����XG�Er2u"�+H	Fr���)�HNn�tW׸�>�4�X�p#9�T���r$Ŕ
���⎤ke{�8J!�G�# I�V��$&!I�M~/"1I�l�� ��HRd�΅II�"�^PbZ�٬�b��Ȧ����$��74�� %)E������Jy��w߾��������7ξ�[FhR����^�}5)YIJ]�'�+Ii��wu��o������$�+�q������%�~�Rڒ�a�tO�T5奏 UL]�Jl4�VL^����p��%����XL`���\��&����ZLb���	<��4&��n�\Jd��`G�.�2IUp�K /%3Io:�ݼQ�Iu6�W����ͫ�}��B�LR�:�h9�U �Z�*����6��V���aյήN�!.�J��&U�=��V	�B�T�|`Ke]d�vku��E�j�e>����&�tSw$K�L��<�tKeQ��|��+�d���9t�R�j��/�RY&�dS��J�6�i1ټW�R+���O�L��vpO����S5����g_=}r����c)�k���\�6��(eI��ڪ-��t��u����>���u���-`�֕�̸��`X��֛x���qX��V���F�ZSQ��oD����/9?m	;r��%姊0�v�+jr���8P[�З��m�)��=���`�m�DM�~Z&�m�C{�~��`�ܖ/t��gR��ܺ)\r��u/L��$���=������>~|���g������������sZ-�KIL��M�^ S�t�Z��5�v����b�2�1��}�>�$Wb�j
���j/6_ �)�Iz���Cz�w�^UUo�Y��F�+�=&<Iojz��=F<I�mH��ǌ'������$���SS���v�v�c̓�4J~�y�a�+�OAO2lŕҟ��d��V�Sԓѻ���������SΓ�Q�ee)�I����|Jx��UUo�7�_�F,��l'ª�)�IMӪV�)�IMb�r[πc5ɕ�W�bL^R�������u_hG0f.�i�8���KjZ��q�bڒ�������u'E.�,�i�pK!KJ�������X�V�R��������?P_�`�R���Q�aE-E+)�Wuz?7R����zc��v�q`�R��nU���"���Z����Dح��3bVN+���Ôf#������\��f�ZRRr�0k1FI�uƬ�%%���#��\w�A�Z
PRr��1k)>I�5�J�Z
ORr�781k):I)�^�P�t�4t��$�D]�����$�dZ��������*��),��م`!'%$)eR	`R8�R6���$�")��
�u�xT>.x�T�4$��J0� $���mg f )�+�0�H�lZǉ��GJgc�:=R:��Q�Qޑ�٤2`�����|C�J9R��OA�8��p���"(����HGJ�&�����#e��^�Q̑2��vc߰��eZ�:,���#5_���(�H����C=�;R�Eۮ��/���b�+e ))㶻�@!F))���D�0%e�F������̏���]�vLb���kS?JK
URvm��I�Jʖ��J�I�Jʖ=����,X�R��o�=)XIYW+в~����z�I�Jʆ������p9XHI�Jʉ\������Ez�HaJʩ��m]"�NK^)1HI9��1FI��D��C��+01BI�����+�r;�0>I���r��/L/�(:I�lt��v��|6񬠣�$����~y/��/ݲR���[����)�^Yȣ_���<̡�"�e��P>�
�T��3�L�T�J	�YD*�Bl�"�!j�
���O0mH�����$��!�qlg&���(=(OH�h�A)Bz�x6y��Sv��D�.�Ѱ�!Of	)O�)ϭ1J	ғ�)޲B��'�� Di@z2�%��5��%`������< ��=�X�E�P.���H�f�(w�8�-D�	 ar�ɤ�#	�z�H�J�УE2��X�T-�m&�h���(�(}G�d*�D�;Zx�MߌJ��"����78 �<h���ɋ��)NG��[�/V��4�	��}W���ڂ0�p�n^��CX �  =8B���W� YQ��,��YQF��}W�tF�~1D��k���c=r�l!Z�9�q_FGES���_	6�����`Ǌm��)�?�q�2`HE�ݸ_	v���p�ƊM �ZEXq8cEm\~˳ɳ�+z��uu��G\L�0K�P�Va�t��P��Ӳt/|(fFk�V��CX;-��
��Z-�����c����=��M�X[gm�ؕ��`�v�8���/ZGS��{�:B�`��6���]��Ʊ>��M4����m�	d�e�h�y6y3(�ES��{4����0�ɩ�M�*N�+ڸ��-+D9+���x/�(XE��^��KXC;%��C����x@D�&��X�E�e��*�k�ad��ܕ��J�5�&8���$�&�ڎ$�#�6L(a ���d�c	G�MF�L1�]2��h�L풩d���h'�6}3:(5D;U��{T���ŀ?�K�(D;SU�e�(D;�T�e�h�6j6��+�ӫ�B)
��.$
<�����D��S�X�����˨ޕ�
�<�W�.8P�ڧ3��*��>QXa\��錎�
C:�O��W͡}:����@���d �p�0�m�f�P���z��Ȁ�yr�?��~k��/�����V;���A���}U�TA/���PUF6��rM����e�~���8.�[��bCUq�����/5ԔB�P*����̛K�}���l@��"C���h�/1���P'��/0Tm�M���j�z��^�Ņ�:�D3��������l4m;_X���K�y6u�5��pICݮnWx�Uƞ��k�n>2��nߚ1#��?+���w}�������n=:{��'��go^�����\c��_~t���<��s~E���-~��Px��8<
���ӹ���ݫ��QJ��R�O޶!���@�?{���,���      �   g  x���Kj�@D��a�f�3�:1&�����a�1���ᱠ��~�R)�Lu�����������sy�gv�1m��Υ���KD�ބ��.걄s��E�.T�+�P.N@���B�)��G�g�.��U�.1�h�~�8�h-�̆D?w�x�!�4�EY��8O���)$H��*�,x�
o�!�_��7���vS.8�&v��8]H�݅؝��t����#.�o�,R;o����h9/�E!A6x�'VNp�\p�C ���t�3���'<༐T���ϑ䀧 <��(�s$9Z���Þbؓ75ESG+��i��zV'q���s���ƛ����{�ao��vH���<�7��S�      z     x������F�c�S������ 	���@�ja�V�$@�#�.��+��ᛸ����1�̐MN������y����lQ��^�'��ߟ��O�W[2p��վ�@���|����;�V��|���伪�nTJU��q�|�N��5 T�x�,�oH>TV�|˹
5Pkl�B��	Q�uqv�S�o�\:ڿ���ZyV�T����|eM<�������+�U��v[߾}�=�{׳����������5�	��������G��g�CK�8�1���#��4�G���E�y���X�c��ݳ����qp�j-?�@��C�	!����Q��V�L�Y�f1��1?<�'��K�N� ���H���,��ˮ~u�%qk$=�=�fݫ0�Ʃ���ڴ��?^UvČ=��yP�˞4�1��m��)���ma��h���y��`�M����F^�,���
7K�%��H�3�VoP����V:�,��O4�%�&�	8��ވtW�r�#�s<�dP9�z�����@M`�M;~dx��]�;�Z�{9�����䝗�ױGu-$���R��4��O��j�o,��2�����Գ���S�:�S����뎰��y�ѱϕ̳�����9��Y̙X� y����G���!�ϱ����p}.=�x#�f]���\�5Y��}�k���Z?K=���*��UN�*�����K�z[[�A<�"���Z嘽[��zNgI�<��Ԍ��C��P���w�9s�$9�+��dli��
u�~�aH��J��4�f5�RfR�H�8ja`��`��pIJY��ǔ�h��[3W78��&f8�8 ��p�R�B�fGWJ{=�_� P,tRҎ@'	�����&�4��8n�9ן�������]��;�s�S�Ҹ��@�������t�^��L�T'wvl�Y�8��7��<i�� ����59\կq�L�o������
�8��QƜA�5�
'�6��VcC�⿀9���̵6�=i6���X��D      �      x������ � �      �   �   x�u�=n1�k�.�26�Q�"}�U���8��#Y��̃g(��AV$�G�tx{��|}@;x���LGk�Uj�hBΐ����B|B���TŒb$�k��ɂ��z�tB�7.��#�B���{n���Έ=�/;�7P>!�ҡ�Ѫاw�ش{ہkv&�L- -[B��pvb	(f���W�L�-�ɿ<�Lu�6wK��OQ������8���<      g   O  x���_J�@���)r�,�g��h�B��g��ƛ8�V(4u-�	���������Ϗ�q�-����;$��%���q! I(�ZR����M�A��nSuM���ü����ҥ��_]Q�ꁪpG�vLZQ_Q�ބ2q��ŧ��#�6�\���}���0S�R��_�4�ƚ+*��u����z�%K1�+���ݲ��g������1"I����P�7�#J��#��ga���[���p+h]ds�\�g%>.	y��F����D�fx�0ъ�p1�ơ�
��]g\�EF��5�!aS�U��7��9�*Ұ5��٫U��=O����      �      x�3��SpJ������ p�      �      x�3���p�2�u����� '/�      �   M   x�3��u�uv��u�tr��2�p�w�p��w�t�r�r�L�b�~� 3�r$! ��dPH� S��I E1z\\\ r{*      k   �  x���Mr�F���S�&UP�v���� �1bc�f�$�X�r��L��	r��r��2��"�I�@�c���J�5]��V��F1���-�Bbge9���%��C����KBa3���7J�;����ӳ���L�#�Ӳ�I֔)��d��zDܖD?�c�Z@ո2�]�"�hE�dk�56�z���t�8�&C<Px�M�$ ����l�d��{>L��A������~��3ɛh�6�7��d�7x/7� f�@e���d�(���) �2g4�N���X����< �p����Z�I�5:L= M������4k�/�D��������kH�5���"9�b�5U_��x1�~0n?�x�B��R��b<��\I+Z��Q�����I[�x�	��������Ī�/�a7,�	%Es���x�)�lP"Z.7O�t^�8��hÈ��4�yf(�qh��O�;"N$�r�VP4���&�����(3�:�����v��W��T�'K)92u2d�����!�I����/��ۂ�)����ۛ`~;�0�8̲��w��\/w@G)%t�iE��ku�Ѻ�����}�h��)�|�o�[0�B��Qʳ u��yҹ�oC�	��]|]0�<64����X��Ne_���4�*8l����&�J�$���^�"���!r�Ug�ˇ{�/O��z�UyY�Be��1�e}<�N2�t�P6�?��a�Dʡ�0�n�*adS��z����?�T4o���q����d�l?�I�ˊ/\s�]����j����&��1���&���])j��	kR��q�����@����z�Y�Z�J�ѯ����<��<���[�i��9��$U��u�q����J����K�f�1M7�����C�C��8�AgI�8^Xl��̠>oɠEA�N7��j��Ym�%����m���(���x�r�����N�Y��QOcV0�p�Ҵ�U���m��Q?cBhw�w1]t�:	h~ˊ��L��4G�]�p�;���u�<YmlB%C"�
�;��^����4p�2u�,�̏�R3�L�l��
���Đ��5
��c�r���vr$�iC��k7��t<���L:/@��z"�a�fmUS���`���\����S�!��;!��✢v��饾;?;;�vVb/      m   �  x���Mn\7�3��l��6��*�,���a�9� ��'H0/��X�������|����w���?�����Ͽ����K[t�&��+������'��3�@�}�c8B1>��NwA1B�_9�P'�'��&H& ��ƽ��	M�X�Ǎ`���$Va��O Vow���)@��X��V�D�i��戼�d �C��;��TAa�h8��T���EB���j�6b�bOB:IlH VF�2
��c�Em B��X�A�A{*S׊Ux,��D����F�Y �]�Ux.�DА�^ ���⭢�b��rbĤq��Ad;	�{�Q��s��N��'��9�l'�~O��%/�тY//"�I(�ެ��=ZRt"VX��&�|�ne$��zR�"hr�"���z�����I�&DL݇����萭�/V�ٓ�M��,Vq�MF�l��
Ϟf71Bt�|��&�C�o"���gO���t\;"����IM㜲gO��AbwG"����I��X�gO��1��9�l'�c&m齯�gO�����SR 
;�1����8�ٛ���_J�;��`@�>eD/��7;!b�;��N0������B<|��"���qQ�	��������N�P�hg 
;A�d,���*<|��!�-y����v
����e;1b���� ���'4�ڱ
�e;1b���� ����������l'F�����Ad;����nD<|����[�@d;�ow��e;!B�oj#
;Q��'���*�Zrsq���{�lq3S��*�kG$���{�����[��ї��(�D�S~\�{��"�ݷ�(�D�S�p��BN��J9��r*���,�գ��� 2�q/�ME՛�rW!��nb�\r�<�즢�m��uS��Ĉ���M�j*���S��鈬&F(Q�"YME�3�׆�#���Z㻊�(�D�ۣŽ���BN��v�8��M����!�9�p"l�K��M=mm�{��(܄�=�ǵD!'��6�q�b8��"t��i 
9A��-��'9��!z���5Y�	���=rN�^�
F�.1���f������M�}��7��~!�^�.�S�����y
��Z�9�v~��!i��������_�<>� _G���������Q�E      p   �  x�]��j�@�ϣ��c{p�]ɒ���P�c������PK`Km�y�^�C="J95������&�4���gg���%L�����"(���}ه28�@���:͑�N�fT��0M>�%��C�C�!����5��5��I�Dέ��U�lq��1уKk���]����__�E��zV��q������l�!��x�W]����V�K5\.���wk~���5������4/2�*Sv\�t�`zt��)nlcX�<����b�N��`l�:Ͱ*ۺxM�2مx/���� "��m�[<s�6�6��.�ˎ~;+�X<"�gǻ�O��}�'��y.���$,iO,N�`Df���Q]��Ґ�y{�3\cfV�8)1��b<8�S�<��z����5���יּK�}�^eH�L�Sjʦ��e_�՚o���"���8�2��.      �   �   x�5���0��az��ػt�9*���/Ȗ 
��$��BBk&��G6̪j��M�#	+�k59|��w��N��M/|,+��y�����j�ĉ�U��o�!ƞ��RQe�Ȟ�M��;�%�̐v3.%v���������-S,�AO��/�v��~D���1	      q      x������ � �      a   �  x��U�j�@=��b�-�ƒe;>&jAE��"L�(
H"�:$���m�&�=��LI!�C.�=����?��-vjmc�%��f�ͼ���0巘�"� �2Q~d@���}��eæ�� �G�m�������3"��=��Q,�Dy�i���:�+�e��6Ow�*�N�b��:���D?R���=�N��#�s�}�||��E%��p_�ׁ�2���_Ё����7s�K��T��P��4�'�J8�d�j�W�u�;�|m���a�#ʫcQ~�P�2���ykN�8HdO)��:[S����8�Ce:� \Ҿ�:gsQ���B�����r�Ϊ��,QaRj�&�e��T���p�8M�%�è�4IZ3�����<��e���bC�;$���Ŵ�1�j0wM��&$).r�%9�:x��m�%��|�����5�Q{&�EmQ|�Sٙ�:��r�SQ\�������Y�du;�Q�'*���eS�k���%���b<���R�,�>0ܕ]���0�bi�TyN}��ёlpi�e4_�7�eY�#Q�5���,�Zr��a�jN��}v�V���cTߦ�.�rx��Z��|u��V0�ْ���B7��4��+éN�=j�wU*ٓ���h�è��JpF�������^�ه-~�q kZ.Rp]|���>�V�Z�7| �iGI�Y����6��Sx#      �      x������ � �      s      x������ � �      �      x������ � �      �   �   x�U�K�0��]�H�wi�E�S$������JLX�y�=ְ�fd))��-�G��ݺ��r/y-��(���a�z��Kh��0=.��#x8�8rk�[���=�:ҭ��q"G�_ȼS�[����>)�����/V�G      u   �  x���KnA��=��e"��ѯٙ��cP�D �ˉ�l)2���b��:�(��M����A�ը���������&ۼ�5ޙMNwZ�M#mS-�q��C�XA�^�.��������D����H������.R�2ޡ���U��DQ�>[S0����
@��6�U�ȸd�Op`P5o_�h�:P�5��c9�L�Xq�`4�wD,�{w19��p!�B�bW�=�V��gK����Q��u�*��(��fC�0f��ċ�&����2�)��sa��}aQ��ڵ�[Y��jN&B1J�0�����۟�W˅>07��}�n/�ԦKr�BN8I�1���/��Z;�['���G��.�KlY���j�qy{�9ݱv}�	1P���L��N����dC�=!���Z�R�>;����9���8k9bAM'��~3��'/AJ���=&��[]��G�r��_���)���B�J�
�j�3-%(�؟@\#p�� Eu��p1�Gq.�()��T�~i5nl�}�Y���H�!+ݘ���À��h<X�A�z)�^Ko��Z�]w�W�8�+ӣx~��FW�T3��� ��]�$s��.u���&�)Bo�����tK$Ԉ����e8�{�U�����w�ޙ��~�mWl      v      x�3�42�4�2�44RƜ���\1z\\\ *�%      �      x������ � �      x   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      �   %   x�340䴴��24�21�240�440�#�=... e��      i   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      �   �   x�3���x�{������;B<B�Z�������C��`j�=��y(�=��Q�������eS����{l}(D���eS��"T���e~%���Ύ~\����@��KB@�x���=... ��9�      �   �   x�-�;
�@�zr�9��y�jM
A�X�ѨIwU��g���!)׋�M�Ymv������k���oX8K���T�b�d��/��H��,
�9��~�4v!�Ļ���c�j�V܎��Wq���j��z�}���0��sG`� (��o^,�f�/�K�u�Z�ZX�gFmկߴa2q=�B��?�f$Q�0�/e9UM      }      x������ � �            x������ � �      �   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      �   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����      �   5   x���  ��[�Q�^�s�&��%&�`��Eb�Ep��bQ?�ہ`<	�     