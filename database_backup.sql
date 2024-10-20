PGDMP      0            	    |            postgres    14.13    16.4 4    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13754    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            �          0    16797    category 
   TABLE DATA           c   COPY public.category (id, header_lv1, header_lv2, header_lv3, tructhuoc_lp_id, status) FROM stdin;
    public          postgres    false    253   @/       �          0    16395    nhiemvu 
   TABLE DATA           i   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, khoi) FROM stdin;
    public          postgres    false    210   l0       �          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   Z3       �          0    16445    nguon_nx 
   TABLE DATA           E   COPY public.nguon_nx (id, ten, createtime, tructhuoc_id) FROM stdin;
    public          postgres    false    225   c4       �          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   "6       �          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   ?6       �          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, inv_report_id) FROM stdin;
    public          postgres    false    257   �D       �          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   �d       �          0    16430    loaixd2 
   TABLE DATA           i   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2) FROM stdin;
    public          postgres    false    220   &e       �          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   �i       �          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   4j       �          0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   �m       �          0    16487    ledger_details 
   TABLE DATA           �  COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, nguonnx_tructhuoc, phuongtien_id, nguonnx_nvu_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id) FROM stdin;
    public          postgres    false    235   p       �          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   �q       �          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   �q       �          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   �r       �          0    16437    mucgia 
   TABLE DATA           k   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", tructhuoc_id) FROM stdin;
    public          postgres    false    222   �r       �          0    16455    nguonnx_tructhuoc 
   TABLE DATA           W   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    226   "u       �          0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   �u       �          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   �v       �          0    16471 
   phuongtien 
   TABLE DATA           }   COPY public.phuongtien (id, name, type, han_muc, dm_tk, dm_md, dm_xm, quantity, status, "timestamp", nguonnx_id) FROM stdin;
    public          postgres    false    230   �v       �          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   uy       �          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   �y       �          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   '{       �           0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 110, true);
          public          postgres    false    250            �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 16, true);
          public          postgres    false    252            �           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211            �           0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 16, true);
          public          postgres    false    213            �           0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215            �           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 25298, true);
          public          postgres    false    256            �           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 26116, true);
          public          postgres    false    248            �           0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 537, true);
          public          postgres    false    217            �           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219            �           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246            �           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221            �           0    0    mucgia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mucgia_id_seq', 388, true);
          public          postgres    false    223            �           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 82, true);
          public          postgres    false    224            �           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            �           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232            �           0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234            �           0    0    so_cai_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.so_cai_id_seq', 612, true);
          public          postgres    false    236            �           0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    237            �           0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 480, true);
          public          postgres    false    239            �           0    0    tonkho_tong_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 762, true);
          public          postgres    false    241            �           0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    243            �           0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 26, true);
          public          postgres    false    244            �     x���;j�@���)��W/�m��`"b�n�^c,� ArR����*U:m�\do�}ɒ!j�Ƿ���	�>�$L�_ܱ��|X%!�V��(-d�4�B�)���E41Ō����Q��L{�N�U���p'�7�����e���SEz��~��@U}��<�=3��j�wי���"�T��1̵�y�()_�&@)��oN���Z0Q�n�im1��`�.�	.K]d-�xJ�k�%k��v�ٗqög��sY%�qk}�BH8��>���r�$��      �   �  x��UMo�@=��A
Q�|5�� �2�D�F���d[m6UkG�=TBBJ8T��
*"���}�`������-���d�%kG���ۙ7:8y��<��`�!�sv��!�. ��y@�f4`�t�{���x6^G�Z�����-� +��ýxDP�f1��+%��L�8������w�uEd�<{��<��X�"�k�� �)��r�+�PP�Q@IG�!;w�1�~��;R��z�+�jT��W�;X��&�.c!�{���4a���M�7$D
�}�|�Bex�i�#J<V���v���I��"�z�F��]qJʈg�|LY5�I���50�2�3��W<;e�*��+v$�x�n���_������lP�� ��W�7���J����\�"h�a�Y�Ov��/E�6t���pW��=�ԓ�t_�aeV�b��s�W�t���cZ�뮅�&�^i���2G}]t����+���� �� �,�a@��h�d��u��rO��=�^�P��,�A���IL֑~�#(��g'2!ԗ-4y���՛�*</��C|�-��Ђ��O�ٞ�=�Z"��W����#VH�Dh���NI;����F��55���<{3|l�}�	�"Gk���q)�Nd�&�Mz���Yf0��oh��[�Ԭ��Q/sx�b;d�'��� G^}$-$B?̓�.V�#������-���O	3ۣ��.���������ge�Ό�ԉ���V�4�'��
      �   �   x�e��N�@�뙧�0��8�k�+H4h��X� e�1�	,={�\ccb���X^d�䖽B����2����$mI�+z0�}�!nL�St۴�+�gB�JN!8�]6��P8�%//S�N[mZ'n����2�lG����8��o���4}W�r��^��]Ku�������g���CH�����"��_��4nM���#RH��a���]QV�s"8��W��M��U�NT���23<Q�ߔ���C�=��mp      �   �  x�m��J�@��ӧ��*��4�Ղ����R<x	�6�6QI��<x,���<%�c���T/��ߟ���?I�RPB�m�m+gAK5��I�K|	B�鱸���@o�t1�.T._pUZUqU���{c��l��pr�����H�%.�7+�]86�~���S��&f��T����^��؃Æ�hz�.�?bǃi:+���Ru��}��5�}�	0�7Њ;�,Ak~�y�U��v�z�7ɿBǴ�7(�r'X��:�	����@8
'mů�q!��qY�op��co�|��jE��3�xt\���X��Dϊ>�p��Ԕ���~�ؔv�3)H��fT�`@IJ�~J�\.\��?��~�cb���#�Y6Ʀ|�?���2��H���k��pe���R~��)(R�����g{�V��V�      �      x������ � �      �   �  x�m�Q-��C�����)i/��:�� �����N���N�@�������������ߟ���y�_�3C�?���sc��ܙ��b6�mf��0[_���mfIt���B�k�B�s����_��I��e�	@=R볙e��ɐ��o>�Z#|.��/s���9�Ɍ��ƌ��Ό��I�Z�B�Z�B�kF!�9#qz�#yz�P��:&��uX��ux��W�V����0#��1c��a�Z�ˌ��$b����Y�x�,DyN��Zg��Z'���j?fY�=�V{3��j�y��&s��1#�93�j�k�͌�Z�V/D����B�s<qz��<�VǿmJ��̲V_�V��_=�[��ǜ �aF��2c�k0c�k2c�+�X�*D�u����9��k���k��?å��2�Z�Ȑ��a�Uc�j�Μ {1#���X�>�X��1c�'�X�)D��"^s
�9��k=��k=�ZR��̲�s2�j����W'���ߖ��c0��&3cf�3g��%�aV�~�y
�y��:��i�N��ؽ։��2�:�{Y+~�a��ż�
���9�ȁ?�2֊�~k�?/����I�Z�B�Z�B�k�B��$N��M�^kX�I�!���d���a�Z�/�Rk8�I��&���Lj��-Lj&�ZG��Y�X�,D�f"�3��:����!�����������q�����˷u�cȷu�bȷu�aȷu�]ȷu�YȷuZ�V+D��
Q^S����z��Z�2��:C2��:C2����`ܾ���ok8�~[C1�����ְ���Y�u%k]����B�kV!�9+qz�+yz�a�m������׷5��m�_��o+��o+��o+��o+���o+���o�N"ֺk݅�לB�sN��ZO��Za�Z!_��B2�V����y����	r�}������b�2�̒�0+D?��h0,DyN�Z�<�Vː��Ч�Ч��<�X�����1��B1���0���.���,�Ş$b�o!b�o!�5o!�9o��Z��鵆e�S��d�S��d�S��`\�Z	��Պ�� ��0�/c���/c�0�/c�#�X�(D�u����9��k���k�eyj�u1�Z!Y+�a�Uc�j�c|9A�_FƗ�V�ŗ�V�ŗ�VK"�j���Z!�5V�x�%N�Ւ��
���b���O-���b�qyj1�Ÿ<�c�S�A1�<�c�S��.�<��b�S�y�V/D���Y����鵮���2�<�$c�S�A2�>�c\�Z~1.O-���bP�!O-���b�z!O-���b;�X�.D�u"^�Q��8�֝<��x���e�+��CW���eeY�b\V��C��,�wYYO��,^/deY�^�ʲ�D_��+D?��h0,D�a�Z��<�V�,�,�,�'��`y��E�<C�C1D�<C��.D�<�B˟$b�O!b�O!�k
Q��8��7yz���)�同��同����y,�_̋`9c�`9c�`9c�`9�b�`9�b�`�H"�:
k��׌B�sF��ZG��ZaS�!S��We�`9~s^�΋`9c�`9c�`9c�`9�b�`9�b�`�L"�:k����X!�9�8�VK�^+,c�`9$c�`9$c�`9c^���"Xǘ"XŘ"XØ"X��"X��"X�I�Z��V/D��Q��8�VO�^+,c�`9$c�`9$c�`9c^���"Xǘ"XŘ"XØ"X��"X��"X�����B�Zw!�5��8�֝<�VX��rH�T�rH�T�rƼ��/�E��1E��1E��1E�v1E�f1E��$k=����B���<'qZ��<��˘"X�1U�$c�`-Ƽւ_̋`-8��ZP�)��`Sk�.��BGSk=It���B�k�B�s���>��k�eLy�^��/�Z!Y+��a�����3�
ǐg��!��+C��W؅<c�0y�^o�ַ�ַ�Q�x�H�^�H�^kX�<c��}�^!���B0.��+����1�{�b�3�
Ðg�v!��+�B���L"�:k�����B��$N�u&O�5,C��WH�>c��}�^!�g�~qy�^��B1�{�a�3�
��g�f!��˒��z!b�^�x�"���k��鵆e��Z!��VH����qYY+�ⲲV8����!+k�a��Za��V���������B�ZW!�k
Q��8�֝<�VX���Z�ӕ� �+kA0첲��.+k�1LVւb����0YYva����de��D��"�z
�9����鵞���2LVւd����0]Y�b����vYY�a��6�dem���ڰ���a&+k���0+D?����<���<��j�O�Z7~�dem������=ӕ��[vYY~a����&+kC1LV������0YYfa����D��-D��-D��-DyN��Z����2LVֆd����0]Y�a����vYY�a��6�dem���ڰ���a&+k�$b����Y�x�,D<g&N�u&O��a��6$�tem������Ǡ]V��w�.+k�Cd��6�[d��6�0YY������demK"�j���Z!�k
Q��8�VO�^+,�demH���ڐӕ�!vYY~a����&+kC1LVֆa����0YYfa���J"ֺ
k]��׬B�sV��ZW��Za&+kC2LWֆd�������������1de�PYY;CV������,de�D�u"ֺ�9����鵞�鵆e���!��vH����qYY;�Ⲳv8����!+�a��:a��N�����K�ì�����9��j=��i���YY'$CW�	�ЕuB0.+�_\V�	ǐ�uB1de�0YY'�BV�	���u�$b�o!b�o!�5o!�9o��Z��鵆e��:!��NH����qYY'�ⲲN8����!+�a��:a��N����3����B�ZG!�k
Q��8�֙<�VX���:�וu �+�@0�����/+��1\Vցb����pYYvᲲ��eeK"�j���Z!�5V�x�%N�Ւ�׊O���:���ue�Uq]Y�闕u�ee8���:P��u`.+��.\VցY����I�Z��V/D�f"���׺���
�pYY�Ẳ$�ue�_Vց_�ee8���:P��u`.+��.\VցY��������B�Zw!�5��9��k���k�e����p]Y�Ẳ�/+��/����ee(���:0��u`.+��,\V�9I��Z=��]V�B4��0qj���Skş T_YȜ�W+��pg�~�0k&�+�Ì�O𾲐f��d��%k}
k}
Q^S���鵾��k�e�I��7��ᦵB0�ܘ�Z�nR+�Mj�a�I��7�f�&��$b����Q�x�(D<g$N�u$O���.�B2ܵVH���
��W�y�5å�P�Z�0\j�p�5�¥֙D�u"�:��B�s,qz��<�ְ�%��d,�5$ci�!�,�y�5cI��Kj�XRk�ŒZ�,���I�Z��V/D��Q��8�VO�^kXƖZC2��������W��������P�-��al�5�bK�a[j]I�Zw!b���]�x�N�^�N�^kXƑZC2���q����W�ü��q��P�#��a�5��H�aGj=I�ZO!b���5�(�I�V��K�V��X}e!{�����de!��_5�o˝��o,f��ff��������%�aV�~�y
�y���$O��������� ���G      �      x�ŝM�\�y�ף_ћ �qꭏ����P��!-����Dx�Hbyx�m� �,�����������3�d����{e����{��~|[[����'�V���N�>RG�^\<�f��;G'����?߭~�����8z�������V���0��ɳ��~�:?{���G�E鵁�<�|����6���,��|s��?�$��!������ÿ}���n���R�e��̟-���:���V�OW߾}���_ο4�`��>�r���]b~�|��b��ݛ�ڇ�Z ��%�7ˣwo�����3�����~��s���l����J0����N�@\,A���k���#��x &Em!��}1��a��	EP3ć����i��b2����;L2v7��7_�(H���V�o���՗S��{v�����?劸y�+���M)�~%?T��$�W
��Z�������g���V?��ݛ����`��_�}��{?��r��wo�o�w3Ţ��_޹����K���jx��<���o|�pkj�lJw��C����д�M�j:kJ��c��s���5� �iJ��I`F*iJq�I\&{hJ�ѡ�
4������A�^�{�ǳ�xX�è��͑Fj�:5��j���1M�(b���׫�$d#wA����{p��C֌�L��D��]�
^p�ظ�q�jy�Boxx�Ӫ^���?���U�߄��T�/�A9�8�)��m�ߪ$<�տ�E`�"��U�&�������$�ӳ��	ɷ��*wh_��듟L��Y�9?:�$$'i�9NW?ٝ��$i�9?h\��)���}8��7�J!&Nnc���gu���ٹ{8��]Lw��\��6�w]�qT�?4����o8	��t�E�[�9��U����5]Pex�`�x��������n�9�����c�l�bo&l�	��d������{YF�8�8���YF��N$�������j�����3�t��Z��t6�k�Q��eV2�n=��q*�7�5���}��Q.�ٷ����R��;]�^����z���!?�fy� �%���
�6���_|����j��˯�|��W�4ځm]�>S�hv�t�4Mi�
�m�1�:Z�}�M�3����]���L��8fb����B�ʤ�FeJ����WgdJ��:�ɧ�cB:"�>�fa*��E�Gqr��D��q��E�fqd �,_�H�O���i������yl����.�TEwq�F�2�PW��#����!��*�8��z܂�r�/݂� �\pC��n�C��C���
�~����-~y�BHn���
�I�f����E\L��Y�$��I�D��'sQ�_�9j`�\,G� Mm���h��i����|���hJ!�\�^ک���>���k�_���V��1�� ����X��.)n���eb� +�II�7~C��d�K"���M�]���U��=�U��*��*�L��Jd�fqy��DdU�!: #S<�Z��DG����;���۟�I�J�?���_^o?d�{�d�|}c�������e���?�Q%]w��p�G&�����$�lb#��3������ifء!���\\��(�naf��(d�M1�uA1���mԀVyx��c��@�EP���΃?�'� FY�o��NH�N�?�23�c]�����8b�Ә�۞vH��I�~�l+�0�#�`_Yǂ���te�2���#�l�~ �A*�F.u�$�ec
�]���-�
�PW6��$0L [�p)L��ҕM���	�+�R�HW6�*(��l�6�(�lG�}��,�6���f
�,�u#<:&~(�N�e�ڂ��V��e�>��n06��տ�	���g�^�mlÇ��98�����];V��� '</@����U]�N�@rL@��ۉp׆�+c�Y�� I�n'�����_¥���x�} h�.�A�r��ѝ'/_��8����k������/�̘ո�D��8c����n %c�����f�f�H�k��/x� BcvE������Ee�j��^�̌9��%9B`И˅ѵG@�ؗBp�@��/׃�J]c_j����~4��.pp�Ku��!��}zz~��O��$Ǟ�[j��8���8�a��f
��X:��<���s���q��f������3��q0���q��8�a8gǁ��0x��8�s�������0����@�q�Wt�.���<�8 zUcStY!Ց�>����ي�����8�{u�D���>�&5�t����Ф8p~]�4����q��
����ѧ�=����q��� ��S�����/dɑ��U�����Uw����Uv�	�{��JkH��{��L��WI����?������'�/�c��e�U�XH��C���Bvp�zR�757�=Q�,�c
ѓ^�Ωt��E����';��`����D`d z�$$�V�S���(�)��ༀ��[|\ z��/�RaU��z�aU�n-�/Ѕ^����z�������K��?�g&->���v�Kb�z�*^����k.����9�ڏJx�  z*��s��z+�]���U��'`��P�M`����Z%l���ЛZ�t-hBoj�!8a�	��U����/���"��Л�
8�K��\��9P��ģ_�����N�Z_p��������ڀS��2�Q}�Nlnj��&zkj�2�����"wN Eo]��5^@��LUx��z�3��n�m��#9U`�͋�k��"z�_p�@#z��^|��(z�&_d��'zW���|�wi��5C ��J\{����z��.� 
�;���� G�BbsS3һX;��������9C�=S��5C =�LUx��/z6����S�l��H��E�yt�hE�y�g���<��3^�s�|������F�Ә�k�@7zOG���_��4���^��Ы�߿{��ϯ���o�mP^�l��0�t��&�i��y>ho>�;4�<����i�y~h��u..�<aT���pa��ɢ?|Hd��h����Ĩ:F��QA�!�^�y6���VBa��ɢBZ�{4ǄA,��@� ͳB;�Rw�#Сh�I�w>ps�������Z����56�t4��B�Hf2��13�' �J�nn����T;��@1�Iuv��'��J�h2�ΑbБ>�LX|�裏.�*��#硒�*��c^�c�  }�kAv�@@����>LdPi/HMhȠ�!?�h�*-�=��ʠ��`�6[ +��u#�1g�ˌ�geP�8��l����N$?[�.�
���-��A�L�w��XR���l��G8�X���ɰ}v�n��g$e��&zg<e��dgDe���1[�,�� 5[ ,UC~���(-�=���@�����>����2Z 6�V5�!�4%6�63h=�����)�G~��pm���?U 6�v�p�P��Y��n�O�dF
Xe�!��D��:��ށZLZ���2�� �1N@+��#/�rq���T}�a�m.�^?��晎/^��ܬYu��{' �a��13�� �6�y,��0˰y�c�v�s3l�Y?��h����F�|�t��G�{f�<� .?c�,���;�1Z6��,�Nx��[[���avl�>d��e���������RS3��28�����T{�=Н����gO�?[}|�񻇮�֨2
��r}m���rg�-C� ��pvGZv����p�t���j�@8\��5h� �hƧA	�wa�Դ4ڈ����4�!���7��4(#�<da0�@pr�uAAƯq
ԑ@��Wj����8��|�7��D/�@
�X\=��X��CEឦ	8�
�t8�����CW88��p���޽zc�fWjQ�S��
	�7���ݮtG{�(�7�Dy�(~�E��0�A���`��Љ57��T�E�+��R��ۀC�m1^��A���޻7�WtL� �  �ſ�w?�׷�o��^�}�j����P����fp��&�m��ޱ����GA�7�`~��n�m��Ђ;6)�ٚ(���9h�يH� �Q������ҷ�Q��ٺ������u ��0��E���@�a�G�a�>��q�܈�.Ht��+�T��xv��� �146E�R�S���?Y�}p"=%@��Ru���e.��\/*���Ԭ���Ԏ#<- ����E� |Q�L�kb �Eř��� ���g>S�.���Grn��E�A�� ���_pv@�E�c/>= �"����v��1>��Ћ��|_3R/���P~{v~v����b�an�MP�U�u �ɧ&��.R����ˋ+�^ �yQ��
wp��)����wQ�TTx~��EmR��=��B#9> ���ߵ=����.8= ���.�<��c/�Ri�W��{��x�j��.7d�\�u���Ӌ���{��/�h����,�ċ�|d��]463��	���Hx���EÅK�9D����-^M(�
���hb�I`���E�Ja�%0rіʡk���E[*�im�
��	x\�y�x�hG�}��Cm�}�H�h�F�� ]�iC���.ڴ�?�]Z7�����N��'A@�K�F�� �tѥ���8���2��gC��K�E�"�rѥ-!�9(��J��5S`�+���L����T�3�.r�"3�.�H�<S��"����L��l�|�����O�~'�+�/������]n#�Q@�"s�sS0���Gx��	F�u�(`��c.ܵO`�W���<��r#�u�.�Hr�@F_���m/}��	�`�_&P��g 2L �����@1�,���%����k������q��_�������ç�%h��ju"�� M(1h{ju�� 聃��[N�5�`�'i|Vu�J$��VS�&��.�,>��M�8l|8u��!�Ģ�H��"�!��hy$u�b�X�F�&��4��n�G�c��gP�� �Q���Kd�"�X	�Г��N��F�\˝�帓���=h3@�#�zK=�h��'r� *�72�c��H�Ɔet�\՞�؀�kIJ$���Q\�DPr66����$����ײ6��ll8õA�峱Aׂi��fcC������1\���s�,C��CΆFhI5��r'd��Y���|%��&]��t�\��n�A�����d4��A$à!����g0J��Pq�^��POr.���Сw-b�U��0�N¼|+«��JM�Etu]٥�H����q�*���Q<�NXDUsk',7B��6�?x��d��ȴU��&�ȴ����XXܨ�ō̅E�Er0,j�����L�C9�j.�*06U���b0.������!67Y����C�Mh��p����,; ��j�]��x�Z<9"񵺽)[1Rm�ѧ�����W�[���}�עS�H���.�]�Ⱥu%�IaD�rns#���	�G�#9-���t�{�Q6�t�O�,�*�J��<�|z���N�#67E��E�|r<������ػb�e��#���������!'�#��̐G����������Y��o�����ݛ�}:j�*`U��C�Z�)�hz�q�ڀ��C��ƍg	�6���=Ը�M�6���G���:إ���J�#�Sɶ����,ا&թiF�9d!ixDq���Y�K&n�D�}���� �>v�C�[m�m��^�E�A����<p��,������|{w���ů/��=�8;פnߺ�����Yj�2�Ŧ� �6H��#6��b���|�������y�>N�g�.3?�IP#׹�y��0j$Јp��/3Y�F�#�˞��E�	fĨ�ɘ�8z!ر-xNff�Jc�����L�*`�343@+��O�̬���s����#С!��y�fv>������=���鋋��N��Ww~y��n]͡�0E�f���h�dDB3D3j$1N�Pю8v�"�Q�k9��@EB�D�ڋ&**&�Q�#	�è��L�%�Q��C~�֯�h��
T��X2V��H��B�\��#5^
R���X/�L�?RM!?�h$5V³�������h�u�Nx(5Y 	I�i��WH*VMD�
� ���x����id&
�!��^�e����Te�L�B"[��%��D�j�|� q=4sf���%Sp����9HT��&$]�{���#$=��L(Dҵp��D�I���խ��WR�,���6�P��]�Ddv� ��ˁg�"i?u���H:T����H:Ve���D2�**3;��P�f�� 3$���p�d��_2;@����?; ���.5;@����3;`�L��0�~�L-�³���ӌ���x��2k���3��vG��c���{m�m�H���k�O
�E��r�%�H֦�qـ M$�R�%���,�Z2s���O՗��A�!���� �,�K6� �,��S :�\I� !HN��f�A��E�0}x��m��$ӹ�{x���[x>��$���Ar<e��ˠ����H�	$�� �����Yd� � ��\�e� T��*�Kvd ��H���?bS1Y����m-$cڏ��%�ڏ���� �G\�Ԃ��#.g�gH@�O�0{L�|9�³b��6�Ƭn=��c�E(H^��w=hA�&W� ��m*�	H�U�!�`�s~1� @�>�[�@�ȇ\Mf.���� �GAn~�� �G��%� 4�B!����
4�BLeVa퀤�,��a��؅z���c �!����m���~�'��U������׺�k�����Fh�� |к_ ��T8�Dѯ��w/ݒ�g����U�_�k�7�]�Z_+#���*/-���yp3wW�Zዃ��/��a�oPjQ�*n j������TP+E�0e^M+ݖ� մ2G� �����o���e[Q�hTiZ���HY-ӊw�\�`ʹ��#�6H3���.�l eZš֒�4�I�dj�&j//n@^�trsT78/MI ��7�.MI ��4��$~R�K�_��z���t��)�&z�RH���Y��o��Ϗ�"�ZuK=۪�<j��m�n�aS�¢_2} 0[Z��Z���� ��v�ҕ��A	A�nW)�~�DV�N�z4(#���*J�U9�ap3O~eG�.§�˿��Aa3��M})G�*�fQk��m�����3O��6��H|�F�-c۲�� ��~���dj ��~�j��Ѧ�����T�tEj@��~��F��5�Io�gup ��褷_�zu��4�&��2�+�%5�Io�<�JG���%���^)/�i�Gz����7�@M�D�v�%5
I�A��k�����I�48$mC�������RtS����Sm�]b��m�j��ώ���Z����w�f��
nIo�St�,R֠���kE��\�`����F�#�6X%�����\Vـ����E�ZKJ��~��VI������n��7p!�����7�@u�ҜrIyҜ���AiN�'U�@�4��+5Sq�r�S���4sk��X �|����*
�8�!͡&�Ѷ��4�DZ���i���r�A�S�2]JH{�\�ee(H{��-is @��DJ�΁�h���}�G{Nor�Bˣ}�%��G�4����G�4�R��G5�r�D�B%X�iuP?:��p�� �?:���?�~ݶwN&?��\�k߾��lT���Z�D�I�nWu��&Y$3�Y�)�����SP6�#�!�^����&8�]���M*�iT�*SJ6�"��vuKH6i!vQn��#[TA��8����&+�5�!d�&b��� �IɊ\{Ufi!&�������R:_~�v���'�V���N�w�ޘ�q�:��V���0��ɳ��~�:?{���G�u%˩�P��9������G�?F�&      �   n   x�Uα1����Cv�4�!v���-w%��9NdIG�$���&n������C&�i�B��X��V4�0L���<��z".H������7�wʟ��/f�G:&�      �   |  x����r�6���S��i����@n�J�EI��vzQZ6�T1=�5I{��r�����ti���42�v!����?�P�����qD̲i�s2=#�Q��huz5F�rI�%�b�^1�J�k���{��DO��i���j��V��!W�j��	*K��2&�:�'80F ��dǊ�/斣�p>�c�o>#yY�]X#%3���y>C��
E7��y��7�X ��ZE�ȃK\���4��e'M*8:�\�$z�<����������
��z�)4z=^��V�z���a�C��0ɸF��/�g|�US~e`t��j�)�VN�Z1ݗx�kX{��q�/0���o�E�<�8�uo�P<ϖ�k�S(>�-�#�XR���5�Q�R�h�/U����`a8���V��xE�^V_�8��R�5Πh�{�f��|�)�&�~��;�a��R�u���&�0�!���*k�j2E��oY���&�q�ɖ� @�A3t���o��\���X)%G���C.}��[�e8�v����6�@p
d�@}���1��v����-��"���RJ	������Z�]ƨCWh����$�&���]�W��	�+J�Ɠ)�%h��y���?W����h��ס����&�c������׀:�}�J��#$f�m��.���I�������BRc��MH�������#�B�uUy;5�2_X+�kÓg%��m�;���G�GVI�'�E'S�@��~���b6ƣ���ن��x8�?��t��3�t|ɚKm[Yf�qN�H�]�'3�����J7��D�������58�����m��<��M�ya�\J�������>��*�~�n�)��	�J�ں���xRڕSrW5p|��k���Mv�����h�/�����U�9��t-�:�Aa��v��f�����_$��t����5�~���y`�Y?��r�L�g$#�v�B�6�*����<��I� �R�q���A Uj���B����$��h�np�I|����<��R*uQ�����p�~l%x�[V����ӌ٠��j�B0$�9	H��d�8�0���#�`�<��Ń3�j
��վԆ'��U�.z�w83�L?&�m�ji�<�w����Mۏj9�����k�ژ�gm-�O'�^���>�      �   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      �   �  x�}�Kr�F���S�&ULU�{ځ�"H��E-���B&T�Xv��	r��r���s�$��Pɦ�VqE}����a�c�٬�c˗�Y���cҨ`={9���`Z��Q�]����ς H	҂�|���~�/	Tu@Sv~���/�*O$�j�~`���g�]���6�hy����x�%�ȭ���i��6��41U��%h�ʧ�E>��e66T�,h�>���Q���+W�t�%�Jϫ�ݶk��H	�N,�8��(R����u�	2	�:e���]å]'T�P����������\(f����lּ�6զ�M��*���P|�,Ş��VW��+��~#j�F�H"֊�1O"�aE��_թ�ow�M�Q�(1�2����i�-���pi<+�j[L_�,zha�Vv�m��k��/d:haӤlqSmn�('���A%���9�v�V����_\&�%�}V���t���3���;�C��i��[>��@���=k�����nW�bJ��֞�T�p���:6���7ۺ>������)�$�}�mxd�!E紃>���(�W
���ѧ�2�T^8tp�$��v���W9/��� �tP��Ӭ,��0�a�i��o_u��u״J�lx,�ZR=�:òz��n��?���g#���H�����+r���Â��d��}eK>�+"��+�݃k�3��a����+3�&P)I- ��]��h͇��C��x/� � ڪ=�{ɐM*���*�=t�~�*�E�t�j��ï"@�p��;� �*�J���^������
���09q��xuÚ�'O#a�b�R<Q���̊3)Y�g��y|,��R�KNR�C
-�I�H��<M�>�J�h�Iy�s�4|���l;� S��~�>�D�0x��`0��-s      �     x����m#1F�r�@�Sr� �ב1g���<c0�~3��GQ��L�ْ���{�X|�|��Qy�y�~Vi������=��o�?Zs�����!��mނ`���"�6���=�F�؇�v#��K�*�u%�n	q�����n�k�E��Qa�E�����n��n)Z۱�aO'Ŏe�{4Zf�e���.��-C���mj5�bÞ�c�#��V�o},s���p`|,��q v,�����X$`-q���X$`-N�0�	XK�:��W����2��,HoU;�'�� m�/*��X����|�HH2��^�ٛV"�t����,�dz�`K��,�d&{C�b$K$����b$K$�yҍw&��H2���#Y"ɬ�0�%���`rK�S(Y�d�$s)��q|����`7#�*$��qZۑ��d�&09���+�bG�B�y�6�HVH2?B��
Ib4_�X!�B�ƶF�B��5�=�ٯB����A����dס�v[��z蘓�5���R�?�}�Cǜ|�s�����濱ߟ�����Q      �   �  x����N1 ���S�X͌=��RT��*�r��� R�	x
��T!}r��7鬗dQhBkK^���g�^������9�i�i�)|���Kk�w�����cf�v�=��^�X��n�p�O�hf@%3"{"H�J���o�A��9 e3�H��}���@8��*ڰOV��RA�Đr�\]��k�cZk�n�~.���[�/.���C�#� ��,�=���ٵ���J�;Q�Ծ���J�y��8�Y���,WɎG�Q5�#�*�P�z�*�����o�]D�$��z���6@"h[@Ϸ��0m�1�h)U2/%�&ţ����52��N������w�V��dz�� ��������8B���d�x�0�;���*:�Z�����?����ao��i]U�YO�      �      x������ � �      �   �   x�}�1�0��99E/��N�ܸ[SA��l\��q0�T
~Y>9Af��m�Au���M���QI�&��jO>?6y,WSj�� 0G��Ddg
S.�7�&��F���WcA��%�m�S�`4����Zu���21�e��
hEG���\����T�$���:�$��8k� qO�      �      x�3���p�2�u����� '/�      �   Y  x���MjAF�3��<H�ߚ]0Y�����*���"5VuQ�%�afᇪ�{RKD/�#-.J�s����^~|Y��>1=��t�y'����y��z��2d�Y�X�����b��Y#7��U̚�;���i�?�Rg�1"G���Ĭ�Qw��fӸ��Jg�}�&k�'^���G�'^�����Wz��Ĭ��v��B��;���^�4V��W�&O�|��+�S,���x�{aڠ�ȺW����rye�+���Y�ٺW
3
�##�^)�(VD��۽R�Q��9i�+���ֽR�Q������W
3
�G�>X�^)��`��3{�Ja�spe��+���f\=g�^)�*X7٭2l�:p���n�a�8��m�U�����]*�R��KeX�5��f�T��ZU��Ut�K5����.�a�V��f�T���^�F�ʰTc��]+�Z	�Q�k�X+ᵨD�ʱV����7�W��Zsu��Z9�Jo�b�V���?e�ʱV2e�;0�V��R���Z9�J9f��]+�Z���]��Z��������������������_�ѝ���>��5�W�����7�YV�/�R�o��j�99���Z�׾c�Q��7b�z'��]���q�q3      �   �   x�5�ۭ�0�+�2�����+9�Q�d���BW����A���Q�����*�R(��K^2�@d�]V�-R�U]�7���cYY��zFU�G�\��S�.jK���µ�z=f��{�U�GypW��䪾q���o�aѪ�Jp��b��2a1�s�?���~��Ҽݥ�~���,>#      �   �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�      �      x������ � �      �   �  x����j1��:�����ko�M�d]H�!)�`R��ƅ��>AO=��s�!�7�HRRV9ߌ��������K���7?���|�W���ֳ]��PQ����D�F�8D�:T�+�Jr�
Ko��ϫ��^�	�g���)���$�t� �L����/{�PD}�AY�_�(��l���.Th�J�f��!)V���-�s�4�
*r�7�9�_\� �՚Bn���q=�������bZ`3QQԹ]A�?]-z	z��A�}�y��n/�~�]��rO���_���|��R���X(�!O��h������E|���J��x6�����F�ֽ�"!�3t|�!/O�wv C*%�
�2.���v��׿�!T����tObB�=%+0ʆh�c����Ǡ"�.v�r|��Ғя3O'�'��A��
��u�y�_6��|�\.6��߻E����WH]�ԢV��)&3��ST�Q`��3�G�l�Y�"R�OMȋ�Z��'�"9��v�tW�@h�b"$K��%�#����I2Eɧ����ѹn�)�xhK�4���nb�[lW��w���`�pg8��ֲ`�˩
N��/x�Mbc^�_��Ӹ�.����p��'������������Z&�m���p��\�G<�$}P�����      �      x�3�42�4�2�44RƜ���\1z\\\ *�%      �   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      �   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����     