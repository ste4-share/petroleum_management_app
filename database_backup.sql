PGDMP                  	    |            postgres    14.13    16.4 :    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13754    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            �          0    16873    assignment_type 
   TABLE DATA           3   COPY public.assignment_type (id, name) FROM stdin;
    public          postgres    false    259   �4       �          0    16797    category 
   TABLE DATA           c   COPY public.category (id, header_lv1, header_lv2, header_lv3, tructhuoc_lp_id, status) FROM stdin;
    public          postgres    false    253   �4       �          0    16395    nhiemvu 
   TABLE DATA           i   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, khoi) FROM stdin;
    public          postgres    false    210   6       �          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   �8       �          0    16445    nguon_nx 
   TABLE DATA           E   COPY public.nguon_nx (id, ten, createtime, tructhuoc_id) FROM stdin;
    public          postgres    false    225   :       �          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   �;       �          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   �;       �          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, inv_report_id) FROM stdin;
    public          postgres    false    257   �J       �          0    16890    petroleum_type 
   TABLE DATA           @   COPY public.petroleum_type (id, name, type, r_type) FROM stdin;
    public          postgres    false    261   �j       �          0    16430    loaixd2 
   TABLE DATA           |   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2, petroleum_type_id) FROM stdin;
    public          postgres    false    220   Kk       �          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   �o       �          0    16904 	   inventory 
   TABLE DATA           �   COPY public.inventory (id, tdk_sscd, tdk_nvdx, total, status, tck_sscd, tck_nvdx, petro_id, quarter_id, import_total, export_total, pre_nvdx, pre_sscd) FROM stdin;
    public          postgres    false    263   bp       �          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   �q       �          0    16487    ledger_details 
   TABLE DATA           �  COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, nguonnx_tructhuoc, phuongtien_id, nguonnx_nvu_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id) FROM stdin;
    public          postgres    false    235   �r       �          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   �t       �          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   �t       �          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   �u       �          0    16437    mucgia 
   TABLE DATA           |   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id, inventory_id) FROM stdin;
    public          postgres    false    222   �u       �          0    16455    nguonnx_tructhuoc 
   TABLE DATA           W   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    226   �z       �          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   ~{       �          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   E|       �          0    16471 
   phuongtien 
   TABLE DATA           }   COPY public.phuongtien (id, name, type, han_muc, dm_tk, dm_md, dm_xm, quantity, status, "timestamp", nguonnx_id) FROM stdin;
    public          postgres    false    230   b|       �          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   
       �          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   9       �          0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   V       �          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   s       �          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   ��                  0    0    Inventory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Inventory_id_seq"', 510, true);
          public          postgres    false    262                       0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 143, true);
          public          postgres    false    250                       0    0    assignment_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.assignment_type_id_seq', 2, true);
          public          postgres    false    258                       0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 16, true);
          public          postgres    false    252                       0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211            	           0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 16, true);
          public          postgres    false    213            
           0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215                       0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 37541, true);
          public          postgres    false    256                       0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 38359, true);
          public          postgres    false    248                       0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 578, true);
          public          postgres    false    217                       0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219                       0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246                       0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221                       0    0    mucgia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mucgia_id_seq', 1752, true);
          public          postgres    false    223                       0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 82, true);
          public          postgres    false    224                       0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254                       0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227                       0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229                       0    0    petroleum_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.petroleum_type_id_seq', 13, true);
          public          postgres    false    260                       0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232                       0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234                       0    0    so_cai_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.so_cai_id_seq', 653, true);
          public          postgres    false    236                       0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    237                       0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 813, true);
          public          postgres    false    239                       0    0    tonkho_tong_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 1068, true);
          public          postgres    false    241                       0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    243                       0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 26, true);
          public          postgres    false    244            �      x�3�vv�2��s������� '��      �     x���;j�@���)��W/�m��`"b�n�^c,� ArR����*U:m�\do�}ɒ!j�Ƿ���	�>�$L�_ܱ��|X%!�V��(-d�4�B�)���E41Ō����Q��L{�N�U���p'�7�����e���SEz��~��@U}��<�=3��j�wי���"�T��1̵�y�()_�&@)��oN���Z0Q�n�im1��`�.�	.K]d-�xJ�k�%k��v�ٗqög��sY%�qk}�BH8��>���r�$��      �   �  x��UMo�@=��A
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
"ֺk]�(�ID1N��ZW�Z��������Y      �      x��]K��y]�~��P������[R�B���DK\dC3�80��@,�/��d�E�A`�@A���?�O��ܹ��ztWW}sG�CQ��T�9���a�v����g�6���wΘN��{�.�~���͓��o���6�y�����/N�����?��a����/������͓����D{k�z$	��7o��|�p������%��Unˠ)a�ߍ� ���/l����q��M~�@�@a��0	�5N�%��t5�m�?�|�����?]?�V� �.�r�O ���	�.6�߾�����>�}�޾�����8���d�yv1`����o�AY:�q�����t���L�����M���j�a�O��tv���i�@���	��1��{�U�{�N����=v���0IM{l2k�� 	����;��o�W�/������=z��!E��u�q^hK��]�L!'�Z@�9g��Z���97���h	i�|�s�YBD��hQ'�YB�-"Ofd����ѦX��*��W��ā��q���O��ܻy�E0�Η���j��3�/$,�=�ݔeA4�N��47��;��%-g�;a*�0�)�0x�ā�<9���v"%�h��
����M:u*6e�S�9�7p�(C�������|y�;�wW�CtAM������6_~y��w?��Ͽ>���G������[u�M���]2=||�9�j����_l~{�~}7��/߾������HԊ﹕iw�7	�e���_�n�ݬ��륰Ō�pͥ(6�9�{7�ҸAe\nr��AL�W�4.��]��ÅW:�JK{tt�S;)K��w?�2b\�������@c����Ͳ����OLYJ4-����!;����@�+i�?K
�3�&0�-Q�Y�58���:�ݯ�k�`�H�_���ы��3��x7 Y��d���wD	��=�S������)��҈ą����&��}���]�y��"�},~�<�CB%s�`�̩��o��֡�D
 NmA�fJ1hRS���)@���-)�E�{m�0"b���j`�`t����ܻq:T~�����,�6��e�r|,A[@��&����V�J��F��(J�2ֻ �!��*�]��I��������}��%(�#��Eg[�.R�.���%��F��9]���f���x�`g�.�6+�`S���
H�`s�=��X\ \�\v U׆K���S��@�9�H����@<ő�ܴ=L�[��^��ͼ|��'ב�ֻ�4AGb�2tg���&�c(�m��
��y�\q- ��>;���%(NOb����%h�Ps��SѬ	fH�����"�Z6>��Jc�pm�����7
C��l�w��M�$�O�q	x����`|�ɻM|��$LN_��� M�ɼ�W�
O�����w�/0�*+�}�Ci�"��戡�wC�o
EsC�*͍�h���D�u�{��)!s��_�qP�_m��l����wP�6Nѽ��_�����?�{�:���'f����?{��W�g*�>�<7�<����_�//�r��2K�alͺ���Jdb���F�=WW�6��Se�+����I�^����A�!��\��@�/8��V]����]8Jx��2��x��Nų|!��F�R#Ȅ�
Tߥ�_̓��Ke_-+��|+&eV`CƮ(c��Y1���2_�=+�~���	"4o�Ws<�fn��#m��	�u��9���	���mf�;#	��]�+��t�gp�c	���C�I �P
�sb��&4�CșCW8��B��	�rV P��R7��(�&w3�>nHy��CH�E1��at�{���N'�x>/�M��{x�,�� ���"��>=�!�l�x�����8Ź���'g<�q��{8�x�(�6�	�Sţ���@0L<:m�$ܓ!M�������Z���'�k�9����[�
����j���x<tr����.���⣑��S+}��Ql�A�3I�9:n<�,�ln��ƃ�P]W���ƃ��p���ƃ�Nxg����C�bweJo<pY8n�ȈՐ�H<.b���!��X��+�P�c�7�hB�U��S
�@V9�	,<e5+�#gʋ�rvpU1�Z#�p��'�������/4Yq�A"KPud&�q�G�L��b
O~�(7�xBדIO&�3���d2̮8B���N�cN&7��T7��T���J'�T�]q�r'�TЂ1��'멜���O֪����������q��(k]�]TP�6'������FٯO��xtKY�"��ӣr���$�y�^)k?e��HA	�u(�F8U�Ke��w:�<"E�]ق2*�
���l(�H�L��D4�!��)�D�]9�"*�D�Q�:*�D��i��*?�����)��ș�2!���.6h~�=���ۗOl�0��C-C��@!���)�l�W�Vr\Wܠ��d�"6h!��ӹ��ٺ)hWР`��O!�c�A�aJ"2(��H$��� �H�]�� �Hڂ� �H��Ⴒ ;]^�V`��z�`A����5�..�۹���z���Ӌ���sM���ҋ'{���_��م�l�MȎ�d�=���%�A( �W�i�#��S�+��4d����!{S`�)��ے�$MB�%�J.�	ٗLC0��&d_��,C��}�5DB�Bp�tC-�C�"�*��R�@'��Ս{_�����x}!���A�Y�&����$,���>�`#�k���n"W�l�t9�d��",���!$�=�PM��	�llT����?���*�`Tt�S#�	��*"s*|�x
h#2������"s�|�H
�'2e|�0
�72�2��
h<2���#���5��J��\f�ȇm�o�)f���m�q�Q�u�ж9�J���m!r���$w�ж�8��+��M��&��1��/�<.���mOq���x$ch�XYR#芡m[qDM�/C٫T��1DP���/C����C2W�̯*�4ԯ�ɭO^����{^B/������~���������-є�a�@���&���������к��CTȏ�*����]G�M�u���q�O�3Q��A*��ʢuD0���F����t,��4ZGK��2q�@�,��: �PH���g������E"i�x x�j�����?=��O�r���:"8�Ve"��0pM	�x8Y؄��5Ɠ��hS�|@Y����l�G���h�@�����h� �ǔ���P���[hNE%U6aR��+[0�-�ƕ�)���"�|�ľ Y"7E�?�L��&p����f���b��+�/	���S���ǖ�i���1�����ǖ��X��vl9X���7�<l��X>�<,f���Lly�����CQ	ǖ�M��&zc��lj���a
65���-_��/HŖ��]Q�Ǐ-p�	\alyx���[�<����|}%��N�h��$�%��h�+�.���\c\��s��ȇU��8�sT؋poP��V>�,��LH��W���#*�|l	�Ű [�l<1��p��� og����A?�����`z���3/�=;�M	e�G�x%��p���sdB��p��9�2�bX���Ǆ���0��"ˣ-`@�s#33�]<�z�Gf�;������x�� ����	3�(�c s���4`'!o'����#��C4�x�yp�<� �x�p�?����Ϛ���̂sfqu��
�����Oo>�Y�b��/�"�@���iS��`7A�	�
hx�h�Ԫ��CnUUA�`�L`6�*�����be§) IM������M�b�,��=���R���<d&0*�HS.�C��T~�QP�n��+��/+'�����R�MP�����7��rq�!�RY��ER):��p���m��9*e2#rpT�����h�1*����=E��!��}�r�T8��po4
��ɦ�0o4
Md����*��N���T4��s�1�H�i-DD9ɷQ"Td�d�� �    Ѩ���_mԩZ<���?�׷�ol��y�b��$�g���jh�a��WS@��R��z(P��+�e��WS��m����L~5&`[<����ZD ն x��`��9`�J�G��W�B���ޡ8�`5���$�jDZO=��!g=��bF�f��5W��4Yyv���@�FU:ETm.U���?�||�L:JP�SF�Y$��>eL�")��)c#��t��q��G}��d�;�>eB��1(�)�	�p̠����D�vʪT<�q�ޝ��tEJwʦ����Me/=(�)+_$~еS�(�#Gz��2��BSO���P~{���巛�����V��,I$�==冘D6�нSNMY�+���S�
�N ����w�xʙ�+нS�Ơ��J�r.�H���h$�M:��wezt�%r�4�O�.�<h�)�����%�9wP�S^�[I4�//n�����G�[��'�w��9�X@Oy���T��	�uE:xʇ�S=<�93՝A�ҝ
C�+�P�SAep���9(�ԝHa@5N��\(�<0��3��\qa!gb�4��
B�
��i���jD��Ì���Q� ��J�jbj$�#p��O|F8�!��g�?p��Ob���*���8 x
ǞrUO�FB��f��<hD��pl0�O�F\�	�f"�lhd��pl,"O�Ft��.!��h�ٚ9s�)t�hș�`L�]GC�
�c
�;R7�)��h����c
%>R�_UL��G�;��݃'�<{�`�;�O)��h�34ف�!���(T�h���"
}@RCq<�	�� )��sg@�&H�R�|BG��Na��	U@R&%H'� Iٌ�$�	ARK��&�Ie,@0��$�1 �dB��T�"��f!QY�G�%��_U,��HD�պ�7O�ݺ��埂�<�˫C�O?���H�K�Fr-��LDPwju��A��꺑�1��GRyVuL�|4��c�� a"��	�u�0���p�:
؃"�bG�*�*E͑�u���e�=��
uDұ�+�����u,��3��H�cmg�	��Q
�<]7�V�j{hg������_{PG mk.t�:�d��@06PT$�&��1���H$c]F2:�՞�@q��� �cE26���ɸ��76P/$�cQ��z�dbY��*�dbK���dc��*�d��b6�B�� �c�z�du�=�3A�v��N�W���"Y[��t�ɺ)�`f�YH�\Kd�sH6d"������J��)b{^�NHNM�$�Ar4e�MT��Hba�N �H��Y�: �H�RQ� �H��I�: 9_^�&TH��x̜@g��zB;��
���ۧJ���A�����h���A0,P$����
�7��H��m<�=��j yc��:��}�(���1Gop��G�q�EZ|����{AK�Z{9��B{���[�&\�3��y�Q(�Q��N�NUw���߽������{77�ο�k�(Q��Q�,�^���r,r���ޣ�)�uĊB��x��`�(T��Un�;�E��GL9��Q����`�(��M��3jx�6+��Qh�g��9r�x�Y�ŎB�8+{��A#�8����AOs2>f�����̯$����������[�w3�z�����'o_���9
������`��P�01E�Aǵ;�>޸v,cq���j\�e����e\jb��Ƶ��C�[\K�PCLR��j`�^�D$G�R@�*�z�`�JH4�J��|q-��a�B\Km+;��m��*	U���ڱ@��כF���ɽ��~}������RÍw�T�79�Yj	4����� �4P=34M�X&<0RE�+>�2�hy<m'\�|��i�3�\w�e!3\s�e� ;�vfB!7CT2f_ ?'��s2X�YBͩ�	,,��,`��		@�@뉚	<@�=`���	8�+}5�m��AqO��;��L��ڜ�x�����GO�l�����0��]J�|Z�:���@�Ok7K$N��i�g��O��ijF$P(�iͳ��Q��i3�B���~ڨY`��B�O��j*������*��������B�O�y[�+4���7��B�O�9_�,�����qB�Am�L@8��$�vr���>�}3ܕ�,4	�U�$!�^��T$�*t���#�z�ښ���DZ������ʅں"lK4�P��/����چ"M{$� �-�E#G�jW�K�8�]Y��1��ve�KEʄڕ��?�j�(��DZ�ڕ�-;h%ji���|���J*vPK��/�tZ�څ"�H젂�X�;�)j?,�F&v�Y�^g�-vPTԞ��-��j��wT&vP;��i�c5C�mY4��ޡ�e�����ڗ��;hj_�T젊�}I�=�����=N젿8��`%-l���6��tJV&mF��Øb��?�Ǩ���aKd����5/��)�΢�0�$!Tu��46���C��r��?ԁc,�� �	51zsJ��U���Á�Ԝ��!]A͉(����ԜHR(A�vn�V"Bb\��Q��P���u�Ber8���d(l>��0DJ�ނP��K�����%O!����Ae9������"�(�A�-P4�)�����f�H�x@���@Ҟ�����D"h���$���@��%i�G�~F��-� ����vO���gԂP��'�	��p��1h�^�Zo>���GR����Qv����4ʥ�"9��Q>�?r��hT(C&=�4���l� )^Kf��gH�h2q��!J�ۓ�<C:��B=C���y�2B���ed*�
��J����*��8Y����D��1�ƞ���{��0��ЭVY�oF3�h:�1}T��l���m2�1zt팶�S�f�(���Z�U9��!�����ft8Dn7t�ٌ��f�rtٌ�����Q]3f"�~�FK͘�Ԥ�5cti}V�A:&'��5�j��:��@qƝ���N���'�������F�1a�,b֨�Ç�G�kt͌�C�1l4͌U�	l�lʌ�)V�i�4f��"��6*`ƚ)v�q��e��6��u��el$��F���H����6������.c��R+� '���qLM/�T��[(�Bw�.���gj�r�����e����|�zt���� ����E_R1 �׹� j��QA Y;8u��}T A�."������d�ԼУ���!rƴkѠC�&�y�����/}G�2jQ�OĶ�R�
TH�O�V��
l������D�t|N:�٨ ��}�v[����V�/�i�����n���e��S���4
Mf�B�-�m'���d "6�Qt2�W�ɦ5jMf�2�R�Mk4����;�֨%��Sw��6��?2�W�^n�~��h"�0_�Mk��L���ۦ5�G�'R�i��aUZ��h��s�֨+�u�m!�������S�x"S-24��h����%���Y¬5�Hf�Z��q�Z��d���� c��*��KG��f�(%���E�X-���ݿJt�$cۨ��D���ƍ��ݿ$����nt��	�żQ�C$�~�F;����!;��J�ĳ����8&����V�-P��T����߰���5d�*Aw�-zCVQ-���Y�'�G�r�2�1�x9ZBV�h��� �\���( Y�#(;G�Ǫ���9
<Vq��]K�4[EK��-K��<eKzf�VBXT�q\�K�Z�-�#���?�~tۛg�,_����7?�ϢB�䳨�'�U��$�Cԅ�U�P&�{X���U�P�2�K(��h�'-~8Y�k:ę>��AA�j}���P�
r��7�@�
��v�ygFV�Bhz"���*KO�5��
��Y-?��B��4�Vedbr2�}�XEU���𣺜ߪ��٭�'v�ŝ3�e��\w#x���ś�_�=>�秛'�o_����v����Mw#��Af�V�b�����?���ͽ���D9ɧ��ļ��\#��x8np���>��    ���&�      �   �   x�U�K�0��]�H�wi�E�S$������JLX�y�=ְ�fd))��-�G��ݺ��r/y-��(���a�z��Kh��0=.��#x8�8rk�[���=�:ҭ��q"G�_ȼS�[����>)�����/V�G      �   �  x���Mr�F���S�&UP�v���� �1bc�f�$�X�r��L��	r��r��2��"�I�@�c���J�5]��V��F1���-�Bbge9���%��C����KBa3���7J�;����ӳ���L�#�Ӳ�I֔)��d��zDܖD?�c�Z@ո2�]�"�hE�dk�56�z���t�8�&C<Px�M�$ ����l�d��{>L��A������~��3ɛh�6�7��d�7x/7� f�@e���d�(���) �2g4�N���X����< �p����Z�I�5:L= M������4k�/�D��������kH�5���"9�b�5U_��x1�~0n?�x�B��R��b<��\I+Z��Q�����I[�x�	��������Ī�/�a7,�	%Es���x�)�lP"Z.7O�t^�8��hÈ��4�yf(�qh��O�;"N$�r�VP4���&�����(3�:�����v��W��T�'K)92u2d�����!�I����/��ۂ�)����ۛ`~;�0�8̲��w��\/w@G)%t�iE��ku�Ѻ�����}�h��)�|�o�[0�B��Qʳ u��yҹ�oC�	��]|]0�<64����X��Ne_���4�*8l����&�J�$���^�"���!r�Ug�ˇ{�/O��z�UyY�Be��1�e}<�N2�t�P6�?��a�Dʡ�0�n�*adS��z����?�T4o���q����d�l?�I�ˊ/\s�]����j����&��1���&���])j��	kR��q�����@����z�Y�Z�J�ѯ����<��<���[�i��9��$U��u�q����J����K�f�1M7�����C�C��8�AgI�8^Xl��̠>oɠEA�N7��j��Ym�%����m���(���x�r�����N�Y��QOcV0�p�Ҵ�U���m��Q?cBhw�w1]t�:	h~ˊ��L��4G�]�p�;���u�<YmlB%C"�
�;��^����4p�2u�,�̏�R3�L�l��
���Đ��5
��c�r���vr$�iC��k7��t<���L:/@��z"�a�fmUS���`���\����S�!��;!��✢v��饾;?;;�vVb/      �   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      �   v  x��V�n�0;73�!��y�]6����wlu�,(�mi�)�zi��V������������޶^n�ӯ�Xe|��@��4�.�S�L ����N<_m��w�u�#��5��
����@8s<��h)4BK�0�À#x���S��?���:w�\ױ#�U4���ú�;�#�Dj��w��>Vs4�Fp�
����Q��d���Խ�>��0����p'��B 	��&x5��j
����$ax��O�bW;�Ղ3*xW+vu����Q|�T�;J����UX2��������}��Ba�k�'��di�e�QZx5-9GQ�S�/?s�=iГZ�|0�Zx?����P��0����m�E�Jg      �   �   x�u�A1�5����R�f�½q���a[㴓h7%������?2��:ț���(E�?��I���R�h9��(��U���d��Y�qC2֋($�X����0��JE?W�L���>����Z�q��r�z]RJoO�:�      �   �  x��Խn�@ �z���q������;BD���"]�)� C�����Q�wm^�o®��ٹ����z������ޕz��~�6��dಆ��~�NE�9�����5b�����g�_������HϠ�ZC>r�6�D�b�{u�Ia�`�� ��a7�m
q"��kV�*����P\|:��2�с싫^&��o�{���VBY���޽3��XI�!��adx ����ȗZ�A�;�#��x~��S-O��B�G�b��0Zc�RB��c)^L��1
���n�\��ɢ���b�O�֛v���!d�Y�����R0����J̔S�qa�h�gH��6��a�0�g�%�$�`�%~/�#	vg{@������(��T�-�y���Vd�Z���Sf�wȾ�,�>EPj�	b��"�UlKA����ԝr��6���j����r.~]8K�F}�|mw�ur�C-���~��Ѯ��"Q�� ��ȇǊ*����qM� �#=��˲(��[�=$      �      x������ � �      �   	  x���=N�0��9�:b͌g�?]Į@YY)��tt���pj.�Mp�����)��O��Ȍ]k�bO}"��u ��8%p���z\>둷2I��<�27�?�^�ma�Qc���EV�r�):� ��p�pre����Z5i'�r�[��TP�����l���x׼�*�W�)J؈�2{�1x�"��g�~v���f�@Y�1��3��]�J�~�q7�p!{u�ʩh�n~��ǡka��뛴s[�:�L�PSsqM�| )q}      �      x�3���p�2�u����� '/�      �   �  x���=ne7Fk{��$�m� @�����]D$߳r�yb��c>��t5���:�_hܯ�ӿ��������;ɷ9��6�;��8o��y�/���\:*a��{�����?�JQC�l��	��Gv��F�x���U���1�� NؿNX�V�e��a��O��������S,'T a�5���x���j&��FAhf��!���dB��-s>	��@��٘�[{5� 	�� �&�@���[{7� 	29kB�ˆF�ڻ	H8�=	R�1Kc�����k�`m�P�d�4�
�%x:�$,{C��R���CIϗ�$"�a�:8�4	r�&[���|9MBA��ޞO@P �i��Bz��&� �6EF&�R��\���	�����c�LB#$h+��s&<�Nc$$��`EA�F
j+�Vo��xĝj$&�-TtE�)���rE1�#Ϊ��plDW$�*)����J��g�IL=�f&�:)�����8yqV���!��ꤠ�R�N�8�Nb��Ç 4N���sW���3�'a�۞Q�%��8	��X9�b9�qT(v�Ih�ۏSr�'!��1Ah���<3��qB�$$���GAh�D)������p��l� T%�ܹ�^�'T%1A8[3�*�(��z���j$�2UHEgcec9�
�	D1	�>*J8ӳ�/��P}Ą�$֊$T$�a�}1q@���q�LB�#8j���lt��m3v/A�FG�o|w�#e�|��GH �}dA��{���5>B�=ͤAh����p4s<ިh>6qIh���$���o�		�s��j��ƴ�����FUIL�G]O�$pUr��c�g�5x�qU����$T'H8�E�5x�qu���ŃP�\ �X)Eq\�Ą��'�:�PƉܘ�<�:�	j�j�Ah�D!w�^�Nz�q�$"���/Li�D!�w�`Q���4NB����x'Q���s�O9i���3G���I�rk�&N���4JB ����(�Bn��9i����2��Uȍ"�����N����1 22 ~]�Fo��;x���B���ؾ���x���< �;�����}A�U��|@K�}��ߚ�O����#n��w�~V��xS!#��]��<N��(ƭ��(ޖ$�|���#>G���|��|T�F|Q!;wK_�y{}}����      �   �   x�5�ۭ�0�+�2�����+9�Q�d���BW����A���Q�����*�R(��K^2�@d�]V�-R�U]�7���cYY��zFU�G�\��S�.jK���µ�z=f��{�U�GypW��䪾q���o�aѪ�Jp��b��2a1�s�?���~��Ҽݥ�~���,>#      �   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      �      x������ � �      �   �  x����j1��:�����ko�M�d]H�!)�`R��ƅ��>AO=��s�!�7�HRRV9ߌ��������K���7?���|�W���ֳ]��PQ����D�F�8D�:T�+�Jr�
Ko��ϫ��^�	�g���)���$�t� �L����/{�PD}�AY�_�(��l���.Th�J�f��!)V���-�s�4�
*r�7�9�_\� �՚Bn���q=�������bZ`3QQԹ]A�?]-z	z��A�}�y��n/�~�]��rO���_���|��R���X(�!O��h������E|���J��x6�����F�ֽ�"!�3t|�!/O�wv C*%�
�2.���v��׿�!T����tObB�=%+0ʆh�c����Ǡ"�.v�r|��Ғя3O'�'��A��
��u�y�_6��|�\.6��߻E����WH]�ԢV��)&3��ST�Q`��3�G�l�Y�"R�OMȋ�Z��'�"9��v�tW�@h�b"$K��%�#����I2Eɧ����ѹn�)�xhK�4���nb�[lW��w���`�pg8��ֲ`�˩
N��/x�Mbc^�_��Ӹ�.����p��'������������Z&�m���p��\�G<�$}P�����      �      x�3�42�4�2�44RƜ���\1z\\\ *�%      �      x������ � �      �      x������ � �      �   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      �   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����     