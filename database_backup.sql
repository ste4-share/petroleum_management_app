PGDMP  *    $            	    |            postgres    14.13    16.4 8    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    259   �2       �          0    16797    category 
   TABLE DATA           c   COPY public.category (id, header_lv1, header_lv2, header_lv3, tructhuoc_lp_id, status) FROM stdin;
    public          postgres    false    253   �2       �          0    16395    nhiemvu 
   TABLE DATA           i   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, khoi) FROM stdin;
    public          postgres    false    210   �3       �          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   �6       �          0    16445    nguon_nx 
   TABLE DATA           E   COPY public.nguon_nx (id, ten, createtime, tructhuoc_id) FROM stdin;
    public          postgres    false    225   �7       �          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   �9       �          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   �9       �          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, inv_report_id) FROM stdin;
    public          postgres    false    257   nH       �          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   _h       �          0    16890    petroleum_type 
   TABLE DATA           @   COPY public.petroleum_type (id, name, type, r_type) FROM stdin;
    public          postgres    false    261   �h       �          0    16430    loaixd2 
   TABLE DATA           |   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2, petroleum_type_id) FROM stdin;
    public          postgres    false    220   ci       �          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   �m       �          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   zn       �          0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   Wr       �          0    16487    ledger_details 
   TABLE DATA           �  COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, nguonnx_tructhuoc, phuongtien_id, nguonnx_nvu_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id) FROM stdin;
    public          postgres    false    235   �t       �          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   ev       �          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   �v       �          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   �w       �          0    16437    mucgia 
   TABLE DATA           n   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id) FROM stdin;
    public          postgres    false    222   �w       �          0    16455    nguonnx_tructhuoc 
   TABLE DATA           W   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    226   Lz       �          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   {       �          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   �{       �          0    16471 
   phuongtien 
   TABLE DATA           }   COPY public.phuongtien (id, name, type, han_muc, dm_tk, dm_md, dm_xm, quantity, status, "timestamp", nguonnx_id) FROM stdin;
    public          postgres    false    230   �{       �          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   �~       �          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   �~       �          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   Q�       �           0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 131, true);
          public          postgres    false    250            �           0    0    assignment_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.assignment_type_id_seq', 2, true);
          public          postgres    false    258            �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 16, true);
          public          postgres    false    252            �           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211            �           0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 16, true);
          public          postgres    false    213            �           0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215            �           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 30194, true);
          public          postgres    false    256            �           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 31012, true);
          public          postgres    false    248                        0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 566, true);
          public          postgres    false    217                       0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219                       0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246                       0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221                       0    0    mucgia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mucgia_id_seq', 716, true);
          public          postgres    false    223                       0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 82, true);
          public          postgres    false    224                       0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254                       0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227                       0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            	           0    0    petroleum_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.petroleum_type_id_seq', 13, true);
          public          postgres    false    260            
           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232                       0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234                       0    0    so_cai_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.so_cai_id_seq', 641, true);
          public          postgres    false    236                       0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    237                       0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 812, true);
          public          postgres    false    239                       0    0    tonkho_tong_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 1068, true);
          public          postgres    false    241                       0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    243                       0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 26, true);
          public          postgres    false    244            �      x�3�vv�2��s������� '��      �     x���;j�@���)��W/�m��`"b�n�^c,� ArR����*U:m�\do�}ɒ!j�Ƿ���	�>�$L�_ܱ��|X%!�V��(-d�4�B�)���E41Ō����Q��L{�N�U���p'�7�����e���SEz��~��@U}��<�=3��j�wי���"�T��1̵�y�()_�&@)��oN���Z0Q�n�im1��`�.�	.K]d-�xJ�k�%k��v�ٗqög��sY%�qk}�BH8��>���r�$��      �   �  x��UMo�@=��A
Q�|5�� �2�D�F���d[m6UkG�=TBBJ8T��
*"���}�`������-���d�%kG���ۙ7:8y��<��`�!�sv��!�. ��y@�f4`�t�{���x6^G�Z�����-� +��ýxDP�f1��+%��L�8������w�uEd�<{��<��X�"�k�� �)��r�+�PP�Q@IG�!;w�1�~��;R��z�+�jT��W�;X��&�.c!�{���4a���M�7$D
�}�|�Bex�i�#J<V���v���I��"�z�F��]qJʈg�|LY5�I���50�2�3��W<;e�*��+v$�x�n���_������lP�� ��W�7���J����\�"h�a�Y�Ov��/E�6t���pW��=�ԓ�t_�aeV�b��s�W�t���cZ�뮅�&�^i���2G}]t����+���� �� �,�a@��h�d��u��rO��=�^�P��,�A���IL֑~�#(��g'2!ԗ-4y���՛�*</��C|�-��Ђ��O�ٞ�=�Z"��W����#VH�Dh���NI;����F��55���<{3|l�}�	�"Gk���q)�Nd�&�Mz���Yf0��oh��[�Ԭ��Q/sx�b;d�'��� G^}$-$B?̓�.V�#������-���O	3ۣ��.���������ge�Ό�ԉ���V�4�'��
      �   �   x�e��N�@�뙧�0��8�k�+H4h��X� e�1�	,={�\ccb���X^d�䖽B����2����$mI�+z0�}�!nL�St۴�+�gB�JN!8�]6��P8�%//S�N[mZ'n����2�lG����8��o���4}W�r��^��]Ku�������g���CH�����"��_��4nM���#RH��a���]QV�s"8��W��M��U�NT���23<Q�ߔ���C�=��mp      �   �  x�m��J�@��ӧ��*��4�Ղ����R<x	�6�6QI��<x,���<%�c���T/��ߟ���?I�RPB�m�m+gAK5��I�K|	B�鱸���@o�t1�.T._pUZUqU���{c��l��pr�����H�%.�7+�]86�~���S��&f��T����^��؃Æ�hz�.�?bǃi:+���Ru��}��5�}�	0�7Њ;�,Ak~�y�U��v�z�7ɿBǴ�7(�r'X��:�	����@8
'mů�q!��qY�op��co�|��jE��3�xt\���X��Dϊ>�p��Ԕ���~�ؔv�3)H��fT�`@IJ�~J�\.\��?��~�cb���#�Y6Ʀ|�?���2��H���k��pe���R~��)(R�����g{�V��V�      �      x������ � �      �   �  x�m�Q�l7�C���<TmK�=���8�!��$��R���$��Z����<����O�Ͽ������������|4�'>���/������lq�g�Yr�9+�g��������|��
囓�+�o�� ���|�]3���8dD�_?js���p9����������|��#����n��#�w��x����\���jȈ֣��Qkq��gX��_��\�3ƹg�s��qƠa�1h�M�By��Q��eqFq�8ckȈ�h��Q�s~6?� ��q�|8c��8c��1���A�8s�h�A�u��ģ8@aq�Ù⬥!#������s}�8#@mθ�g]���p�8�h�4�sn���Byǹţ8��g�Źg�s_��h8��r��>��,θ�	��I��)���<��q�A�m��:W(�8�x�ж8op�8ojȈni��Q�s}�p&�������7Kξ�m��g������fq8h��P^q��x�1��s����¯8|8|4�?
+������ X�o����ߌq��f���7c�_�0�g�0�g�p�g�p�G(�8�(�6��8[��laH��e!�پ�g�BZ��iq�-��٦�g�BZ�K4�sƹ��4ZG(�8C<���������o�ja�s�,�x;W�����}���պ`o�j[��s�)�۹���\)ƙ��q��69h�N
�g�Gq�1�۹Z��\-�v���o�j_��s�/�۹Z��l[�M���6;K4���A�m���:[(�8�xg���-��v�0���ٲ���/<�v�;��������N���o'L���q�A�8Ϡ�6g�h���<�Q�0��Z�����0pȈ �_�����3�[��1ξ,\��/�⼢��3>����Y��P(�8�#�mv�?�D��@�e��	$���v��;�Dۂ�@�M�N Ѧ`'����q~��m3h��P�q>�Q�mv�?�D��@�e��	$�[޲H��^v	<>�N �����@�,;�X��@b��q�A�8נ�6k�p�%�w�K<�ư���'��0,?�da�8�|a�	$��N ]Xv	�²H���@���!���qƠ�69h�N
�g�Gq���@°���'��,�'��/,;�|a�	$��N [Xv	�²H���@�D�8k�0�4ܦ���;���1,;��a�	$ �O YX?N _Xv	�²H@��@���}Y�H�e�N �E�8Ϡa�g�p�3h���;�#���kE��oE��oE���(��`�(��`�(��`�(��`�(��`�(��`�(�h�4��m3h��P^q�G<�3��`��}\pQʾ.�(e�~�R�/�(e���R�.�(eۂ�R�)�(e���R~Es94�����;ίx'�!L��.J	a����Q��˹>�pF �B�(%l!L��I�'L!L���|�|�Y���,���\�Q�xM�D)�$��R�?�pQJ�B���/��R��D)�7L�;��Rb&J	S��0�4�3��A�u��3ģ8aa���pQJC�(%d!~�R��D)�a��Ѕ0QJ�B�(%L!L��&J��a�5hgnS���P�q�x'�!L��.J	a��,�QJ�B�(%|!L��&J	[��)��R��D)�h�4�sm3h��P�q�(NC�(%�!\��.J	Y�����0QJ�B�(%t!L��&J	S��)��R^�0�;h�4���s���Gq��D)!ᢔ�pQ*|u���/��R��D��a�T��0Q*�B�(L!L��#��٠�p8h��w�p��P^q�W<���ea���w�������ǅ���j_��q�/���Z�|\mv>�6;W������|�|�y���;�G<�����������ja��q�,�8W�����}���պ`��j[��q�)�����|\K4�3�A�mb�p��;���lc��q�0���Z�|\-?��վ`��j_��q�.�����|\m
v>�6;W��q�a�9h�͠�:By�Y�Q�m֊���[Q�0x+�������U����j]�VTm֊�M�ZQ�)X+�-ƹ�܃���A�u�P�qn�(NCZ+*Cz+*Cz+*�B�hE_HkE_HkE]HkE[HkESHkESHkEuD�8Ϡa�g�p�;h���;�+�	cHkEaHoEaHoEY����i���i���i�h�;�Zц)���SHkE�#��٠�p8h��F������qnCZ+����h�W�h�W��m��֊66LkE������Zц)���SHkE�+����n�����#�	cHkEފ6�!�m�B�hE��֊6|!�m�BZ+ڰ��V�a
i�h��Z�^�a�k�0�5h�͠�:By��Q�0��V�!�hC�[ц,�V��i�h��Zц.�����.�Z�ƛ�֊6��V�S4�3��A�mr�p��;���1���aHoEފ6d!��_HkE��֊6t!�m�BZ+�0��V�a
i�h�hg�Y����A�u�P�qn�(NCZ+���V�!�hC�G+��֊v����ݺ`�h�-X+�m
֊v����}D�8Ϡa�g�p�3h��P�q�(�6kE���[�na�V�[~��ݾ`�h�/X+ڭ֊vۂ��ݦ`�h�)X+�W4q�Ϡ�p8h��&8�+���<m֊N�������,�hE�}�Z�i_�VtZ���kE�M�Z�iS�Vt��a��A�8��F��#�w��xg�������0x+:-?Z�i_�Vt����kE�m�Z�iS�Vt���%ƹ�\��۬A�u�P�q.�(NCY+:��Vt ��@�G+:���Vt�e��@�Zс-���S(kE�P֊N��qƠa�1h�M��ByǙ�Q�0��Vt��y+:�]������<*e������Vt𯷬�X֊e����Z�)�0�4����A�u��ģ8ae��@�[с0���Y�����Zс/���](kE�P֊L���BY+:[4���y�9������<�Q�0��Vt ��@�[с,ԏVt�e����Zс.���[(kE�P֊L���+�y㼃F��#�W��#�yae��B�[х0���Y�����Zх/���](kE�P֊.L��]dS֊�W4��A��p�p���:_�����Gq��Zх0���a(oE[?Zх/���_(kE�P֊.l��]�BY+�0��Vt�0�g�0�g�p�5h���;�%�	c(kE�Pފ.���]�B�hE�}�Z�m_�Vt[�ݶkE�M�Z�mS�VtC4�3�A�mb�h����(�6kE���[�ma�Vt[~��۾`��/X+��֊nۂ��ۦ`��)X+�)�Y��q֠�65h�N	�g�Gq�1X+�-ފn���۲���kE�}�Z�m]�Vt���6kE�M�Z�ݢa�{�0�=h�͠�:By�yģ8���oE���[�mY�ъn����۾`��.X+�m֊n����ۦ`��^�0�;h�4���s���Gq����a�ފ.�a[+��W��mE�9�g�g���,8KΒ��Yqv8��l�|84��;h��W(3N���7���߿�����y      �      x��]Ϗ�y=����`��S?���H�
iS\�-��lą)�@r˷�_c9� D0�C��#��O2�f�����vG��]�z�k��{�ӏ�&���<���̯�xp͑:z����7�_�::y�����n��g��<�����O�_��w?�^��a��ɳ�w~�z~���.���1|b�e5N���������`��"��N�9��g>cXC�- 4��2��OV�����|�@�@2�{�!�k�M�<`9��G�ǧ�o߽�~���?k��z����� ��b���>9_={�v���x�����G���ۋ��g |�@�������Z�_���k����h��He�>E��� \J�Fo�Sz�ުuf`r:7
�v ߧq��3'�oc >\s��6`�5&�k� =\a��6�Eƣ� ��N����+�7�����9A�>;����ݿrD,^mFK:�A�X����;����r��9̅�!H�0����e��l���L�����2hp��$�bBx3x��$�bVms�Xƍ�@%,ˬ������գ[�zVV��y����f�]3�/�,X��GX��h`��4q�2#�,Z��i�Z�ut�������W��������^���d������/6���������t9X�VG�����[�?�[�
ҰfHu��m�Ӿ<<$b�whr���uC�9�k�����̰� K�p&�������4P!z��~�H8 y�H~�\��z��g�{{�e�[ "�l*O/޿���V�K6�Wⲛ�����@1��Ë7�Z�LRo?H���x�=��FE��w��ǳ�G�]�;��K�����hY� YiU�и���#�T\��P�}�`?&�)���VM~��� ��"z� �q����onS����-�E̹�N�g����ݔKvS�\NE�'��`�����c}�
6�87N$�	',z�3"��>a1��1��O	��U,�E%�#x�Q��R	+ٛ|օ7�����w��n}�ne������*v����w��M}��������cU�����|��Ue����4�@:���9lȀ|�]p�(��ePU�0�������� �������4n�(_e��AaU�|U�j|k*�k�R�s�XV�LN���uZ���.m��f]E������X����e?ɛ� ���#���n����i�8�!�rWC����X��ހ�"7����̱Kr����M����,*��uژE��q"3��V8���Y���@6�7rs i�DZ��ns�P[�I���4�8t��Z�-\�t�O[|*�K��Ӫ��3���ɸ�E��E��ۢB�b��{���E"gP���]�x�s��D|j�.�n��'�Υ�S|�G�ϳBrEW����|ʶ�M;�ha{E\9�^��������XznQ�b
���k�2L�lrb[P�q�����j�אΛT\�h`9y\/�סN�UϽ[;���Yfw�R�Wi>�o���g������п�*d�mJx^���?�����˛��ْ��?���_��Fݾ�z�^��bu��Y{�X<Xx�e|W����3������V	��e.����lԵ
ΠMFUL�z\4��na�� ~�]�Z�g\���>��>.���5��I.`�	��
� �׹�gsd$�s�WF�&�ޤ��H�ؐ�I%,4.27��k3��
�To��5���7n�G"Pd��xdC�o(#:T���M(�\>�����d�Q���7���F��z�
��q�&����$H(�zkJB��$�q�-CW(���m�c	e\oK6 L(�z�;�H4���m.�C���ޖ�/O(�z�v�GǚJ�ڼ~}�9�DF����/�A��ygv����ʼ��)�8��y�>rt�c����]��~�w�N8V�1�w�#�@���\�xO �!B��ۓoWv�*���\#�8���*�(�yo�S��2��V�z��9�ݜ	tq@���z�����緾��(����_Ak�{�f�0q�E&ټ���@u�����cq��)�J�'U��t
=�"vW��Q����cς<�"�@��Y�'W�d��ɚ��Yt�j���� Ihhz*[�x:����"A������Y��P���BC�}t����o�>>�ұ����� �!h��`�1�G�>�=�C����n�����*�>Ѐ�3�P��!0�b=Yx�(?������g5�dܠ�y(AO��P�r��Ж�<��t�8�h=��mŅ4��D��;q=S�Kt�@��>�����J�����8Tt=�(���;4w=ǔD4G�>�!ˁ�ġ��N�,�&�^M��(�^m
ۓ)�^]
*+�]}Jӟ,�])�`�84y}̤ߓ/�^3�F��>fBO4~I��	n�f@k9�	�Ie▏�I٣/ξ�x�d��{,6h�r#!�!)?��tI�>ǡb}BRa8^��A��y:#BRq�0(�VCH�xA����
�M"�hA��t"�`A�t"k�XA�t"j�PA��4�Ok+0D���a��<Z����0�x�m�N���ɋ'/�Wg篬9�{�ΞŽ��7j�K���$�G�d��@2�Hv��A����	�gʄd�ag�BHƏ�w�Z�dh[8�P	$F��	=@2<&4ɠB3�̘�t%ځd�C0��$;f��� ٲc����d��?T��fHv�"���C��藿��諓�+���%8t��8�DʠsH6d,�a�&!YNhc���٨��CZ߷�T�х�!9��v�j��L�*W����@P�>H���(t
��&�N���E/Kh��%/H��KU/E��K%|�B_�|.s��A{��V��?W}��6��#y3�"�h4���l���H�%4��t��l���r#yʨ:�UF�!����s�*?�"���@��wH�r�H��D�	t�ڇD����C�\����!Q�z��A�(���5E�\���"Q8����ůO�:��U]��~y������b;��L��
��h�ca��bBS?�x�
Axd�g���?�N�]@˸�*�$\�Z��"� "h,|#��*���D�O�FCh8,!P*��ZF;�bh,�R����2�?���eT�?���� ��Y��K�ˮ��T�Y��ˣ�H|������	�Xy7����n�H&*<ڎ�>#�%�2#1%L��%��#q��~��Q�$挭;�<j��1��'��#E��ǓG���ΨDʣ�H�䂒�(�6#��":Cʣ�H1�ј�h4R��
�ʣ�H1����h7RL~���FR�M�J�
-I�;_�WWhI�Ɖ�B�ɠtF$W�Ce��z�A�l�WW�P�2���Bu2(�A����AQ,W�C���{T2q�d؝��/(�B32��"z�
�ȠsK��+4$���*�
�ɠSO��+4&�N~��B�2���$�о��9}����n����ڗA��P���tHhă
=ˠy�s��B3蘌�JB
}�`T��Q(_��ހB�2�������؄H&�P�ƥ�&�%�I��7�P�&��l,�!L*��%T%�ቩ� ��M3�Έ@�2�T�WGhT��y��/_��ڤ�v���$�P����Ȅ"�ʰ9��@&P�L��Ɍ�c
�ʰ9ɱ�3���B�2l�s,0�Gʕas�c�7�P�������d��X��	1T%��ƒ�������V�h�QW��XC�2��q\E��^\�;�"���JFp��C73��Y\Iܡ�\8z��ɋg�OoU�l�K��0�e��@�O�8@�	�
h��W{вiUq	p�����
x��7�b�c�Z�`B�	��n�T�0ؐ����8���H=�|vT C�~(�BPT A|~(��T�����Pz�P������x�i!5�V[q	��
5������R$��(6rE��E�1����n�G��n�����97ꊁx�ѸQI���|���>��m�>�އ�pm4C0�-a�h�0�`�g��@r��`��96�!��$-�� �  �B��p����K�	�kݽ�f���쑝��ߜ���]}�d��ݛ��$�2C�^3@�����Ze�G!e�/�������h�=}1��i���$��ߔ��0.�jߔ��g�~1,`S���(��b\{S���T ,f��y(�A,F���P���R�C)�f�b�9��m�E�.D+��~��R ��*\���������短n?8�B=/Dg�xBK/Đ��F	�z"'4��t�B�٨�#�<V*����X��+ZP�ce2T�xA����x"�9V.�d̠G�*7���A��U.z��A{�U.y��A��U�z��Aw�U*�CEw�s���Zw�7�$����oW'糇�-&�h3J"�
�ܱ�)�l��G��Y=�ٱ���U;֔2u�u�C
ە;�ѱ�T8vP�cS��A���#:hƱɤߕ9�űɤ.9hıɄ.�8hǱqS�
�/g#=!�"�L��q�6���ߝ��:]��\<qP�c�S<q�V�X�����ت��PуN[]�|��S���::���ܕA�ʱu\�B���/0	$�nl�$$�0B�m���u7�%#�$��ؖl@<�Pwc�;�H0���.����	�8v%���Zq�R7�~�C(ñK�A����.��;����&��8v��\͓��إ&#��8v��t?�A'�}j"W���7���=B�}��ρЊc_2��xBG�}��	m9�%�'4���N Ohӱ�e}�xB)�}I����x��'Ͽyy�d�ur.�N��1�	��@��I�4�ل��IyM��1�|��Ʉ��˹:�	�?&�w��~L��
�j}L!'H%����  �PB㏩`]������#	M@�'Z�2����21*�P8�P�|����_V���:�u]��?Ųz��7�w�%p�@c���Z�@	A�)�u������nb2��.s-̃U�2rlt$��uY<1���&�<,��"�b�l�Ѯs-,��.D��u�4��.�]	s*ኃ���!`N\}&t	4�<1�M�$G1k(�\w%mLE[ۑ�e��㞎�_?PG ]G3F�k��D�6!�����!G7`8D\�9�d��q�K�H	KG\�9��9.�9��T9Ƅ�7.P�J�����J%��F�JX*.��*�l\�2����&XX/f�F�^aT�h���¨v:���~%��F�#��V�NaTq�/�h	F��	�F��#N
t�6C���@a0j;Dl�	T�vC<ɘ@�/j?d�M	T���Db!��_ԉ��3����JEZ}Q'��M���Q��؄
-��΍`4���I��f�ޟ?��eo'P��ƍ2t;8Z����A0$P틆��	t��	�h��տh8��
����)f{X���J%��hu��h�Ek2a�EZy�f�n����,h�E�IY68�Ƌ��f�	ҴA�%�}��h3�
�{�ƣ���׫�n��}�ע��^tj�����ًN�X�M��LNs�8AW/:[�p����+Q��
�y��n{����P%���B��7bШ�������+�@{Ԡ[}Q�Rq�V]�E��Fv�T�;h�E_��A�e��2�4��mn޿S}���˷�~�����}:I�4J1�p R����k9������^���t��qS�!����e�NAK
�B�Ȥ�u�W��.ɦ$�S���Rqdp-dN��K�BB֔�z�x�Z��2Q�
\K]OMk0DJQ�0
���^�2!צI5��ѣ���>q���������S�MMv�YF�SC3���4���`'h�N��x` ���\�Y����-��wm��s�FMp՝C��>B� �9�2��]��m;�2#�}�8ATbe?`5%���+3�O�A�i�,��S�_~�eB�h�E��I�����_r�e1󸘯���z x�|m*�s�8�<}y�����竿{~q�N��F�P 1�y����=*]��q�H"�]����������T01J|1�I��hb��b�����h���&�E�Q�[߃NR5����=O�?�-�u�N5������$pL����k�%T:|b���I_π��5�����i�+��6�r���7���RQe4H�<IGx?J"QƂ�FX�9���Մ�1�E��`�Q��X2�8
�I���(�LX�֣4�Qd�ڌF �,��ǥ�AR��R���q�KE������{b�B�zL��9�������D����Ƨ�+���пQ�$A`�~�GID����a��qpcG�,76b�(S[�8X��-q�`�FAe���2L�i���@�8HߌK�%n�nǥ�7B��B����1��č�p�p�9n<�m��-7z��L����/�2���G̱;l�C�:��E2�C�Z����%n`c:B��p�R����0�S����й3)�LL��l�ޞ�:�-t�P �em�� ]&�� ��er�r~�"O��BD��E9�7�/A�>����T����bxu����%b�f��Ï�����hػ"�5[���X����� �F@[� @��G eb!�|!iO� ���@HȜ�dޒ��1Y�GC�4&j��`�ʺ�	�H�,�k���iL�bq��6��m��ƃ{�J%	C�����7�]$?**����`8A��(�R����m�a��x-Y���r4����}�9~{BD�7Pa��C�hCA�-�!�Pi$DH4$*�*�L�=A!9�$w�!K.�R����R�CdϾ���eW�m�䨠U���f���zm>*h���Ȥ>*H�y��ڣ��9�#5�zT�mT�8"v��>r��GF3X��5��k0�!�8Z�mG�Ł̄;j(-���,D�lb��m��jH+�n[����־��9�B��GT���UF�pR�˴�Cd�FML+�}�6��Vv8:1�FkL+7�o�j�ô�C��FL+"��5�\Z�!v�a���'[�����*c�i���u"�~�F;K�DzRƍ���f|��ᡋ���Rs�������Qs<�/��b֞X����
z�T�-�k-.���>nŻ9*�!J��E_�QqЮ��#�7�Zp�٨}���6*� `�����kT�@����ԼPcu(m�>r��kѠ?�y����/GF�fB�{)F*df2�{F6�fxl~�A6&��6{�D�@ZV��j۽��){F�I��^��v�(Mz���-��=���w//� _�=���w�4ݎL̞QZһW�n���%�{i��Ş�Fһ��nqd�#�{1��ݞ�'һW�^.d{F�H���Z��"�B�g����Lʞ�+�΍��B4��y�68(�G�Ѽn[����+=��;��'&�"C��wf�N��޽�s�,b�h��+<���l���ݻ=w�3j����;�6�F�H�^��j1kԈ�;$�F-H�^Թ�n7l���e���e��}"��F�G�D|�����������Mj|��AJ������i25jn�GHӥ_���U�o4�4�1��EH�O�E�M4��fG�GSH�'��h�h����Q���G�G�@��8*::����Q����\�����!�e�����C*�~+G#G�T�R^�r�41]!�Ą�`�h��
O�����!=���k��u2� �b�߾}���$*dɪ�Z|RX�
=��G�y YU��+��q�^+tu4��QU<x������C��p \��8��U(�'�>����*\Ȕ�>n�Ac��<X���P!2�l���
��QM=\���@R���7@9��͵8�E�s�����w?�9yv���/V��޿���Z�/�r��W�_���y���F�����߬�k0���ۍ�n��Y}�W_<8��Ȑ��\�Vnь-�%ӀB��V��K���@�͛�rh�����O>�Cߣx      �   [   x�u�;�0�9�����;b���]h$��'ZIA%�)��A},�J�m��� a�~��d�Z0#3��$<)�,��@���/a�G      �   �   x�U�K�0��]�H�wi�E�S$������JLX�y�=ְ�fd))��-�G��ݺ��r/y-��(���a�z��Kh��0=.��#x8�8rk�[���=�:ҭ��q"G�_ȼS�[����>)�����/V�G      �   �  x���Mr�F���S�&UP�v���� �1bc�f�$�X�r��L��	r��r��2��"�I�@�c���J�5]��V��F1���-�Bbge9���%��C����KBa3���7J�;����ӳ���L�#�Ӳ�I֔)��d��zDܖD?�c�Z@ո2�]�"�hE�dk�56�z���t�8�&C<Px�M�$ ����l�d��{>L��A������~��3ɛh�6�7��d�7x/7� f�@e���d�(���) �2g4�N���X����< �p����Z�I�5:L= M������4k�/�D��������kH�5���"9�b�5U_��x1�~0n?�x�B��R��b<��\I+Z��Q�����I[�x�	��������Ī�/�a7,�	%Es���x�)�lP"Z.7O�t^�8��hÈ��4�yf(�qh��O�;"N$�r�VP4���&�����(3�:�����v��W��T�'K)92u2d�����!�I����/��ۂ�)����ۛ`~;�0�8̲��w��\/w@G)%t�iE��ku�Ѻ�����}�h��)�|�o�[0�B��Qʳ u��yҹ�oC�	��]|]0�<64����X��Ne_���4�*8l����&�J�$���^�"���!r�Ug�ˇ{�/O��z�UyY�Be��1�e}<�N2�t�P6�?��a�Dʡ�0�n�*adS��z����?�T4o���q����d�l?�I�ˊ/\s�]����j����&��1���&���])j��	kR��q�����@����z�Y�Z�J�ѯ����<��<���[�i��9��$U��u�q����J����K�f�1M7�����C�C��8�AgI�8^Xl��̠>oɠEA�N7��j��Ym�%����m���(���x�r�����N�Y��QOcV0�p�Ҵ�U���m��Q?cBhw�w1]t�:	h~ˊ��L��4G�]�p�;���u�<YmlB%C"�
�;��^����4p�2u�,�̏�R3�L�l��
���Đ��5
��c�r���vr$�iC��k7��t<���L:/@��z"�a�fmUS���`���\����S�!��;!��✢v��饾;?;;�vVb/      �   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      �   �  x���Kr�F���S�&ULU���1�-�d(Z��:A,T`AE�e'[��G�*�*^&�M��
ɶ��"��陯��c��$�C���ITL	!�T�&�3��)���L�3X6���9���R������oxӶw�ȯ�K�K���
�ا� �g�����?���K���Oy��>E��8Na�B���[�b�H!Yܥ���Uh�)��D0�6G��}���L,r(v>��;a����P�j8�W�w=o�AF��aT������n4g#h���iR2�H���Ө*��N�"K$�j�
衷Ӵ�{�*:IÆs��h��Z��ib�@c��f���,���2j�,h�|��ȷe��D���%Üs,[m��M��ز��R�Q��A�٨�����Dd	�����צB�-�^��P�"�Wo�����5���<�y�&ջ����U��*��P��<,z�~|�.�&WbI�{�y��jG�[7KE��'�^�|Uo_�Q�w��F���(T+1R���Do;Z�6�¥w,/W�|l��d���gE�^W��VQ�BF`l��f7��>Ȉ�6X� �>�Us�� �E���.I�����rO^N�C~>�4z?@_Ph��U]m��ICt����>u�{�lJ��)�`0��*�̝ޭ�7�r|�8Z�H�;C�,	�浐!1��,դ�"�б�D_(�E��C�ϊDRy�0�!�f���?U����x^�}K@e���x��ENg����x�������j%E��E�R�fi�n67e]��m������T$�F���\+�/�0�� 9Br��������E����%�0��a<odG��]����TJR��C�5�O/��C|��C{ ��x��d�J%>�ʶ@���U�=���X�b��"@��6�肼�p�x�v{u���#����{�d����/�^}�����X�      �   6  x���m�[1E'��&�[�,�+�����(�\��#�}�����z�>�����WH��C����O�����h����_O>�<�<{�2^�xvx�ޒZ�x޼���/�_�r�"^6/&�A��������ַ�����<��R�ֈW��:JS��Pi�x����Ɉ�np��#9!?��a��� ^��؏�S����CGy����6ʋ3�M��E)����E�����E=퇵6ʋ��gk?l��	���6��&a�k?l4O͊�����S�(�k?l䇕��k?|��7&�_��#?��Q��~��W5��<�(�	�w�}�g_p�x��Gq�m��Gi�}�@��;�>Js<Lz��Ga�2x��s��y��9%��Fg9FYNSX^���ѬO���v#Fndn{�݈��ա��r�H��}G��#Fv�$|wD�#;ʜa}�G���X��G����D��+`=��(kOޝ����8��	�߹Z&�նx����q\���$l���n�M����r�q۽�o�ݛ��]�s��7�����z>� t���      �   �  x��ԱN�@ �z�+�Iǝffwfg�s"�D	�R�E!4���+(���h��������w����]{�yf}ޮ�Ӝp��	�Z�ܴ��@��p�G��y�|ڋ����Ǜ��}u��@������",D�0s|q� h_RsQ�:=w�s�$�X��1%���Gi��l�d`�����G9��/���pKJ�5����$[Y���(	=�LP�S�J|�2V�Lsl�L�c�>�v?�*�f�P����Oz.�=�%��I�������O����fN�[zt�h�1�.Wd{��L;z2+�q�{�˞_��ങ#m�)���$�֧D���r;y-)Ox"�g�ߺN{H����T�D.�j���Dk�G�\G~��1.2I�G_�h9�H%:	���&|�ҳy~�և1�����5I��q��b�Us���f�Ԑ={      �      x������ � �      �   �   x���=N1��>�:v5㙱��YJ
��#��Et��	8w��"��K��E4O��O����|����s�f�η��\x@<x6�E��c��e�4��D�I�4�Ϸ��
�FR��ׂ0�j!J��Z=�LM�ߢJ'2LRD��d6_�n�|��,dsZ�?#U��?dD�PHn��m� ���:-P{R����0Rֆ�umt{P�є�YO��ƈ��~M0���K�w��S����ǒ8ڧ�Z��Bq�      �      x�3���p�2�u����� '/�      �   �  x���;�1@��)r���m� �n��r�[���m8�]��%���0���#>����������O�7o��@�4�C΁dp�Cm�G�*x�>*�:9a�060A|�
S��$L�V�}l��t�3j�Ram`���Za�`�T�
{��]�N0�1\��0vy�Y��0YO�p5L:�=�j�t�	�l�&�a",����Ig�XfyV���K����Y���/E�,�Y���/e��kV���Ku��_��^�:���v~�汥F���|N5�*���6r���YZ��[�<w��5�z�c�����x���yҎ\��[9l��B��t+g�Ʈe�fӭ�&��"Z���r\���_Z�����)�^��_]A�1!a��+���fۅ_]AF/�lV�� ��~0��QW� `)�]�5| ݯm�u4b'|aX���c�&\���㘔�fJ�+���W3�ݕ��=�)��l��	�Liwe���Z�A��)gSi�5S���~�)��	$��
���蝼3U[�u5��Ђ!Z��L�2��OB��"1�9�ԓ|aF-tN�Ac����ۨ<��'�cn�;>���1Ȼ!�B56��2�zl$u�#f���~��*:��c�'�'�i��/Vg�����_h�v�'�s>�� ��      �   �   x�5�ۭ�0�+�2�����+9�Q�d���BW����A���Q�����*�R(��K^2�@d�]V�-R�U]�7���cYY��zFU�G�\��S�.jK���µ�z=f��{�U�GypW��䪾q���o�aѪ�Jp��b��2a1�s�?���~��Ҽݥ�~���,>#      �   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      �      x������ � �      �   �  x����j1��:�����ko�M�d]H�!)�`R��ƅ��>AO=��s�!�7�HRRV9ߌ��������K���7?���|�W���ֳ]��PQ����D�F�8D�:T�+�Jr�
Ko��ϫ��^�	�g���)���$�t� �L����/{�PD}�AY�_�(��l���.Th�J�f��!)V���-�s�4�
*r�7�9�_\� �՚Bn���q=�������bZ`3QQԹ]A�?]-z	z��A�}�y��n/�~�]��rO���_���|��R���X(�!O��h������E|���J��x6�����F�ֽ�"!�3t|�!/O�wv C*%�
�2.���v��׿�!T����tObB�=%+0ʆh�c����Ǡ"�.v�r|��Ғя3O'�'��A��
��u�y�_6��|�\.6��߻E����WH]�ԢV��)&3��ST�Q`��3�G�l�Y�"R�OMȋ�Z��'�"9��v�tW�@h�b"$K��%�#����I2Eɧ����ѹn�)�xhK�4���nb�[lW��w���`�pg8��ֲ`�˩
N��/x�Mbc^�_��Ӹ�.����p��'������������Z&�m���p��\�G<�$}P�����      �      x�3�42�4�2�44RƜ���\1z\\\ *�%      �   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      �   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����     