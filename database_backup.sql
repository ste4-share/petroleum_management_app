PGDMP  4    .            	    |            postgres    14.13    16.4 >               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13754    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false                      0    16873    assignment_type 
   TABLE DATA           3   COPY public.assignment_type (id, name) FROM stdin;
    public          postgres    false    259   �7                 0    16797    category 
   TABLE DATA           c   COPY public.category (id, header_lv1, header_lv2, header_lv3, tructhuoc_lp_id, status) FROM stdin;
    public          postgres    false    253   �7       �          0    16395    nhiemvu 
   TABLE DATA           i   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, khoi) FROM stdin;
    public          postgres    false    210   9       �          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   	<       �          0    16445    nguon_nx 
   TABLE DATA           E   COPY public.nguon_nx (id, ten, createtime, tructhuoc_id) FROM stdin;
    public          postgres    false    225   =       �          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   �>       �          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   �>                 0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, inv_report_id) FROM stdin;
    public          postgres    false    257   �M       	          0    16890    petroleum_type 
   TABLE DATA           @   COPY public.petroleum_type (id, name, type, r_type) FROM stdin;
    public          postgres    false    261   ;n       �          0    16430    loaixd2 
   TABLE DATA           |   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2, petroleum_type_id) FROM stdin;
    public          postgres    false    220   �n       �          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   is                 0    16904 	   inventory 
   TABLE DATA           �   COPY public.inventory (id, tdk_sscd, tdk_nvdx, total, status, tck_sscd, tck_nvdx, petro_id, quarter_id, import_total, export_total, pre_nvdx, pre_sscd) FROM stdin;
    public          postgres    false    263   �s       �          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   �u       �          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   �v       �          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   �v       �          0    16487    ledger_details 
   TABLE DATA           �  COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, nguonnx_tructhuoc, phuongtien_id, nguonnx_nvu_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id) FROM stdin;
    public          postgres    false    235   �w       �          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   �|       �          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   �|       �          0    16437    mucgia 
   TABLE DATA           |   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id, inventory_id) FROM stdin;
    public          postgres    false    222   `       �          0    16455    nguonnx_tructhuoc 
   TABLE DATA           I   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id) FROM stdin;
    public          postgres    false    226   ��       �          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   ��       �          0    16471 
   phuongtien 
   TABLE DATA           }   COPY public.phuongtien (id, name, type, han_muc, dm_tk, dm_md, dm_xm, quantity, status, "timestamp", nguonnx_id) FROM stdin;
    public          postgres    false    230   ф       �          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   y�                 0    16928    price_status 
   TABLE DATA           0   COPY public.price_status (id, name) FROM stdin;
    public          postgres    false    264   ��                 0    16945    team 
   TABLE DATA           3   COPY public.team (id, name, team_code) FROM stdin;
    public          postgres    false    267   Ň       �          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   ]�       �          0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   z�       �          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   ��                 0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   �                  0    0    Inventory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Inventory_id_seq"', 510, true);
          public          postgres    false    262                       0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 154, true);
          public          postgres    false    250                       0    0    assignment_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.assignment_type_id_seq', 2, true);
          public          postgres    false    258                       0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 16, true);
          public          postgres    false    252                       0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211                       0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 16, true);
          public          postgres    false    213                       0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215                       0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 37541, true);
          public          postgres    false    256                       0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 38359, true);
          public          postgres    false    248                        0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 595, true);
          public          postgres    false    217            !           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219            "           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246            #           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221            $           0    0    mucgia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mucgia_id_seq', 1756, true);
          public          postgres    false    223            %           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 82, true);
          public          postgres    false    224            &           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254            '           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227            (           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            )           0    0    petroleum_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.petroleum_type_id_seq', 13, true);
          public          postgres    false    260            *           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232            +           0    0    price_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.price_status_id_seq', 1, false);
          public          postgres    false    265            ,           0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234            -           0    0    so_cai_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.so_cai_id_seq', 670, true);
          public          postgres    false    236            .           0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    237            /           0    0    team_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.team_id_seq', 5, true);
          public          postgres    false    266            0           0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 813, true);
          public          postgres    false    239            1           0    0    tonkho_tong_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 1068, true);
          public          postgres    false    241            2           0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    243            3           0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 26, true);
          public          postgres    false    244                  x�3�vv�2��s������� '��           x���;j�@���)��W/�m��`"b�n�^c,� ArR����*U:m�\do�}ɒ!j�Ƿ���	�>�$L�_ܱ��|X%!�V��(-d�4�B�)���E41Ō����Q��L{�N�U���p'�7�����e���SEz��~��@U}��<�=3��j�wי���"�T��1̵�y�()_�&@)��oN���Z0Q�n�im1��`�.�	.K]d-�xJ�k�%k��v�ٗqög��sY%�qk}�BH8��>���r�$��      �   �  x��UMo�@=��A
Q�|5�� �2�D�F���d[m6UkG�=TBBJ8T��
*"���}�`������-���d�%kG���ۙ7:8y��<��`�!�sv��!�. ��y@�f4`�t�{���x6^G�Z�����-� +��ýxDP�f1��+%��L�8������w�uEd�<{��<��X�"�k�� �)��r�+�PP�Q@IG�!;w�1�~��;R��z�+�jT��W�;X��&�.c!�{���4a���M�7$D
�}�|�Bex�i�#J<V���v���I��"�z�F��]qJʈg�|LY5�I���50�2�3��W<;e�*��+v$�x�n���_������lP�� ��W�7���J����\�"h�a�Y�Ov��/E�6t���pW��=�ԓ�t_�aeV�b��s�W�t���cZ�뮅�&�^i���2G}]t����+���� �� �,�a@��h�d��u��rO��=�^�P��,�A���IL֑~�#(��g'2!ԗ-4y���՛�*</��C|�-��Ђ��O�ٞ�=�Z"��W����#VH�Dh���NI;����F��55���<{3|l�}�	�"Gk���q)�Nd�&�Mz���Yf0��oh��[�Ԭ��Q/sx�b;d�'��� G^}$-$B?̓�.V�#������-���O	3ۣ��.���������ge�Ό�ԉ���V�4�'��
      �   �   x�e��N�@�뙧�0��8�k�+H4h��X� e�1�	,={�\ccb���X^d�䖽B����2����$mI�+z0�}�!nL�St۴�+�gB�JN!8�]6��P8�%//S�N[mZ'n����2�lG����8��o���4}W�r��^��]Ku�������g���CH�����"��_��4nM���#RH��a���]QV�s"8��W��M��U�NT���23<Q�ߔ���C�=��mp      �   �  x�m��J�@��ӧ��*��4�Ղ����R<x	�6�6QI��<x,���<%�c���T/��ߟ���?I�RPB�m�m+gAK5��I�K|	B�鱸���@o�t1�.T._pUZUqU���{c��l��pr�����H�%.�7+�]86�~���S��&f��T����^��؃Æ�hz�.�?bǃi:+���Ru��}��5�}�	0�7Њ;�,Ak~�y�U��v�z�7ɿBǴ�7(�r'X��:�	����@8
'mů�q!��qY�op��co�|��jE��3�xt\���X��Dϊ>�p��Ԕ���~�ؔv�3)H��fT�`@IJ�~J�\.\��?��~�cb���#�Y6Ʀ|�?���2��H���k��pe���R~��)(R�����g{�V��V�      �      x������ � �      �   �  x�m�k��7D'�\�(i/��uL��HV+H�t9��S��C���������?�~�d�Yk-��pG�����ü��2�g��ɬ1[�:��l0;̂�2KD?��(�ID1NകyV�4�?aH��j�Y�j=B�j#��y��s��1#�mf��3�j�k�A�Zw"b�;q���8��Z��Z��W]jݛYԺO��u���R�i�	r:3r�����Ɍ��Ō�� b�'�֓�b�D�qn��Zo��Z/�!���,j�3B�zW��S�y��n���Yp\f_�����ͬ1;̂�2KD?��h0LD�a��Z�<�V�j�Z�w��V�8;�a�T�_�K>��9|�)���Sjm�kmA�Z["b�=q���8N�Zk�Z+�aRk_̢�n�־#,�z��Z�eN��cF�ј��љ��1���D�u$"�:QL��b�����ੵN@m�u6fQ����9",�:��Z�_N(Ɨ���e�v�e�f�e�uk]����D�iV"�8+pj�+xj���q�VHƗE������0*���K�p�/'�����2�
��2�
��2�jA�Z-�VKD1M"�8;pj�;xj�nKju�XZ�K��Z]0֣V�����cI��Kju�XR��ŒZ�,��z����D�ZO"�4'q�8��<�V�}[]2���.�V����~�z[�1�mu�з�C�V�}[�,�m�A�Zo"�jݿD4&��0pJ��<���!o�v�зu�d�ۺ]0o�v�x���C���!o�vÐ�u�]�ۺ�,�m�-�.�D�Z["�iQ�8��<�V�y[�K����%C����x[�[��m��;F������m�>����y[7̢�ۺG�֑�X�HD�f$"�3��:����~p�V���j��4_���0*���K�p�/'�����2��׋+����J�3�X�LD�u&��&q�8��<�V�9�l�=�l�=�l�ǩe�_<N-�CN-�CN-�CN-��BN-��BN-ۂ��Z"b���8�%"�c�Sk�ੵ�eȩe�d�e�d�e�`<N-��ɼ�
��r�@1��0�/c���/c�0�/c�;�X�ND��$"Ns�9�Sk=�Sk�e9�lHƗE�������|�a^j�c|9A�_FƗ�V�ŗ�V�ŗ��D��&"�zQL��b������)��8��r CO-�1��r �qj9���8�8ƐSˁb9�ƐSˁ]9��ŐS�iAt�%��D�iZ"�8-pJ��O�_9�H��Sˁd=��x�Z��8�8ƐSˁb9�ƐS��녜Z�_/��rz�֞�XkOD1M"�8#pj�#xj�~��-��C���ݲ��0[��+�c�:~Ȑ-��C���'ٲ�_/d�:~��-�� b�3�֙�8�LDgN�uO��"X�*X�/*X�O�:��:�"X�C�a�`���f!�uV�֕�X�%"Nc���X��Z-xj���)�u S�@2�
ց`̇`��|ցcL�Ř"X�1E��b�`���:;�X�ND�u'��&�8�Sk��Sk�eL�ɘ*X�1U�c>��/�C�c�`(��:0�)�u`S��,�ֹA�Zo"b�7q���8��Z��Z+,c�`H�T�:����u �!X?·`]8���P�)�uaS��.�օYL����,�&��&q�8��ۂ��zQ����&S��L��o2�u�=�C�.c�`](���0�)�u����0�)�u{�֞�XkOD��'"����ڃ��
˘"X�1U�.$c�`]�|օ_̇`]8���P�)�u�������)�uaS� b�#�֙�8�LDgN�uO�����
օdL���������ǘ"X�1E�.c�`]����0�)�uW�֕�X�JD1M"�q�ֺ���
˘rƾ��/�Z!Y+�a��ɼ��!g��!g��!g��v!g��f!g컃���D�Zw"�4;q�8��<�V�9c_�=c_�=c_����_<���C���C���C����B����B���k=����D�$"�s��z����!g�뒡g�뒡g���8c_�����c���b���a�3��Ϙ����1;̂�2KD?��h0LD�a��Z���k�O �nY�.����sɐ-a�0����-�`NW��e![�X��ŕZ�,��ڂ���D�Z{"�4=q�8��<�VX��I�����Z!맵B0��-�a^j�c���
�X?���~R+�b��V���I�#�X�HD�u$��&�8�Sk�Sk�e�&�B2V�Z!�i���w�B>��Z���jR+��դV<X�I��ݶ�Ԋ_*�I�+�X�JD�u%"N��Y�Sk]�Sk�e�.�B2V�Z!�k���w�:?����e!o�	�X]j�a�.��.V�Za�K�D��k�D�$"���ֺ���
�XCj�d���B2��Z!�ܘ�Z�kH�P�5�V�R+�b�f���z����D�ZO"�4'q�8��<�VXƚR+$cM�����
�X�,�y�����
�XSj�a�)��.֔ZakJ�7�X�MD_�허�D4N�������`�nY�3�� K�,�;��y/�eNp��e!k���l3�� ��km�(�ID1N��Z[��Z-�Z!˴VH�2����nY�'�R�;�I��&��a���vaR���I�#�X�HD�u$"N3��Sk�Sku��R�K��Z]2����w�:����1'�+ƖZ�0���v��V7�-�� b�3�֙�b�D�qV��ZW��Z�2���q�V�����`�ݲ��R�;ƑZ]1���![Vs��-��YȖ�,�X�%"�j���X"�88�V�Z�[�lY�%C��撡[Vs�xlY���e5wٲ�+�lY�C���v![Vs��-�� b�;�֓�8�ID�N��O��a�e5H��� �[V�`�c�j�{lY�a�e5(�ɖ�`&[V�]�lYfa�e�D��&"�zQL��b������)����1ٲ:$�t���-�C0�eu��=���0ٲ:�d��0�-��.L���0ٲz��,�&"N��i�Sj�-xj���d���-�C2L����ǖՑ�c��p�-�C1L���0ٲ:��d��0�-�� b�=�֞�b�D�qF��ZG��Za&[V�d�nY�a�eu�=����ǖ��&[V�b�lY�a�eu؅ɖ�a&[V�A�Zg"b�3q���8��Z��Z+,�d���-�C2L����ǖ���ز:�d��P�-��0L���0ٲ:��d��+�X�JD����D�q,pj�<�V�&[VG`�euH���!�ز:��[V�c�lY�a�eu�ɖ�a&[V�Y�lY}k݉���D�$�'pj�;xj���-�C2L���0ݲ:�[Vw�xlY�C���![VwÐ-��]Ȗ��,d��7�X�MD��&"Nsǹ�Sk��Skuː-��d��]2t��.�-k�_<���![�pŐ-k�aȖ5�.d�n�e�_]f���0�4����)��<���![�p��-k�d�5\0[�p�xlY�C���![�pÐ-k�]Ȗ5�,d�=�XkOD��'"N���Sk��Skuː-k�d�5\2t�.�-k�_<���![�pŐ-k�aȖ5�.d�n�e�D�u$"�:����������ੵ�2�lY��u����[ր`�ǖ5���e8Ɩ-k@1�lY��e���-[րYlٲ�
"ֺk]�(�ID1N��ZW�Z��������Y            x��]K��y]�~��P������[R#��%i���Ȇfq`��@,�/��d�E�A`�@A���?�O��ܹ��ztWW}s�H��sj��S�}X��'wr�����'v���s����O������������o�y���'�~���?��a����_�?�x��'��o_����֘�H��o���ϋ-ý�o����_�bp[M	��n�k � @� �zys�o��n��
&����Y�d[�M���ͽ��o߼���o�ϵ� H��G�����C����O7�޾���]�|���}�oO6/p����ً� 뷰�.��a���7f.&I�uh��U��kx&'E�i���O�. rz�Z�q����ɨ�Å�tH*�cX[��H8�'��3ؿ�|�$��/�����_RD�/7L絰���r"����sv����01u�M13K}	���K0Y�K�)�)�̢^�}t	W�*��W����a������?�js��T-/��}9����6�K��FBø,��4g�>�����;Jw�;]���ܠ��K���hʓ[���� kz�=��ja�K3e�ʭ�uN�0�-�eY60a�_����C�!�ޑ�Qw7=ݜ���o_����o/y
�?����d������������[�#�f��G2\���/�>~��>&��n:�]��n��=Z+���3��vJ�d�� w��vSw��yw�~����t�t�m�$a�]��K��]�N����Z؀5��n��'����ǁ���Xh��FF.�������f^Ȃ���w�d�!�����n�C�x�N��)�O�'-��4�/����%&�rfG?�;0�N2L^
f�i��U�PKֽ��]B?A��M����,[h��ƌj�l���.�|��5n<:�o~��ōS���}y�^��)!���r
�6a꾡r
��]�yO�b�},~[���J��JA{����R[cC�r{�T �J�eo��&�U�e� 2={�;����?��O��8�I�������B[@���7���k5(�`g�b	�SQ��(���tU�K�V�$�E�/ ]���T�����U��UT)�%��B��9]s��b�?Y��\��E��۬$�EEf�+ Q��Ea
�^Rx���8z�=�a��*&l�.�z%�Mx�х�^~]f�xж<���4�&����.Ac)i.C7�v�8fH���G���[�N~i�HC�1T�
.p��x0:�ÖP���`L�ށ�f=�@I���V�s�`|�ȗ��Kл]�_���y�:i����r�ғ�`�D�!�]��Ṟ{�%���܍!�W?���~���!4I��U�;���n��"ѥ�N^�.��#�����	���D��_G���r|���+xZ�<���.���;��lJ#6�bp�U�t.ڍ(~^x���v�S���?���TmV���@�ۊ�;��71���{�c�6�g��ʠEl��n�����`���c8?ڌ���jQ�G�1Xsr���9��N���Y,�� �������E�Ƿ�7Oƅ�O6�~��񗗿om����+X����{�4d�#Yɯva6��S(+����I�� W�� ܐ�f��V���JP�nW��.%<Ż�zl��N��Y��,0�A&DV�B�.�b�����]*��hY��X�3)�2vE�Ί�@�.����YA���_M��<exdCչ�m���(Q��e������}W�,�'
>d��U��9��$U�rK��2Q�AepMU�rB��M��wz�z��#�¨�����v��t>/����Ӥw�>��!���v�O}�8d�������|�٭������e=�R��{8Ys�x�ؼ'��T�{���@�V�Q�
| ���v>���qz��V�/Q�
��K�
� � �����z�j�����C'g���x�����T_�Z�=�GӋ=�$a�(}�`�L���G�<��uE���O������My@��^�=BH	��hy؍'�ɹ*Q�����V���o�y�Y�u�-д�!d����Y��Yd�^���\���g���*�A��U>3��$藲�g���USV��ߨ���*"{T?X���Ȗ��,��\��I�*�|����o?�w��w0(Ӳ�<��v�Z�a� �cA�IP\�N5&�E8�P/fғ��%T����+��)f�D��[p&7�����T����T�]q��5�TЂ1�6멜���l֪xE[q!O�����qֺ�)���jmN>���e�>��Q)gm�$N��9k���	zw����"%=֡0�TA�5�3�,(���veZ�lT*/(ҳ��F aПg��H�z�l�w��l�Fz�l�����l��n��xMI�G�t��p��t�A����߾||�':(��U
�0@�-M)du?������@�&;�A9����mgԠ��MA���?�~
)3h�S��Ao�-G"��T��ER�
���E����E�t����em�P]^�G����Z��₾�;9����O�?y��x�\��7��ܫ� |痸$B 5@v��%�8(���,�uE����A	gz��Ua�;�����zW*�h�^���	�<ٛ�@N�'{[�d`�Jɾd"]Ʌ:%��iF��K�!�e(X�ϻ�H��Z�a���n�er�[�U�j��䗿�q���[�o�49�2�@�59��E4�J	lDsMqv���JÑ���*�Lr_��T9��'�ک8A�����)���V@�Y�����*sj=!�FeN�/O�T�T����Re��/IU梌�FW�X�WC�W���ǆ�_�x���=	��"��"��NS�"C۞�ߞ�=�����a��Pi8�1��Ďt:����6`G\��v�ж�:��U8��֑�%<1��)��>�dm�#Kj]1�m+����c� {��^<��W��Eb� cU��cHC�*��UŐ���9�y���_?���w��B�ų�߿}��Ov3��y؁�%�r<���(����:8���Z7x�
��T�:>���h��I��2��)p&����?HE�UY��fB�h��5��E��F�h`	[B&����(���<ZG�� *i<��̥� ��� h�HZ7���`z����O���C0\yw��ΠU�H(2�ASB$N6�u�t��d�(ڔF$Pf�m2��ea1�%н!ea(�'��1ea/:$T2Ae��SQ	G��M��&z���Lj�qea
&5��,_0�/HE���MQ��-0�	\al9x��{����r�
��DBa��&$D��`�#�k�-w�CiD��`;V%��[Vc)��-[�:��-�ٟ�x@%[~�?R�PT±�a6������ڂlly��MM�*b��l�R��!rW��c��\lW[��������n~n6__Ih8��%� 	p	g"��
�g'<�W��\~<�a`6�G��U��B�TF�8���� K�CD$R��U,"�
�[Bo@1,�� O�\E81<�ۙK�A����L�{_m0�|�����O�=�x�M	e���x%��p���sdB��p��A�2�bX���˄���0��2ˣ-`@ۃ333�]<�z��Ie�;����l��x�� �ٞ��	3�(ۓ@s���4`'!o'����#��C4�x�yp�<� �x�p�?����Ϛ���̂sfqu��
���Σ�Om>:�����f�a l��崩@�W�� �Y4<���ljU��!7������0O&0�GX[�P���2�S���&HUIS����	v1V��ЏT��.���@V@�
2H�� ӡWw*��(�@7@��+��/+'�����R�MP��͝����8ʐJ�,p�Ӣ	��x8J�J���Ƕp��2�98*�J���k4p��r�PM����R�HȾQ9T*Bw�7�    J�dQK�7��&2l�ntMd'`�h*��N̹�T�Ki-DD9ɷQ"Td�d�� �Ѩ���_mԩZ<��7o��o7���<���<DI>ϐ����&�	ü����^������VcB
ۊ�����"�
��U��\�Ql�m'\�����q�\����t��X�j|,;=]v�^��e��8߭���8ĕڤ���m��CYح��B��K�}y��O6�>��<Tϔ�e	OBM���Zjej[+��\�bA�LW���A�L�Lr���h�LHp� �2e8ATŔ� @)LY��gn���kS#��ÔM�/;h�)��^<zPS6V�H���lQƝ��Á�m,����j:��n?��ۋ�/�ݜ?]<tl5	��r�D"�'Sn�Id31�Ԕ�"�1�0�B�L9�pg �6���a��1�l*?�~)�b��A�K9��F2|��R.�W���\"w��A�K�D��Ƀ֗�j��BC��$�#�
b��z+�b��������>}�ps�s��AMLy;�#h�)�2<���*��>!��BWL�P�p
�/�<g��3�PSa� wej`*��p�ڥe��)�p��sb����r�БK#.� ��@,�FXA�Y�p:�\p����@@��v���Q3j�R�_ML��p�A�������!��O�<���A�-EP�R[�u=�O��S����H���l��֌�0���͈�{�x�f骶v�c�I4�P�0�=L�UшC�ؐ����g�C4�|�+Q3�!�;����9�OD��hH�G$QH�a�E����ѐ��U%"
o4������ͳ��G��⁈�~�F"�P��!�4�q���\W�"Gj(�G8ќ#��y��B4�HQ
������	�p<�GʤD�b)��d8�4G*c	]ل
��F�t�2 �L(ڑJ<@$�P�#*�ȹ��Q"���%����mv��4ܩ��^���̓��:d���)
}D�DP.���	�Du9�1��N��p�	�\~$��7�1�D�G�Z8���A!���\c � +�k���=�!�(ֆka�r�bQԜ�\G Y�X���� �K$˸�l�:x�X�"�>���:�v�b6�B�� J�Ø�F�j_m�Lв>�r�� ��m�%�nSGy���N�#�&�xjD��#���&��hV{bI2&�l��!��P26�p$�"���@����E!�4��e�h3��e,(1��E,h3�U3�	��Q36Py$�����	Z�{-t��M���~����H�M�3%F����Z"�F�!;��@ő,O��'0�g$7L���Erj�'h#��)CoZ�uHNGb��Ebn�
4�E╊
�EҕM
4���ulB�]^���	��q�'�A�~���߹u�do/�N$���N��"y���C�zJq-q�Z"yS�d`��H���h!�w1f{h�nH�ǈ���!�s����9�Xt�0H!x{x�*H!�T|� H!��h�()�+ڄy��<�"
]B
��)ک���N>���7?\��|x�ls�⻿���*!?����
�B
!�")
EA
��\G�(�����F�B��X�&�#^ڃĔ�m��� �Ρ
ƌB���x:�F��Gl�⑊��q��#G��G��P�(�������4�3�����0'�cF�{z���Jb->=�7nݬ�����?}�y����>��@yO�HQ�j

ST��[�A�S�kǢ1WK�9��\\>���龵��!͝�[� �1d�I��$05�$Ũ���JDRqjo-�����ꭄD�N�D��'��@�*v����4ж�s��BU%�ʜ�[;Y�z�����U8���ٯ�>�x���1��Ƈ�[�ʛ��x���W\CSN�e������� �"���A�<��Cc>��4�y�;2�����92��m���m;2!����!�?,2�/��Q�ё	,��,�� �@s��XɄ�����Ʉ
�����������(�񠸧uY��Q&|�mNn<|������o���ˋ0��]J�|Z�:���@�Ok7K$N��i�g��O��ijF$P(�iͳ��Q��i3�B���~ڨY`��B�O��j*������*��������B�O�y[�+4���7��B�O�9_�,�����qB�Am�L@8��$�v��،�	�:w�"MBm�2IG��W�-ID�
�Amu���1�^��fi42�����8�m�r����M(j닠2������H�I(j�e��:�ڕ��E(jW�{�9�]Y�R�2�v%���z��-��8у�v%q�Z��E���6~��������$����v�H";� j��#�z��K���t�W�n���"lK젚8��*;�jo�4�������,��A�P���[b�C��r�4�/�]*vPEԾ����AQ�E�'v�_��`%-l���6��tJV&mF��Øb��?�Ǩ���aKd����5/��)�΢�0�$!Tu��46���C��r��?ԁc,�� �	51zsJ��U���Á�Ԝ��!]A͉(����ԜHR(A�vD�ĸ$���=�<���뼅��pr�P�|��a��н�6���(:|�A3�K�B��Q	4��r9�4͏E&	P4�.�m[ �*hS m�4�`�2�ʟ\��=%��3�/�D ,��3CI�-����J��4��*	[*A��3*�� A�Ϩ�'OP4*/d�XAcШ����|x����EA��z�ѣ-h�K�Er@�|�A7ШP�Lz�h���(R���@�ϐJ�d��=C��'�y�tf��:z�2�m�T�e��h���T*P�3�(�'п3T��q� }=C�,�c �=�����7hjq�[���ތf��t�+b�������ѹ3�d c���m����Q�3�"��;�rF�C[G���p��n訳͓�,`��3_����f�Dl�����1�I7*j����Y�阜t�c��c��B �w2f�":��RO�QK3��;�4c�YĬQ-3���l��;d� c�h����f�(�KS��Fi�X=E��mT��5S�v�F��X-n�F���H�-�r��� ��m.c#�I8
]�r�J�ă�\^N�1q4��S��n��
��`�����r����.�t7糵�У3���� �0�},�1��@��eP���
���é�}�	Bv�)��G$�������3�]�z5Y̋������D|�7:�qP�2~"���rT�Bj~"���pT`Cmޖ��J4H��#񝍊@Z��i�� ���u�!�F��?��v�)ZPf�����M��d��n�٦�q2�O�N b�E'����n�lZ��d��m�!5شF���Ӻ��i�Z���u��l��#�����b�i�&�	�5شFɄ�غmZ�}dx"5!���!V����t�b�u%úN�-P�����~vjOd�E���/M��U��d��/�#K��F��?+��>�]kt���{��d]%����~�,�$�����ŴQ=��O��dlU"�����ݸQ�����[�֍ΐ"A��7�Bv��o�h�!�����"d_�R+�,��r:���?d�UtT�.U�|��oX����J��;��!�(�qr���#[9�AV��d�-!�l4�mf�R�U.kqs��������cU�����8^���.��X�-��"��X������X�R��2�%=s�VBXT�q\�K�Z�-�#��{?�~t۳���/����7?\̢B�䳨�7�U��$�Cԅ�U�P&�{X���U�P�2�K/(��h�'-~9Y�k:ę���AA�j}���R�
r��7�B�
��v�xg_FV�Bhz"���*KO�5��
��Y-���B��4���*,���d��ⱊ22�N���Gu9�U��O����L'�l9"��F��͋7?Lq���͟�l_�}���'��nE; �   ���@���� a�����?��~��É�~+�c�߅�K��~��:��������v,Uߐ�ك������.��^�Y�_m���o�w��rx��ye����Ui{��^܁��������|��(��      	   �   x�U�K�0��]�H�wi�E�S$������JLX�y�=ְ�fd))��-�G��ݺ��r/y-��(���a�z��Kh��0=.��#x8�8rk�[���=�:ҭ��q"G�_ȼS�[����>)�����/V�G      �   �  x���Mr�F���S�&UP�v���� �1bc�f�$�X�r��L��	r��r��2��"�I�@�c���J�5]��V��F1���-�Bbge9���%��C����KBa3���7J�;����ӳ���L�#�Ӳ�I֔)��d��zDܖD?�c�Z@ո2�]�"�hE�dk�56�z���t�8�&C<Px�M�$ ����l�d��{>L��A������~��3ɛh�6�7��d�7x/7� f�@e���d�(���) �2g4�N���X����< �p����Z�I�5:L= M������4k�/�D��������kH�5���"9�b�5U_��x1�~0n?�x�B��R��b<��\I+Z��Q�����I[�x�	��������Ī�/�a7,�	%Es���x�)�lP"Z.7O�t^�8��hÈ��4�yf(�qh��O�;"N$�r�VP4���&�����(3�:�����v��W��T�'K)92u2d�����!�I����/��ۂ�)����ۛ`~;�0�8̲��w��\/w@G)%t�iE��ku�Ѻ�����}�h��)�|�o�[0�B��Qʳ u��yҹ�oC�	��]|]0�<64����X��Ne_���4�*8l����&�J�$���^�"���!r�Ug�ˇ{�/O��z�UyY�Be��1�e}<�N2�t�P6�?��a�Dʡ�0�n�*adS��z����?�T4o���q����d�l?�I�ˊ/\s�]����j����&��1���&���])j��	kR��q�����@����z�Y�Z�J�ѯ����<��<���[�i��9��$U��u�q����J����K�f�1M7�����C�C��8�AgI�8^Xl��̠>oɠEA�N7��j��Ym�%����m���(���x�r�����N�Y��QOcV0�p�Ҵ�U���m��Q?cBhw�w1]t�:	h~ˊ��L��4G�]�p�;���u�<YmlB%C"�
�;��^����4p�2u�,�̏�R3�L�l��
���Đ��5
��c�r���vr$�iC��k7��t<���L:/@��z"�a�fmUS���`���\����S�!��;!��✢v��饾;?;;�vVb/      �   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I         �  x��VAj�0<'�)�-)ֹ-���������1	��t�x���H��-Y�O_�X�ߏ�ϯ��3{]��˯�n�P"x"R;�N�tC`�H����\j��Њ�(��s^rھ+�s(��B��*��m���wbxywB�R;1jH�<�B`��ȉ�8���p���Id=�z�#�c���G�F`���X��{��ˍIt_1B�Є90���4�髎0���钱���6�9�`"4�c%+�B<�p���ɍ�(i^�[���l��
�s\��!��2���Oj�3*�TNu���I��*lR�(��2��Io�n:v3����E����io��I��P&|�&ʄw�'�����5�ʀO��D�����t0���0&|�!�~����e]�_J�I�      �     x�}�KN�0E��^��_lb�1b�� ^�:����׷�T ��$e|���r�JDx}���z<��C�A�H�u��"Aҟ��1���/ߥ>�� �ET��h��W,S4(��s��J��~fjpR)A��T�Q�.)S�3`]�k/�[�bda��tHy�D��9�pU���~��2dC�I�˟�ff�if"<���+,���0C#�4�`d��#�-��zk��G�M���s4�{$�l�k�&jd�֪�#~���S�HQ۔Z�F)�VeJ����QJ������'      �      x�3���p�2�u����� '/�      �   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      �   �  x������F���Sl��"vf����q��Έ��n�C��lp��mR�py� E^�T���$���I�D�#�k����򅼻�|J/A-Q��O����y�ȯOO�?N������Z�\n���Y�x��/���/��ǀVJ���6�8"��}�._IJX�*a�� �N�w�m�M\��&��O4��Η�$T��M������^��jI�kħ��kf�k��9��:`/v.�� ���W�x�q�=�0����Tw��L>=��H���j�z��WsQ���C(�ؤ����g���2�����Lxt$������7C�"�r`i��Ec��yf��L)ΗO�0�Lc�Pk�l c��F�ch�`ΒDB��$�#�	���@�p��P|��6����i�H/�2q�Lr���t�e)�zcX� &Ê!\M�2��9 ���f?��ʇ��VK�ŕs�tŃH��?�}�ݼ_�{7�ɥ��d�-��N�8�$ 
@dE���j�J#��|N&4F`�� �N�k�J�'O���x����[�d�3I�����,��*P-��u�¬�qw*��ܥ[A�ihp耠a�4W�6������2��2�`��;�0�[��{w�8�4G/�@	���hG���!�=�k&�w��$E�mIz�i�ic��;!H6X�c��[�|[��s��}�"q�R�V����v��k�HO��1.���>^�R�{U4/m��4[�5�3Ԩ+�!h%ͩ=�p��|oʋ-÷��^��v��Dqi\Z��_"�x��({��Z���C��߽Y-��QP�F�we2m�<]=�%xGa6�H��?A ��Y .j�y��WO�������>.��Ȑl�
cښ�ع4����q�3���Յ���a{����o��5�ڼ)�n>65��wWR��;r��L�Vn�;$� uy?Y],�FW�@��`]�'�c
��ֆ,���Aݑ+�*F;�n��/?]���__���Ɋ>�lc�s���lzhvW^V����e6l�d�6�i3ɠ�g��g��U�������xy�F�������:J/��h��>��FCWk}f�����`���͕�쥖���:�6,��*N�j�6=��AT��@��g���m�p$�z=Ob���a�l�.��m�aA�Eܾ@�d&�����Y�f�`�L�6�(��AwMQ����v, e�:���@o7tP�pPc��A�l�X.�)S���N-X�^<���[3MD      �      x������ � �      �   �  x���;nA���SLBƌ��]��ʶ ��Cr@�Ȉ����;@�E|��g���c��j�������H����]����y������C����
2 $��ؿ�G�c̤�qdAd����?�}��X��C��L�,q!���1:N��ނ��'�\Y�ҊHA�0��R�����߷��р����f����
�=P�4.����,2'�������L�@Y�(4�3��
�(-��WM;.f�b��4�=��OOn�Lm�ޓ��E}Acʄ��MK��[A�R�u�!dI%8࿍u�̖�c#��ʧ "���]U3��)&s .z��'��6��Ȕ�a�Pώ��܋l:4�YkE����="��� ���1>����5a5�Z���L2B0!ώ�̘��(�,���S;�x\6&HDr�m�1�_�o�8i���ړ�S�&&��U�۹��^��Mّ�;��������z{"�H�>���P��).��,S�{NϜ�LYe�!���0^���;@���G��ُd����$��Ȱ��U��|w<�	�<�9c��9(�b+}������zO1?�d#_�9s!��/b��"Vb[��:Α��#yv�jip�₥�3l<�h��,�_3�=��]�ψ�{斔7��n�$�|7����      �   '  x���Kn\7E��*�7������qf��]�U��;HѾC����S��Ӈ�[Z:ߨ��������_�?~�s�L򵷯�_����ۺu^�䭿�h�}h�������mKf�	Z	�j�<��>/���i�(��8�@�!#k�M�&"mm�pB�	H��lDA�JX�����a:��%&��FA8��%����	��8��F�)�;=]	�wf�MB�`$�9�+桯 A:gA��I�ÚF�W�Й���%x�� �Zo3��{s����>$aTH(j�����gU�]���$���f|)��0���NX��!I�-�{z<�C�@�J�p����WO!=�!^ �&E�%� ���H!�BB��UB��"�7g�#n�����7QC���ڊ���kXq��	{�]�F
�������g�HLX֢+�P��WBC%j����$&��x�%�:)��d����#Ϊ��`�"$�P��Y�����g�ILP�|��(�Y���
�θ�F��VN��FA�
�R0	���a7w�4j:�`$�]#��Q`�@�{&�ZN8	�5�
��(�Qs�,�p
�[7+5�E�����kN�Jb�p6VzURQD-_�x	��HX)d���ʚ���@N�BbQLD�����t��Kc'T1a��OB�QA>qk�T1`{�$|�M-]�|�!`Z��G�#�7��Ȗ2x���GH �U`>�x�.v���|���I�p��M�a�x����@�Z�%� $�7&iWSx���HHЙ˟$T#�7���'�6�7�Jb�ިzB&����ޱ���������[��:9@�1Ҭ�#����0Wl.Bur��ci�5x�qur
���@'�c.j����$&�ŉ�E88�Bn/�,���ビ��?�w\98�BN����O998		B~X� �D)�C׊<���$$��҇ �D)7Z,�y��AI �YBJ��29��CNJB�H��*�D���qz��#�p�	{��D�9�_ F����h���xM�}���?��i'諂� �3viy���a�� ����x�5<;B tQ������qQ�����2���ӗ1K�l���q�uk�#OL��irX �t�e��~쐏N�|i�z�c�jYs��S0} �'b�y;��k?/��k���Zy�c`�X����DʽHl���h��3������@���ffS�Q�����m��J�����f�R�]`����/^�ZO���} ��I:�i�E��q�Ony������n�w��������L�L      �      x������ � �      �      x������ � �      �   �  x����j1��:�����ko�M�d]H�!)�`R��ƅ��>AO=��s�!�7�HRRV9ߌ��������K���7?���|�W���ֳ]��PQ����D�F�8D�:T�+�Jr�
Ko��ϫ��^�	�g���)���$�t� �L����/{�PD}�AY�_�(��l���.Th�J�f��!)V���-�s�4�
*r�7�9�_\� �՚Bn���q=�������bZ`3QQԹ]A�?]-z	z��A�}�y��n/�~�]��rO���_���|��R���X(�!O��h������E|���J��x6�����F�ֽ�"!�3t|�!/O�wv C*%�
�2.���v��׿�!T����tObB�=%+0ʆh�c����Ǡ"�.v�r|��Ғя3O'�'��A��
��u�y�_6��|�\.6��߻E����WH]�ԢV��)&3��ST�Q`��3�G�l�Y�"R�OMȋ�Z��'�"9��v�tW�@h�b"$K��%�#����I2Eɧ����ѹn�)�xhK�4���nb�[lW��w���`�pg8��ֲ`�˩
N��/x�Mbc^�_��Ӹ�.����p��'������������Z&�m���p��\�G<�$}P�����      �      x�3�42�4�2�44RƜ���\1z\\\ *�%            x������ � �         �   x�3���x�{������;B<B�Z�������C��`j�=��y(�=��Q�������eS����{l}(D���eS��"T���e~%���Ύ~\����@��KB@�x���=... ��9�      �      x������ � �      �      x������ � �      �   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1         V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����     