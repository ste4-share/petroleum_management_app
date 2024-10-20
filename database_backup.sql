PGDMP  '                	    |            postgres    14.13    16.4 6    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13754    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            �          0    16873    assignment_type 
   TABLE DATA           3   COPY public.assignment_type (id, name) FROM stdin;
    public          postgres    false    259   �0       �          0    16797    category 
   TABLE DATA           c   COPY public.category (id, header_lv1, header_lv2, header_lv3, tructhuoc_lp_id, status) FROM stdin;
    public          postgres    false    253   1       �          0    16395    nhiemvu 
   TABLE DATA           i   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, khoi) FROM stdin;
    public          postgres    false    210   <2       �          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   *5       �          0    16445    nguon_nx 
   TABLE DATA           E   COPY public.nguon_nx (id, ten, createtime, tructhuoc_id) FROM stdin;
    public          postgres    false    225   36       �          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   �7       �          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   8       �          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, inv_report_id) FROM stdin;
    public          postgres    false    257   �F       �          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   ~f       �          0    16430    loaixd2 
   TABLE DATA           i   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2) FROM stdin;
    public          postgres    false    220   �f       �          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   Mk       �          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   �k       �          0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   Co       �          0    16487    ledger_details 
   TABLE DATA           �  COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, nguonnx_tructhuoc, phuongtien_id, nguonnx_nvu_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id) FROM stdin;
    public          postgres    false    235   qq       �          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   !r       �          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   >r       �          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   �r       �          0    16437    mucgia 
   TABLE DATA           n   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id) FROM stdin;
    public          postgres    false    222   �r       �          0    16455    nguonnx_tructhuoc 
   TABLE DATA           W   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    226   �t       �          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   �u       �          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   �v       �          0    16471 
   phuongtien 
   TABLE DATA           }   COPY public.phuongtien (id, name, type, han_muc, dm_tk, dm_md, dm_xm, quantity, status, "timestamp", nguonnx_id) FROM stdin;
    public          postgres    false    230   �v       �          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   Ky       �          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   zy       �          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   �z       �           0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 122, true);
          public          postgres    false    250            �           0    0    assignment_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.assignment_type_id_seq', 2, true);
          public          postgres    false    258            �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 16, true);
          public          postgres    false    252            �           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211            �           0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 16, true);
          public          postgres    false    213            �           0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215            �           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 28562, true);
          public          postgres    false    256            �           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 29380, true);
          public          postgres    false    248            �           0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 556, true);
          public          postgres    false    217            �           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219            �           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246            �           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221            �           0    0    mucgia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mucgia_id_seq', 603, true);
          public          postgres    false    223            �           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 82, true);
          public          postgres    false    224            �           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            �           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232                        0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234                       0    0    so_cai_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.so_cai_id_seq', 631, true);
          public          postgres    false    236                       0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    237                       0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 700, true);
          public          postgres    false    239                       0    0    tonkho_tong_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 966, true);
          public          postgres    false    241                       0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    243                       0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 26, true);
          public          postgres    false    244            �      x�3�vv�2��s������� '��      �     x���;j�@���)��W/�m��`"b�n�^c,� ArR����*U:m�\do�}ɒ!j�Ƿ���	�>�$L�_ܱ��|X%!�V��(-d�4�B�)���E41Ō����Q��L{�N�U���p'�7�����e���SEz��~��@U}��<�=3��j�wי���"�T��1̵�y�()_�&@)��oN���Z0Q�n�im1��`�.�	.K]d-�xJ�k�%k��v�ٗqög��sY%�qk}�BH8��>���r�$��      �   �  x��UMo�@=��A
Q�|5�� �2�D�F���d[m6UkG�=TBBJ8T��
*"���}�`������-���d�%kG���ۙ7:8y��<��`�!�sv��!�. ��y@�f4`�t�{���x6^G�Z�����-� +��ýxDP�f1��+%��L�8������w�uEd�<{��<��X�"�k�� �)��r�+�PP�Q@IG�!;w�1�~��;R��z�+�jT��W�;X��&�.c!�{���4a���M�7$D
�}�|�Bex�i�#J<V���v���I��"�z�F��]qJʈg�|LY5�I���50�2�3��W<;e�*��+v$�x�n���_������lP�� ��W�7���J����\�"h�a�Y�Ov��/E�6t���pW��=�ԓ�t_�aeV�b��s�W�t���cZ�뮅�&�^i���2G}]t����+���� �� �,�a@��h�d��u��rO��=�^�P��,�A���IL֑~�#(��g'2!ԗ-4y���՛�*</��C|�-��Ђ��O�ٞ�=�Z"��W����#VH�Dh���NI;����F��55���<{3|l�}�	�"Gk���q)�Nd�&�Mz���Yf0��oh��[�Ԭ��Q/sx�b;d�'��� G^}$-$B?̓�.V�#������-���O	3ۣ��.���������ge�Ό�ԉ���V�4�'��
      �   �   x�e��N�@�뙧�0��8�k�+H4h��X� e�1�	,={�\ccb���X^d�䖽B����2����$mI�+z0�}�!nL�St۴�+�gB�JN!8�]6��P8�%//S�N[mZ'n����2�lG����8��o���4}W�r��^��]Ku�������g���CH�����"��_��4nM���#RH��a���]QV�s"8��W��M��U�NT���23<Q�ߔ���C�=��mp      �   �  x�m��J�@��ӧ��*��4�Ղ����R<x	�6�6QI��<x,���<%�c���T/��ߟ���?I�RPB�m�m+gAK5��I�K|	B�鱸���@o�t1�.T._pUZUqU���{c��l��pr�����H�%.�7+�]86�~���S��&f��T����^��؃Æ�hz�.�?bǃi:+���Ru��}��5�}�	0�7Њ;�,Ak~�y�U��v�z�7ɿBǴ�7(�r'X��:�	����@8
'mů�q!��qY�op��co�|��jE��3�xt\���X��Dϊ>�p��Ԕ���~�ؔv�3)H��fT�`@IJ�~J�\.\��?��~�cb���#�Y6Ʀ|�?���2��H���k��pe���R~��)(R�����g{�V��V�      �      x������ � �      �   �  x�m�[�uǍC����Ju�K�?�P@%��f��k1��b�3����?�?���ۑ-f�1�v�'B�����e�s�?����ݘf��df�6���0��,}Q\����i3��i���jR��̢�c��3",�:��Z�bN�����f��\f��~�X�"�zk�����D�sn��Zo��Z/���z�����.�
����k�{�;s�o��l0��&��l1;̂�2KD�D�kZ"�9-pJ��O�u���Z~��gZ���=jm�y���r�����2����0�ՙLj�A�Z{"b�=񚞈�����ੵv@��>fQ��Y���1/��`N���a�k�͌��a�Z-�X�HD�u$"^3��Sk�Sk�[R�Xֱ̢#d��DX~�2/�Ώ9AfcF�ٙ��i�X��X�"�:k��(�IDqN��ZW��Z��Ժ:��uY��u�˯N�V8�/'㗑���X+�◱V��/c�;�X�ND�u'"^��فSk��Sk�eؑZ!�,j�d0d���W����
����b�2r�0~k�]�2�
��e��k=����D�kn"�97pj�7xj�nSjuɘZ�K��Z]0�V�����cJ���ֺ�0f�u�]�Z�v������e��>���&�8'pJ���R�vːo�v��o�v��o�v�x|[����ۺ�1�ۺ�P��n�Q����B����B���k퉈��D�kz"�9=pj�=xj�^�|[��'�ۺ=�o�v�x|[����ۺ�1�ۺ]1�ۺ�0�ۺ�.�ۺ�,�ۺ-�X�%"�j�(�IDqN��ZG��Z�2�ۺ]2�ۺ]2�ۺ]0����o�ct��n(F�o�at��n�E�o�Yt���D�u&"�:����������ੵ�2��Z!�,j�d0d���W����
����b�2r�0~k�׋+���ŕZW�֕�X�JD�f'"���ֺ����!O-�%C�Z�K�>�l��S�v�x<�lwyjٮ�Բ�0�e�]�S�v����}����D�ZO"�5'�9�Sk=�Skuː��풡O-�%C�Z���e�/~y����	��e�a�2�
��e�f��X��_��KD�Dd�`8���O���2L�Z$㗱��`��˯^���_N����~�df�6���0"��km�(�IDqN��Z{��Za&O-�a��r �O-�a������Sˁc�<��������&O-1�����M�Z�k�D�Z-�KD<���j�Sk�e�<�H��Sˁd�>��=�Z��O-�a��r�&O-�a��r��B�Z��^�S�A�ZG"b�#񚙈x��Z��Z�?`��:���+������O��u�㱲�?d��:��!+����������^��:+�X�JD�u%"^�Q�8��<�V��:����u�C���C����C��;��q��:n"X��B�Y�`�D��$"�z�9�������ੵ�2��f�B2�
�a��˼�
�"X�1D�c�`���:0�!�un�֛�X�MDqM"�s��z��)�^X�������u!C�B0�C�.�b<��1�օb��"Xv1D�.:"X��e��>���״D�sZ��Z[��ZaC�B2�
օd���w<��/�C�.c�`](���0�!�uaC��,���A�Z{"b�=�KD<���j�Sk������O�P��������p�!�u�q"Xg���,�����#�X�HD�u$"^3Q�8��<�VX�������u!C�B0�C�.�b<��1�օb��"Xv1D�.�b�`�D�u%"ֺ�Y�������ੵ�2�օd��*X�1�u��!X�1D�.c�`]�����!�uaC�� b�;�֝��D�N��O��1��B2~Y�
�`�Z!˯N�Vwyƾ��}�0���]�3�u��g�{����D�Zo"�57�8��<�V�yƾ.��}]2����������^�����l0�&��l3[�� ����0񚖈xN�\+���ɵ�� T}�F6��jE8#d�.���o�Vw�#��b���H�nGju�8Rk"��k퉈��D�N��O��-�J�.WkuɸZ��ߕ�ܘ�Z�1���q�V7�+��]\����J�D�u$"�:��������ੵ�;?����i���}~Z+���W�˼Ԋp~R+c~R+c~R+�b~R+�b~R�"�:k��(�IDqN��ZW��Za�I���ٴVH�lZ+c�]Y�'�R+c6��1��
ØMj�]�&��,f�Zw�֝�X�ND�f'"���ֺ���
˘]j�d̮�B2f�Z!���Bޘ�Z��K�P�٥V��R+�bv�f1��z����D�ZO"�57�8��<�VX�4��1Mk�dL�Z!���B���Z�ӤV(Ƭ+S�c6�5f�Ygv��e��>���&�8'pJ���Rk�e̺�nß<ee!lv�=���8s�]Y�s���9�V�8��
��Cj�Y�!�� b�=�֞�xMOD<�N��O��1��
ɘSk�d̩�B0�ߕ��2/��1�Z�sJ�0�9�V�ŜR+�bN�Ղ��Z"b����D�N�uO��1��
ɘKk�d̥�B0�ߕ�|2/��c,��cI�nKju�XR��ŒZg�֙�X�LD�f&"�3��:���ꖱ�V�����d��j.����/+��c��j��������v!+��Y��j+�X�JD�u%"^��فSk��Skuː��\2te5�]Y�㱲���ce5wYY�CVVsÐ���.de57YY�k=����D�kN"�s��z����!+��d��j.����ce5����j����+����!+��]��jn����_��KD�Dd�`8���O���2����X��:$c�����XY~�+��i����#����?a���@_��:ȗ��ނ���D�Z["�kQ�8��<�VXƒ��!KWV�d,]Y��+��/�ceu8ƒ�աKVV�a,YYv�deu�Œ��-�X�%"�j���X"�98�V�Z+,c��ꐌ�+�C2����X����뱲:c���P�%+��0����X��:�b���#�X�HD�u$"^3ϙ�Sk��Sk�e,YY��teuH�ҕ�a뱲:��+����deu|������������,����%+�� b�+�֕�x�JDqN��ZW��ZaKVV�d,]Y��teu�z���X����KVV�b,YY��deu�Œ��aKVV�A�ZO"b�'񚓈x�	�Z�	�Z+,c��ꐌ�+�C2����X����뱲:c���?�����deu�Œ��aKVV�A�Zo"b�7�5�(�	�R�}�Sj5Xƒ�e���+� KW�A0�ce���ce�;��,sŐ�en����BV��Y�ʲD�Y"�&"^��i�Skm�Skuː�e.���%CW��`<V��_<V��c��2WYY�!+��.de����,�A�Z{"b�=�KD<���j�Skuː�e.���%CW��`<V��_<V��c��2WYY�!+��.de����,A�ZG"b�#񚑈�����ੵ�e��2�]Y撡+�\0+��/+��1de�+��,sÐ�en����BV�� b�+�֕�x�JD<gN�uO�_�-+��غ��o]Y����ce���XY�p��2(Ɩ�e0�-+�`[V��,��,�A�Zw"b�;�5�(�	�Z�	�T�������b      �      x�ŝM��y�ף_ћ �q���]R�B���DK\dC3�80�Hbyx�m� �,�����������3�d����u�;=q��|�uu�������{��<����n��w�t4=xq����/o�<}���|���ӷ�_����O��÷?l^��a�����o��|���ݛ?�Q��~D�A(<<����4���*NN�9{���~�`u�0J��@k���I�?���������y���&��"|��jzY���6�l�}����?]���A�~�����o��Ϧ�O�m��{3�}��y��l��{��Ϳ=߼z
��/L�t���  �/���a�}�{ܙ�xg"���N����&wnO�����n?�<~z�9�j��߽��W��^h���������_��O�߼{��N�$8�;ŗ_޺���}.���+y��m���UGO�Zk2�m�\E�������c`H��M/T�<@|��Zd��O�)S��p�i8%됑O�/\�$��ak����wo�x�:��0��;E&�.Ȩ���6����6_.����'�{�l��TAO�W���"��Tq��$��@��R�>o�$7��B�/I#��L/TT�Kl�S�Ik/) ��M�zI�~����%�*���9W�K�P�4i�%��������Q\;wI�a*�u:
oο�;�u��`S��5�H�����̓[�j�F���_o.������bWp��`���~�P�6�"�}�
n8r̜=�R-7�mC���9��� ]5՝�w�*C���K��އ��O����M���op!�DE0�A���j�9D4xxD�_�F���S(�������5���a�J'�����.v2����_��V�ont
M���ޏo;Թ��Y�h�`��W���œW7��gW���P���FB�4^O�#��P&r�Ə�P�t"�O<Q.���@40�|"��D�*$��C��'V2�D4ʂ�4T�F4j�Қ��<�Q�ւ�G�R����S�A/P�RLBNŐ�Y%@q	\!��������O�<*P������,�F;P(K��$�6 N�kд��*�C�-��3�%�*��
?K(M�5�gA̢�N�2�Y�B�I����$��k��1�$��j��ɗ��$�h�4�T,I!�:��"��D��K�Ȣ��8�%A��%R�Kg@�L�u%���G��c�o~.�"��t�K�!��Nu��!�����Rl|� =�W0az�ZJK�`x������
v��H�7~'X5Un�n�&M������#|6
����-�(l����Y�Q�d��`]��Y����|t��ئ���i�ӂ���7���B7���;���T"-������(�>he_�F�ӥ3H�6�w����7�v��Dl}wc[7Vc"%Qߘ̍�q"���XǍH���%��\pi4��8vr��Q�r,�O�(��X�g��б���Ct:�u����u,삷Gw���[���7?1���������y�����ݓ�����7w��񗗿���]٥��+\�Y����_a�$������� ��KǩB�
;4D�����
]DP�n+T���*FT�x��BЉO+�Q���Y&�
AH� ��~H��ȓ�}Hc_��NH~��?C�ڈq(�X8+���s�u�Ya���^��D;��4�#���b`�����*1�I��	G[���| Y y��̥�C�ǔ1��(�@�c�8dt���Yb`�8	�	+D�\�$фU"�r�v�<��@OX%�q@a��C�"��:���hR6�F��0��#c#<8V�4�0m�!d�%X�u#�A^�E���v�ׅ ��X�������}��������� ��l�X�r�x���` @��X��H�3V{�bve��"+�,�X�V�X�1���U�4���fLTS=>X�1�[�^�zq����V_[�_03c2�Ne����:�rS2&���.�`k���$LlИB��w�#4&�jw14�CVY7���VY/�`fƚ�ᒄ6h����#L�X�BMX���׃8�0]c�k`a��z6�fvp�supU�B�5}����o?}x����?�e$X��5q��Fqlh��0���;�0�0�cc&�K�ұ��.aC��M�1��?���ql�4���j��4�]��~��4Ђ�����4��x���-_�F]���f�y`�`���T6E�Rm����9;�(����9��uE��Ǫ���Mdy���0u�.�`�ǖ��
���
w��?v*��b�~�(�&}�tl#@,�ؙ$4���]�.�`��.�� j��c��]�6X�s/p�4��J�=0s0&d?�WI�2����ߞ?{���<��V��`!��멅,p�+do�=�7���ٳ�+D�nzm;Q��!{?����TR3��穉 d0�0D!�D����wCAQ�����[.cA����
#�!�Â%`U��ՖF������?=z������쥦�O���{���B�CX��@�ސ�D��&d�fׄ���!��?�,���T��}0
�2�z���̦�-���!�-��s*`7��JaV����T"=�
X2�JCaX2�*C�e�}a��p�=���P��v�8*_W���Jq4�G����_������|!l����)�H�f�S]l�"���p�q��u�l�M��K��v�8څ�"w"l;Ru9���JԐ�
c�P(J%>�"�4<���(�A�4�����I#�*��8�4���� I#ƪ��H#�*��UaH#��"�<z_�8�4ڀ���4��T�"�!�Z �l�C�A�ta��"wbȠL�&�]2(r��0�J�|�#�!�F���GCE@ita� �:� �b��؋c� �:N��,b��1>0�,b��_�,ү�ѝG�����'߽��Ы�߿{���/���o�mPڕl�xXg�6�>����:4�Y�;:Ds�<U Z�v1Ct��$Z'�J1*Πh�,��P$[ŢUFebtdT��:qT�1q��i���`�J��h�,*���ȣu&( @%��Y�L�y�;�hS��֝��Cu������?=���v�ʟ���,������V'F�p�	k"�kēG�X[:�<�<�ƺ�j�#ʣb�O�{!�Q(6$���ˉ��<��i��Q�Q.��^XyԂKkAW���R�
`�{A
Y!wŐZ%���Blt��u��2lt�e#!�4���H[������.^�N$�����\�~l1���D�[�Z�&���bv�pܳ���/v�n��0�5�Ӛ���|Z��b��OK�*������!Ő[�q	\�x@7}t�ɣw>7���Z<�)�)�Ȁ��D���4�x@]7�>\�V	>qX�	!��ݨ��8�(�Qj*+�)P)�"#H�v`�C$�(V��+�P�PW�(�X� 8.�+�+t ����C��B�&V<����Cl��x�����-%�����	L���㜙:��T��<f��A������1q�F\a���w�,�JZ�e��}#3W�]d��#3� �Smo���f�j{Ȍ��0�T��@�B'�4�-Ր��^�av�T�>d��R��
�a��T�?�P�-�R�epx�a˩T�,�{Xw*e��?}�����[����K��(���e�T(�+��(׀�B��,�*���P�;B�*,�4L.`�GZ(R�|*��|��Ri��1�T�'�E�T�!�d�o�e�T(#�4dJ M�H�
]ď��DA�:H��J��C�('���8⦇�D7Y �����k��&��C*MYឦ�Ri�/,��5*m>(�±sT�fN ���8*���^c�cƨ�ߗj�o���BB��ɡҼ/���X��&oj��ƢP�I��Be&��n,���N���TƔ^��r�Ʌ�@���2�.�MȞ�����:V����������ͷ�6/߾~5�P��w���jd���a� �  �W[ �vس����GA·[��(ݾ�
�]�]ب��jb����=�IۯVD��=Ņ�_�*�N��<2��Z����1����|B�Պ��z��g;��"#V� �n(�������Ƴ�����:�l�+,���L���>�ds�މ4J0�SΔ]$��>�l�"����s��ua[>�|�8�h��O��\�N�`��'�]��XO�!Q�&xʫ�G 5�)Oix$q�ݝ�it!�;���bk;��؋��;����[;�1>0���S>��UaK=巏C�����o7'g�7s[m�2C�D��驠bYa{�M]�A���хӈhtC�_�. ����`c����h��bQQ��6(��c�n���(�����g4A�C�����;'qC�h��sva�F�;���(���Rxʝ�47��*�rC���Ý�=9{�ds�sa�>�vs>�X}��3>����
��B6x��| a
a�GÐ�ԝ ���Q�b�u4PFWG��Ѡ3ND�4���$����!W]\�<��\�	�8rU N'��hH�@P���0�3
:Ri��
SXґ�A������އ��H�� ���h��PqU\�w@��)*�&h4D٨�l���Q0*.��o�F]����D����	Ţ�b��hTGKP����>(ʕC���#ʕ� ���#�U�8���#J�@SX��D����(��Ua
�>"t�GϾy����wr&N)����;��#��F�Q���b��B���U�<�L�4�׹P�	�֩p��$mRYa<a
HڦFt�
��˄HNX��TB��$�� A4a9H:S �dª�L�"`²�L9���d��_��\$�/�uwo��u��
f��/��>�,2@#S2(/�k��Fuw��s@7q��au�I���ORy��:'��	�U-ܦ�N�a8��ޡ�N�`�H����u��"��F�V)�����U�#��c��u� bl�W܈�N!�q���A]g�[7�b6�"��J�;Oם����ڝ�e������ �n(t�:��Td �����Z��#9�?�$6�e$g��ڃ��H��(�s��$60;$�#�^l`^H.ġ�v���X�cC�q����e!�8Ĳ��Đ<ͼ�-���/���������v'd�����J�� �w��J�����2�B�a��Z���!y�D��R���RPS�v^`N8�k�'��� =u褅����� �M �(�ͬP�R��+�
� �(���P�R�ױIQ�(�
��1���n��.�?��X��x�0$��Co�+,�u� �9 ��Z\.��ĶpA`(��]|a;��0$��f346��!V��f}�{��==I8�Ё������==$���V{zH�,���`�^�&]�n)���~zp�M�ne`�>����?����xpks����E	�}z�.�]���8�"������$6ׂl��R3ǑD&~ZQ�"���>�tN�1��ier����,O+���ExZ�lx�p�5�V�"hG�xZe�/�����^=X�i�$�?X�i���!��L̯CX�i�}t�y�N�O3����O�o��{�g-Pd�e0T[���U7:��@��z�޸�,����Ը�MB!���[׊�:�c���k%�z�%�n[\k���*6)��Z�ה���ŕX�i�D=wc�ZID['�^�q����`�ބ����n�emFPu)�27�=��C}itx!ߚ���������g��H7o\�HU�CNr/���7C�M� �6H�Q36Mw�L|P��>W|O��<��i����v���ub��u���e"�1vF��,jøٶ{a&F��g����L�Q�}2T������f&�� ;W��� �\��Q3�B�r���f,�坶����m&�A�m9���L����|�����'Ϟm�����?u��R`O[Wgԁ�����F"p�~O�0�t`<a�-לHP�i7�^�6Da򧝚�n��~�Ѭ��0��N�Z��
�=��|�P�U�v�5�+������~\a��|)H�?��z�YX�iW��@�A��J@[Xj?���Ѥnܽ�K!KB�i٤"�j��&"��fP{Sp90��+��.�FQXj�W�Oj-h P�P����sѦI�0�C#�#lu(ǿE�P�{7��A�aBaL�C)��!�uX�A�CX!�P
�,v�D��ۻ�믄�C�%��Mځ@X)��E	�&�����a�C�)jVK��a����W�	;���f]�m�a���EE�C�j�E�f�f��]94��!�5��߀��Ps9�����Ps9�R������`D3,��0��~��pckF�~ͨ4��6����1������{m�`�h�//��l����!	&�f�el��f�X���5�Z2����(��S�A�(y���A����0[A��P�� �@��HJ A���k�RS����14*����T|t7������Ì-��f���%��^�zА*X�t?&��(�q``/hHϟE�2�k�L��v΋�p�@C� )�L���I;%��3J!��~�JQoa�~F��ݏ,��.[� ����vH��3z!���	f�F�,�,���[�͍{�},E�v3�E����>U��F�X���6�h.C��3���R�f`�g�j2��t��귓�<cL��/ 	l�������	j?��3&S)*`�gL�� `gL9v�a�z�&�� {ƾ���aju�[KYݎn�2�X��+R���k>�3�f S�����/][�cLg��Wj)wL��:2��ɛ����^蘳7L��U�-�q��8�k�M��_�X�7��Tqc�f�)�>+����a�{5�\]v[�8�F(�c,�;���
���E�q<U)kLˌ��\�ؚ��G�)l,͌��l�lʌ�S����h�x3U��mL���S������x���;/�@��7�]�G�o�����'U�t�0�_��z�S���0%���	T���K/.��}^͓C.��s��d0Y�\���"����V<�B���@*���9@��?*��/]�qJr�}���:�,�:5��PFxY�+gJ�V9d���ٱ�����I��gtT� l<	��C9*T5�D��)�H���R��\t$��Qq D�C]v[��ݣV�O��i���nG�bew�S���i��[��46Nv����djC'�{��ťk�i̚��a�J-5���=<�BG��1K���^(��4�Gv�H��7�@Mc�d�I�Zj+$�&a�i����DM���C��J��:5,���E�05���U�.�-H��Q��~vl��T���)�(w4*vKv�Lѝ�HYc�dw���>p]c�dw��� S��*��CGw���1J����ZJ�#�{��NI��1%����ۋs!�{H��7�@uc3d)
dKyc*d)
`}cd)��T�c"d)�_��z���t��~��6�-H��L���a��j�j*Iw�-vCV�HZ�ɱ��L�\��Ym�g��r���v�5l+s�����XK�c du��d���9o�sx��7�@�c�cM͖Fǐǚ8�����5q�:ck��˵R�2�`�ձ���U���y4���O������������NgUM���o�T�I���_TV�"�#1�ˊ}IYe��Z��_���J�����/'kt0�V��L���RAN��WY�R�Jq�v_7��d�bg���;�ed�*�f'A�~Y��`�I�澄��D��$V�_@V)#Yn(�*����I��U��������߮x�ߦ��ɝ�'v�Ž��S��^����Wo�������??�<;}���G�y�����>���S/�      �   3   x�342�42�427��41����������!�i������i����� *
-      �   |  x����r�6���S��i����@n�J�EI��vzQZ6�T1=�5I{��r�����ti���42�v!����?�P�����qD̲i�s2=#�Q��huz5F�rI�%�b�^1�J�k���{��DO��i���j��V��!W�j��	*K��2&�:�'80F ��dǊ�/斣�p>�c�o>#yY�]X#%3���y>C��
E7��y��7�X ��ZE�ȃK\���4��e'M*8:�\�$z�<����������
��z�)4z=^��V�z���a�C��0ɸF��/�g|�US~e`t��j�)�VN�Z1ݗx�kX{��q�/0���o�E�<�8�uo�P<ϖ�k�S(>�-�#�XR���5�Q�R�h�/U����`a8���V��xE�^V_�8��R�5Πh�{�f��|�)�&�~��;�a��R�u���&�0�!���*k�j2E��oY���&�q�ɖ� @�A3t���o��\���X)%G���C.}��[�e8�v����6�@p
d�@}���1��v����-��"���RJ	������Z�]ƨCWh����$�&���]�W��	�+J�Ɠ)�%h��y���?W����h��ס����&�c������׀:�}�J��#$f�m��.���I�������BRc��MH�������#�B�uUy;5�2_X+�kÓg%��m�;���G�GVI�'�E'S�@��~���b6ƣ���ن��x8�?��t��3�t|ɚKm[Yf�qN�H�]�'3�����J7��D�������58�����m��<��M�ya�\J�������>��*�~�n�)��	�J�ں���xRڕSrW5p|��k���Mv�����h�/�����U�9��t-�:�Aa��v��f�����_$��t����5�~���y`�Y?��r�L�g$#�v�B�6�*����<��I� �R�q���A Uj���B����$��h�np�I|����<��R*uQ�����p�~l%x�[V����ӌ٠��j�B0$�9	H��d�8�0���#�`�<��Ń3�j
��վԆ'��U�.z�w83�L?&�m�ji�<�w����Mۏj9�����k�ژ�gm-�O'�^���>�      �   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      �   d  x�}�Kr�@���S̆*S�`�v�bd�e��Y� �
a��l9G`�X�.����V�GѤRY8_����iə���I·�ϧ����aҨ`={:��
��V����Ǉ�+�A��)�є�;���'����]���/�D�j��}T]��<&hځ6{z�i"��ځ��mG�eh4 u�'���t�Y�p<˦29I��j�e�	���_e;	>�b�H7#0��`�	����u�d�b�X*1�v0�$UM}5:K4AF��o_�5�v�P�j���B�ټ~�mJ>7g�r����o�U�jy�n�JF�&&�[�β�O����J,��1O"���H"���1O"�gy�l�UQT��F���(�Nb�2��]�h�?��.�`yU���K�E=,zɊv��7-n�4�zIF��6�b��ru�1���P���j���q"�a���O\&�%�k�y{ O��!?�N���;�U���7|��ap<�yH����M��1�c���O��}dӋ�y��J����1�6@"�a�Y�ˋ%j$����[���c�>%P��t�>�����a��`�����/�%�/2���� �Pn�iZ�tv�0[l���U���%E�?E�R�gi�n7�U��Ͷ~ad�p 	�zC��D���Y�QQ�!9�?�l��}JD�] \��;���0dGȎ���R���������xnb������!>B|�7Gw ��FH��!�T*�	U6tG���U�s��F����|+�������c�Y�-�d��n��}�`#X(��{�Ɉ��w�T��?��=}�+�=%�)��ᾔ�� ����h���v9t���^�����      �     x���Kn1ףS��O҇�	|�s�� �,���6
��G�J�L��K����~L,�T�L��V��z��:���~�}����߿VjcasIB�5�v�,���S]�+&�����W�����C܁uA��� 8:150�A���QA���N���	6z��]��`��h��x��T�Z��{C��J(�=�-D������\��b�j��܁?����t<���jt�G1�3����b����y+�(_�(����Am�v,P�b<�4��d��"�b[�@K�b�-��Ȣ-���tڶ,P��u�m��x��}G�mY�����n�e�,�A�m�Y6��i۲D�M���w%�l�%�i۲D������<l�ET�>7t�����-B˲����!����9`���j��:����V���%s��:lc�}�%T�x�k�Ǝ��k��5��~��]�u����6X�e�,M��m�
Y�I�m�
Y�j�b۲�,K���<䐫a��=�	��`ޯ����      �   �   x�=N9�0�ǯ�$�c�肄@B2��"J��JJ
>@^�����4�cvgO����B�T<�_���~�[�~�� �i ?���F�:��yf����y�J�&��J�j8�q��8�� �T�f�c�l]6��:�r?�����"j(�R��-�      �      x������ � �      �   M   x�355�p�sWp5U���4���p�42 (i&ut��L��F&`!CC+CC+Ss=K3c#�=... "��      �      x�3���p�2�u����� '/�      �   "  x���;n1��ZZE6`����6U�)��@���p�7g�C��>>r Uzt�PH:??>��������?�[ooԿ�x����ٵ�����X��NO��`M�:}=[��V�>k�Z���x�5[Q�&�FX{US�ybU�=���ἵ�]x�u��yg�\5��V͛�e��n�U�&q[#���U���UCk\���TZ�Fk\���~Y�k�)a����ꐰF�P�ZuH�5��qE��}.�#5�6L��6k�&Ն���a�HM�#_5R�j�$D�ȑ�T;�c��8R�jǔ8׳��T;��l�hM��A��hM�������Iu9X\Z�Ie���2�Z���8$�j���5���ִ��b�hM+ka�������l"�FkZYX֫$КV����1����X��N��[k�jm\�s�����Q��9�Dk��v�ו�HͶ�Fܻњ6R�-���|&R�-�QӘ�z6R�-���I-��m�u|�R�-�Q3����Q�m��@~�J�J���U�4���9��yM�Bf��3����:o������]v?      �   �   x�5�ۭ�0�+�2�����+9�Q�d���BW����A���Q�����*�R(��K^2�@d�]V�-R�U]�7���cYY��zFU�G�\��S�.jK���µ�z=f��{�U�GypW��䪾q���o�aѪ�Jp��b��2a1�s�?���~��Ҽݥ�~���,>#      �   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      �      x������ � �      �   �  x����j1��:�����ko�M�d]H�!)�`R��ƅ��>AO=��s�!�7�HRRV9ߌ��������K���7?���|�W���ֳ]��PQ����D�F�8D�:T�+�Jr�
Ko��ϫ��^�	�g���)���$�t� �L����/{�PD}�AY�_�(��l���.Th�J�f��!)V���-�s�4�
*r�7�9�_\� �՚Bn���q=�������bZ`3QQԹ]A�?]-z	z��A�}�y��n/�~�]��rO���_���|��R���X(�!O��h������E|���J��x6�����F�ֽ�"!�3t|�!/O�wv C*%�
�2.���v��׿�!T����tObB�=%+0ʆh�c����Ǡ"�.v�r|��Ғя3O'�'��A��
��u�y�_6��|�\.6��߻E����WH]�ԢV��)&3��ST�Q`��3�G�l�Y�"R�OMȋ�Z��'�"9��v�tW�@h�b"$K��%�#����I2Eɧ����ѹn�)�xhK�4���nb�[lW��w���`�pg8��ֲ`�˩
N��/x�Mbc^�_��Ӹ�.����p��'������������Z&�m���p��\�G<�$}P�����      �      x�3�42�4�2�44RƜ���\1z\\\ *�%      �   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      �   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����     