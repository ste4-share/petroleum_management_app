PGDMP  3                	    |            postgres    14.13    16.4 6    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    255   �0       �          0    16395    nhiemvu 
   TABLE DATA           i   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, khoi) FROM stdin;
    public          postgres    false    210   2       �          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   	5       �          0    16445    nguon_nx 
   TABLE DATA           7   COPY public.nguon_nx (id, ten, createtime) FROM stdin;
    public          postgres    false    227   6       �          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   �7       �          0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    251   �7       �          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, inv_report_id) FROM stdin;
    public          postgres    false    259   �F       �          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    253   f       �          0    16430    loaixd2 
   TABLE DATA           i   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2) FROM stdin;
    public          postgres    false    222   Uf       �          0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    235   �j       �          0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    240   ck       �          0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    242   �k       �          0    16487    ledger_details 
   TABLE DATA             COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, nguonnx_tructhuoc, nguonnx_tcn, phuongtien_id, nguonnx_nvu_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id) FROM stdin;
    public          postgres    false    237   �m       �          0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    247   �n       �          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   �n       �          0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    249   o       �          0    16437    mucgia 
   TABLE DATA           k   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", tructhuoc_id) FROM stdin;
    public          postgres    false    224   @o       �          0    16426    nguonnx_tcn 
   TABLE DATA           K   COPY public.nguonnx_tcn (id, tcn_id, nguonnx_id, loaiphieu_id) FROM stdin;
    public          postgres    false    220   �o       �          0    16455    nguonnx_tructhuoc 
   TABLE DATA           W   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    228   �q       �          0    16420    tcn 
   TABLE DATA           C   COPY public.tcn (id, name, concert, status, loainx_id) FROM stdin;
    public          postgres    false    218   Zr       �          0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    230   �r       �          0    16471 
   phuongtien 
   TABLE DATA           }   COPY public.phuongtien (id, name, type, han_muc, dm_tk, dm_md, dm_xm, quantity, status, "timestamp", nguonnx_id) FROM stdin;
    public          postgres    false    232   s       �          0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    233   �u       �          0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    244   �u       �          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    257   jw       �           0    0    Ledgers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 83, true);
          public          postgres    false    252            �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 16, true);
          public          postgres    false    254            �           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211            �           0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 16, true);
          public          postgres    false    213            �           0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215            �           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 23666, true);
          public          postgres    false    258            �           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 24484, true);
          public          postgres    false    250            �           0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 505, true);
          public          postgres    false    217            �           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 20, true);
          public          postgres    false    219            �           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    248            �           0    0    loainx_depend_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.loainx_depend_id_seq', 695, true);
          public          postgres    false    221            �           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    223            �           0    0    mucgia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mucgia_id_seq', 314, true);
          public          postgres    false    225            �           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 82, true);
          public          postgres    false    226            �           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    256            �           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    229            �           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    231            �           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    234            �           0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    236            �           0    0    so_cai_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.so_cai_id_seq', 581, true);
          public          postgres    false    238            �           0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    239            �           0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 407, true);
          public          postgres    false    241                        0    0    tonkho_tong_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 609, true);
          public          postgres    false    243                       0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    245                       0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 26, true);
          public          postgres    false    246            �     x���;j�@���)��W/�m��`"b�n�^c,� ArR����*U:m�\do�}ɒ!j�Ƿ���	�>�$L�_ܱ��|X%!�V��(-d�4�B�)���E41Ō����Q��L{�N�U���p'�7�����e���SEz��~��@U}��<�=3��j�wי���"�T��1̵�y�()_�&@)��oN���Z0Q�n�im1��`�.�	.K]d-�xJ�k�%k��v�ٗqög��sY%�qk}�BH8��>���r�$��      �   �  x��UMo�@=��A
Q�|5�� �2�D�F���d[m6UkG�=TBBJ8T��
*"���}�`������-���d�%kG���ۙ7:8y��<��`�!�sv��!�. ��y@�f4`�t�{���x6^G�Z�����-� +��ýxDP�f1��+%��L�8������w�uEd�<{��<��X�"�k�� �)��r�+�PP�Q@IG�!;w�1�~��;R��z�+�jT��W�;X��&�.c!�{���4a���M�7$D
�}�|�Bex�i�#J<V���v���I��"�z�F��]qJʈg�|LY5�I���50�2�3��W<;e�*��+v$�x�n���_������lP�� ��W�7���J����\�"h�a�Y�Ov��/E�6t���pW��=�ԓ�t_�aeV�b��s�W�t���cZ�뮅�&�^i���2G}]t����+���� �� �,�a@��h�d��u��rO��=�^�P��,�A���IL֑~�#(��g'2!ԗ-4y���՛�*</��C|�-��Ђ��O�ٞ�=�Z"��W����#VH�Dh���NI;����F��55���<{3|l�}�	�"Gk���q)�Nd�&�Mz���Yf0��oh��[�Ԭ��Q/sx�b;d�'��� G^}$-$B?̓�.V�#������-���O	3ۣ��.���������ge�Ό�ԉ���V�4�'��
      �   �   x�e��N�@�뙧�0��8�k�+H4h��X� e�1�	,={�\ccb���X^d�䖽B����2����$mI�+z0�}�!nL�St۴�+�gB�JN!8�]6��P8�%//S�N[mZ'n����2�lG����8��o���4}W�r��^��]Ku�������g���CH�����"��_��4nM���#RH��a���]QV�s"8��W��M��U�NT���23<Q�ߔ���C�=��mp      �   �  x�]��j�@���SL�>vW��-�bp�Xؘ+�ű����[\�+R�)��WIE
��ǾIfm��@���3����i�RPBy��(���}ن2��@������ގ�fT��0�oۊp��!i�bH���sk�?�'�0b���~�2�W��ܮ�����_��h�s�䯭v��O=��ُ�L��l�q<�̖8�UׇY6/��'RugS&���Կ3Li��LU��x��)��	;.`��1�;k6	.MU�
yhqA��p3U��T�$Ųh6�Q8:f��8�v[��AHnq�l��eZ�n��[�ݚ~9;s�X<"�g�m��&�%A�������s<a4	3��� ���w;��	)�6�s��ڠ0�q���_Jƃ�
11�˫���zK���{��hm���3�*]�0e"��RS6���8_+��J      �      x������ � �      �   �  x�m�Q�7�C���4ʖ����_GS@_J��:�4n��r�i{�������Ͽ���0���p2��?�?�ύ�l�37��b��6���e�2;��lt�)����9��9Yg���d��۟�mֳ�%��fH��d�~�2oX�ÜE�`�w2#�k̈�:3b�وXoiD��4�kJ�<'�4��}��A:;���̈�},���3l���ϖo���x�9��l1��~X_0�e�Y6��J��ai�kFi�sF��XG��XJ�`�Yb7Cb��k�-��q�	�L�NgF�s1#ֹ���F�:K#b����҈�X��X-�t����9��j+Cb��a�՗y�j�y����f����dF�����K#b�҈�xi��d��ճO���ۂu=����_]Ƽa]ΜE�b�k3#��2#�u���FĺK#bݥ�٥��Y�c�٧c�(�
ֽ�%��fH��d�~�2oX���E���=`��Xa��Xa��X�lD�oiD�oi�הFyN��XO��Xav+$�%VHCb�`0l���7�p�_�"P�_�0�_F���_F�0�_F�7�-����F��F<�f���f��5,c	֐��XC2�`=!�/�~��b=��c=��c=a�c=a�c=a�c=O6��J��ai�kFi�sF�iX��>�	ːo�	��o���o���������o�	ǐo�	Őo�	Ðo�	��o�	��o�وXgiD��4�5�4�s�N�:�O��!�������������m=����!���!����o뉏�|[O�(��cوX�4"V/�x��F<ǳN��٧cːo�	��o�	��o�	���������8Ɣo�bL��Ɣo�]L���Ŕo�YوXWiD��4�kJ�<'�t�;�t���y+$�%VHCb�`0l���7�p�_�"P�_�0�_F��zqk�^\��f#b}K#b}K#^�F<��:�}:ְyj9!��rB2���`|<��������!O-'C�ZN�<���yj9a��rN6"�S�)�x�-�x��:��>kX�<���}j9!��rB0>�Z��7�p�_�E.�_����/[����dv�e�ˬ4z�Fư4�s�N�z��Ӱ^X��S��_����1�g��Wq�/�-w�,�C{��_F���_F�0�_F�#�,��u�F�f�F<gf��uf���a��r��O-��3}j��^��S���>�Z.��1yj���m��rq��S�E`��ra&O-ײ�ZiD�V�5�Q��u:V�>+,���B2L�Z.$����B0����/����1L�Z.����0L�Zn�^�Sˍ�yj�+�*��u�F�f�F<ge��ue��50de�x�Еu�CW֍'���u��ce�xȐ�u�CV֍'YY7^/de�x���uw6"�]�.�x�[�7�t�o��X�C���
֍�O�u�/>�c�`�P��!�u�.D�n���=وXOiD��4�5�4�s�N�z�O�
�p��p��p���������p��p��p��p��p�{����z��]aidK#g�u*V���S��O�T,d��+�7���d�~�2�5G'l0c��2c�2sf�Y6"�Q�(���(��:��>+,ç`�d�T�������bް�1|
V(�O�
��)Xa>+�§`�lD�V��F��J#�cY�c��ӱ�2�+$�M���X�O��,�yÊ�+7�
�p��7�
�p�����K#b�҈׬҈第ӱ��ӱ�2�+$�]�B2�+��
�y�
�p�Pw�
�p��w�
�p�;�.��u�F�f�FyN��Xw��Xa�+$×b�d�R��+Xȍy�
��%X��+×`�]��0_���F�zJ#b=��9��9Y�c=٧c�e����_�X!������eް�cl���k��a[��Yl�z���҈Xoi�הFyN�iXǓ}��џ��Mf�:B2��g�~u1�-�̍��2sf��bv����0����,]f��ð4�5�4�9#�t�#�t�aG��d��qk��gl�y��qk(��aG��]�fq��F�:K#b����҈�X��X-�t�aW��d\��qk�ߕ��eް�c\��qk��aW��Y\��وX�4"V/�x��FyN��X=�t�H�#X�G�B2֣X!���Bn�V8�z+c=����
�X�`�Y�G��lD��4"�]�]�u:֝}:VXƒ�5 KWրd,]Y��>Vր_���5�KVրb,YY��de�Œ�5`KV�x�������Q^S�9Y�c=٧c�e,YY��teH�ҕ5 �ce���XY��de(ƒ�5`KVր],YYf�de������F�zK#^sK#�s�N�z�O�
�X��$c�����+��a��	�X+k�1���	�X��&c�ʚ��%+k�,����d�ˬ4z�F�f�F<gd��u��ӰN����5�{KW���-]Y��>Vք_���5�KVքb,YY�ߒ�5aKVքY,YYsf#b����҈���(��:��>+,c�ʚ���+kB2���	�X+k�/��ʚp�%+kB1���	�X��&�b�ʚ0�%+kZ6"V/���K#^���ӱz��XaKVքd,]Y��teM��XY3��ce�pYY3CV�Ð�5�.de�0YYse#b]����(�)��ӱ��ӱ�e�ʚ!��fH�����f���ʚ���f(����!+k�]�ʚa��曍��-���-�x�[�7�t�o��X�2de͐]Y3$CW���XY3��ce�pYY3CV�Ð�5�.de�0YY�d#b=���҈��҈�ܬӱ��ӱ�e�ʚ!��fH�����f���ʚ���f(��,Ð�ea��,�BV�=��2+����1,��Ӱړ}V�elYY���֕e���+��G�ce��+�p閕e8t��2ܸee�b��2�Ŗ�e#�,��u�F�f�F<gf��uf����ee$c��2H�֕e����~�?V��1��,�blYY�ز�v�ee�b��2�F�j��Zi�הFyN��X=�t���-+� [W�A2��,�`쏕e�������eec��2Ɩ�e��-+�`[V��lD��4"�U�U�u:֕}:V��l��2|���,�7d��2��?V��o��XY���,C�eec��2�Ŗ�e0�-+�v6"�]�.�x�[�7�t�o��Xa[V�A2��,�dl]Y��+���cec��2(Ɩ�e0�-+�`[V��,��,;وXOiD��4�5�4�s�N�z�O�
�ز���ue$c��2��XY��+��[V�A1��,�alYY�ز�f�ee��F?���F����F�0�4��d���a[V�C2��,�dl]Y��+��/>V��c���PYY�!+��.dey���,وXGiD��4�kJ�<'�t�3�t�a��<$CW��d��������+��1dey(��,Ð��a��<�BV�[6"V+���J#^c�ϱ�ӱZ��X�2deyH��,�Е�!+��/>V��c���PYY�!+��.dey���,�lD�^��F�f�F<ge��ue��5,CV��d���]Y��<��cey8��,Ő��a��<�BV��Y��򝍈u�FĺK#^�K�<'�t�;�t�H_YY��Օ同WW�C0ޏ�����ce9㕕�P�WV��0^YY�xee9�╕�o6"�S�)�x�)�x��:��>������o��      �      x�ŝK�Gv�׭_Q4���%E����H�o(�-6D�>`iv�,�����&c ^�J\R�����]de<2##nWlH�h�	d�9[u���7t����[�O���{w�:�<?{���7��>y���|�����׏/~q��?���۟6/��4���'�o������7���H���#5����W�~����Xc�pbp�����q*�@pБ����|�y��ls���/|���^n~8�/�����˳�_��O�6߾{��N�pS:�_ܸ���}N'�\�o������K$�;��s�J�@�'�w^=��������~��!����OC��V�i(l�l�{����?m��z�������kD�m�ۏ�6O޽�>��zy��4���_�m^>�e��/L�c�xz3dJ[eC=<~���OW��#�6�\=�:!��]�m�� ��\[��,s�D�0C�G�ݰ�~��H���)��Q	NM�d;*��D�Qwz"&����;3��CB@v��~�pW7�k+
����@@8�4��ȧ�7�Aa�ٰ����U�b��d����{����/�z�����O����*"�^su���lz3U�o�%Id��}I�Z_�Fr��Z/t��4r���BE�����0՘������BU/i"�����~^�A���AM?�s���HP�4i�%&D����%=�%DqY��%U$&������?�?����d�x_��5�HMS3��w�7�i�F���_oΓ����e���=o�%ۃ..4uY��� �o#V�돣���Y��;���^个tt�TwZ��U;U]��7���|������3[�..QLqР��S�9D4x ��~NH>��]n�fĘ�1��K�qs���,!���]�s���1}z	$bٲ�%�@.1���GNW�$F�P(�H�J��QCr���ĨE�t/�m�T",�'�rQ�X�J�,�NC%)��PiM�rJ�TZ���(���e�J�T�R���*�����(�K����L�o>yp�x����G?��Y*�v`U�.�cAڠ��4-i�
XGڲ0Z:Z�M�U�Y�@a�M�a8Kb�v�X1KR=�D�
*K�<�D���%A$V�|K҈�N��AŒ���(.�aA�"�:b%��Egq K��.K��΀��8x�J~�yԻ<��C�%]�S��ns�Z�R���@�[�����r��@�Ǳ	FM/]K�c�O��78&^�詎D}c���*�v7fY�����]��f�o}kc�L����
+�(j2}�)V�C���RCtl>:�hj촂U�H�4�Z�N�Y����B���͝��V�&��k������A+{�`]���YV�>��-ōV�![���\7$R��)Up���68VS���C�]�XP�Fs}�c?\��*�r*�4�2m�Upq�˩���:D�cp\<�Z��*�pt�ןݿq������^u����_=����h�杻�g��ߟm�����//~D�e�r�pAf=%.5e��I�*������xl����q����ur��4X����&�̀a�*z��D��+|P�%>E\��Fx��g�+\P>-�DV�"�!�"OVx �!�}%ZV8!�!N�e굱�c�8b☯c�
;�?��R@�O���0�c�������c��O��
Gظ���v��[��Rw"i;q�)�����m�U]a,m�j�g���]���:&I4m�j�O���ݫ���2��v�6��@P���蕶�����Q}&���B�)��eaJ�hl��d�K�I�He�%X�h��,b���U!��d�s���d?\�N�0����.�0ڀ�9a�0
���0B���Ha��.�0"��"+�������C#�J�oa�(�� �U���|�[�n<z������<Z}ul�~ш���Ne��m�N���H<��B�FK0�I�&M�*{�;�bP$�Y�.��묲0nj�M�K�<u�6.I���G���D�A=p��)e�:�"�2�������eP:W��1���|t������4�,�B뼃K,:B���,�,jB�=��E�h�;�0�,�E�Ʌ�ĒE��0��EQ��WƐEY�x��"�FM�!����i��p�h3� f�l�qǋC��-��V]��d�y`�8���ʦ�B�M8��շg�2_���t;M$��!�bY�8�ު��U!ţ#,N#L���:�`�kb�.�x�����0^<Jú�F�0%`}I�x��&���G�]wA�x��%a��Gޝ������u���9�v��J�ܐyg�>?����G���Ci�4��	�߹��,pj��}���M@[��=�0lJ��kۉ����4�M@Ax5���LP��&��	R�uAĄQ�Q�{ D�Gі�Kl[.a@��/��Va��zX��ACmity!߁���ãg���mN�^�:�}�����j�K ����/Q�B'�5�"�B�3(YB�[��}0
��	���C�@h����x"�M7Na7H�M.�MXX�P*�.raMHC�4�5!��g��4�[CjXҰP�f�4�+�0��"�跿���˻w6j�J|��O���]$h��"!q��ևDCdsU8�6��J���D*�ȝ�H���.xa�H�UalazHd`anHd��H�
D��� �)"Q|A<a�H��^L�(���/�$�Ic|`a�H*��ea�GR�������F��t�E�XA�2��,�0r$e#������\�8�� ��O.r'�0$�.a�H<$���|��a�H���Hb�E��0��"q|Aa�H��^C�+������C�5�1�,a�H�n=z���0�|��B/����ݛ|v~�}3o�:�Cɦ��u6hM�M��������rh�y�g$���T�h��E��:gI�N��M$�A�:Y􇶑l���L����0Z'�j�>�2��٠t\	��E��y��`���:+t�Q3��]�E2�@� i�yx����=`.�E�Am�m�P���:#4��e#!d`!I�%F�p� �����O�I�	��
�I�Cr����$YJ�{!�u$Y��c
�G��Xɀ
[G�:�0��~$��D/���$�ւ,���$���e �H�q/H!kH�ŐZ�R��K���e%�]7�a�Jr�l$�,�qb$�-l(����
���%9S:�<�0�$g��ݏ-�-ɹD�[�X��<�0���#��d���$�ݸ*alaII>��^laOI>�Il��J�i)�ck4C/��d�5�#��Cck<J��%pi����:y���gz��%@k�ASx_��h���!��胺��}�W�y�*��瑆�臲	*�ν���8��(�"	:����h�J	&2���(�v6�(�FTB�+�P�,* � �',*)�pp´r��̭��/��`��R��`:���T�g:�=~�bK	����_
�0�T�G<Ι	�kL�}�c�LT�Y����+�v�j����䡅]��>72s��хA��>82#�0�0��!�qy�af���������J�}d.t�H��RQ�Nz��٥�|}���KE���a��(�R��S�lx�r*ʕ�%b�NE����GϞl>�Q���4��QC^�L�
et���r�*��J�I�Rk��j*Ź#T!������fyT���Pf���O����D��4ڈ�r�"V*�V��e�T(#�j�0*�@�p���O�W��
u$�U�N����Qq6N"%_qčue��,�B�?X�ܿ1��[��1�Tl��=M�%�b�/,��5*��]��9*�58&����^c�cƨ4�K5�7v�J�}!����Piޗ�ho,
�֓�DycQ��$�Mݍ�ғ�	T7�JOB'��X*�K7i�B�s!:PocD��P�&dό�{�����i�Ѡ��9}��~��������/�J����]���2<q�o��ȫ�{R���( `  H�v+�e��W[��k����jM�v��9i�ՊH�v ���P��=P�IߞG��W�"����~8�@���ӀO��Z���@Ϡa�>�z�N�Ȉ�.H���;ڪ�x�l<;���(����M�e�TۋTq�O67�ݕF	&}����D�c٧lH\d����rCdsUX��O9*G-X�)���܉���D�1�)�Ua�`���I|P���r6�$n��S.-�.�`t�\|A�`m�\{q�`x�|�|�`k�|1�Fz��1�$�z�o_������W�m�->�m�	��뢉 ;=�Ml"� ��Ny;u�"vyʻ�id	D��)��+� �O�������Sa�Ee�C�ԩ@�M?}�9TA��t*$��aaG�Bw9�t*$a�&aM�������o(����!�T��U��̇��:����ً�ͭ��Ƀ�Ü����2>���Ď�]������vx<�̥�Fw<��r�0���ft�q��.�$@$L�x�0IB	9r���%��re �&��rU N'���6�pL3�>0���cJ�Y��)n�o|:��!���!���~���0�c���ʾ"l��N��o�S:Vq��D�ұ���[!�U\&���r��b������c����D��\9ta
�:V�2��u�rU �),����w�:��f�}`La�7�fU�t����}���7�O�~w��)���x�gl$؁�����F�Q��1����= �)�G�P�	2��:w
3Af�
w�	Af��
�	S@�	�	+@�C&D�p�B�u��؄� �L�	�A֙'V������ˁ>0�0Pd������"kw1��s��߯�8_�[0��~��p��� ��}ɠ�H�5@��=���u`������N��0�?I峪�P"FEW���*I�p$�}Bu� ���H����u�c"��F�V)76E�#��k�:�4�:A���1�xu�<Bl�W?���9����l�E(m!�BO��;	BkUu=4;a��v/���=�3@��.t�:�lMd ��ډÕ`;F�.Il`���GW�.��d;60Qd7D�����E�������C!���űn�&���Ka�Bvq�e���!;;s3�dJW�!��";_]�NȲ�e��c�R�� �
�ݕ�"{��2�B�j��*���9d�كCaw�^O/i0F���T��
sB�v�'��� {7u褅����� �M �(�ͬP�r��+�
� �(���P�rP��آ���|�	�� ]�	�FHp�%������
�A�����
�A.v�������Z\	.��
G��z�ۃL�@�f;4�ԃ�%��Y�8���{z�I8�Ё������==$���V{zH�,������h���n)���~����h�B���n���۟N_n�=���u��_���>Mj֥�����9A�`��I�6W�l�4���H�?M6w�{��I�&��mG�{�|NU3��?��|zQ����lx�p�5���K;r���S��Vx�U�������Kw�I1Vs1>$�0��*�K�V|Z�~�p�έ�f����O?n��{�g-P�-�`��@�[T=��m���C��ƵgAg0�R�P�Z/4	����e\)���f�Es0��DG��%�[\k��`�QS-�سMBR��ZD����L\+�hs���� ؜��!ĵ6ȶ�nk�0��KA�y�p�Yd��K��<������_�=;}|v�T�p����T�?�$�RKl�y�kl�X�A굙�iz�e�ж�s�ϴL΃��n�<mO�L�P'��\��]&¨f�k�~�Ȣ6�0#��,��5bhƨ�ɘ�8z���5<'3���N��J�yjf"�
0s����	
��@�5+t�)w���k&�����<m39oʁ�|�f�0�����ON�>����W����9���5��C�Q2��Ӗf�D�����j���x��O[�9��0��V�^�6Da򧭙�n��~��YaLaʧ���j�{���P	�
�>m�k�VX�i7_����O��R�v���B���Ӯ*䇁f��͕�0��$�n�ۏ+�v熿/�,,	���&��P;W4A6����ˁ1�]�va�42���P��x����q��T�mA�ګ���sA��hӌ$�@P{]M?��A���o@c8�}9��b,�/�]A�1����w���#�~1�Ac��C)ܲ�a�u�2o�l�}�_
a�1K�A-����Rԁ�&�aLu���b��S��,�F;�͢�x����*�����aLu�EQ�`v�C(ڴc3C3��`�C3��߂L�P�{?v�<4C9�R������`D3,��0��~��pckF�~�H����6����1������{m�`�h�//��lQ�2$�dѐ�/c@0M4ıZ7�?4�c-\`Nh�����bАM>�p�j�P�&`+h(	e?
�4�DR� X5�ݳ����*E�0}��Q�>�&X�G�� �7��|�H�g���K�����N�B��1	4�f=� ��r�g�!��F�µm��F��h�4<$e��ɟa*��S�>êX`�g��f`�g��~t`�g�l)�`�g8���`�gx!���	f���A�
��w�f�\����RD�P��aF���4�Ru�` h����l���1d�m��:��m���h��0S?�m�&�L��v�~;)0�3�g>���F��Lp[��i�1����k<c21��&y�$I��wƔcw`�gLKa`�g�{|/��V�56����X���uEJ;c���=6wƄ�d�[;c��K�V��K�J-厩��j_G��1y3����s6c���,P�ز;	_K�c�f�$l��������I7&j����Y����\tS�ث7�e�� �st42��:v�R���4�TA��Q�H3���"e�i�qz_��u���q&{�����8;��m��A�qn��R���J2��	�qa��^�y?Dn������(�-�q��Q ��[c�e|?��t��wj����q:H�k,�����n�@
�Ż`�@K%����?��Lz����l�.��þnŻA*��0|}H���@�Լ��� �j���^����Q�	����ߣB�z_���o0�ʙҮUC��|�_�Q����I��wtT� la���rT�"ja���pTho�f��tV�y��#񞍊@�e�� �(�{ժRR5�!�ݽQ5��hS����}��"5�A�ݽPu+|������޳:9�LMc�dw�Z=�tm5�Y�ݽL�\����`��������4fIv���s�������^�z�a�i,�,M��R�X!Y������>�4��TMc�dɖ��J5D�r�9LMc�d��e�� �۽j����f�L�����rG�b�dw��)��5�Hv�Z�s��5�Jv����2����ݽttw�*�$�{��N���1=��W��djS"�{��N���1������pT76CVE�l)oL�,G�o��,G�*pL�,��Z��=��|�S��Yֵ�n�@
�"�/���&�8VC�mI��m���"i�&�Ȳ�h�ʱ��g��r����k�V�YM�XK�c d���d���9o�sx���\�б�:�fK�c�cu��Jǂ��8�R��1��~�v�D�t!X�iu�~�����<:z��ƶ�qw��W���۟NgUM����okT�����U����E2�� +�%e�=�kL�~��*y$����9Y�� ��3�b�J95~_e�K�*]�Մ}���UZ��&��/#�T4;	���*�N�5�%d�&V8�Nb��d�2�eu鮬�BLl.&�_<V�#F�֥t����o��G�?߂��      �   6   x��0�42�4�4��4354010 ��Ltt�LSNG��0WNC�=... b	�      �   |  x����r�6���S��i����@n�J�EI��vzQZ6�T1=�5I{��r�����ti���42�v!����?�P�����qD̲i�s2=#�Q��huz5F�rI�%�b�^1�J�k���{��DO��i���j��V��!W�j��	*K��2&�:�'80F ��dǊ�/斣�p>�c�o>#yY�]X#%3���y>C��
E7��y��7�X ��ZE�ȃK\���4��e'M*8:�\�$z�<����������
��z�)4z=^��V�z���a�C��0ɸF��/�g|�US~e`t��j�)�VN�Z1ݗx�kX{��q�/0���o�E�<�8�uo�P<ϖ�k�S(>�-�#�XR���5�Q�R�h�/U����`a8���V��xE�^V_�8��R�5Πh�{�f��|�)�&�~��;�a��R�u���&�0�!���*k�j2E��oY���&�q�ɖ� @�A3t���o��\���X)%G���C.}��[�e8�v����6�@p
d�@}���1��v����-��"���RJ	������Z�]ƨCWh����$�&���]�W��	�+J�Ɠ)�%h��y���?W����h��ס����&�c������׀:�}�J��#$f�m��.���I�������BRc��MH�������#�B�uUy;5�2_X+�kÓg%��m�;���G�GVI�'�E'S�@��~���b6ƣ���ن��x8�?��t��3�t|ɚKm[Yf�qN�H�]�'3�����J7��D�������58�����m��<��M�ya�\J�������>��*�~�n�)��	�J�ں���xRڕSrW5p|��k���Mv�����h�/�����U�9��t-�:�Aa��v��f�����_$��t����5�~���y`�Y?��r�L�g$#�v�B�6�*����<��I� �R�q���A Uj���B����$��h�np�I|����<��R*uQ�����p�~l%x�[V����ӌ٠��j�B0$�9	H��d�8�0���#�`�<��Ń3�j
��վԆ'��U�.z�w83�L?&�m�ji�<�w����Mۏj9�����k�ژ�gm-�O'�^���>�      �   r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      �   L   x�310�p�sWp5U���4�4200�46255�44�7��7202Q0��24�20�truqu*!cC�=... [�      �     x���K��0��)r����"'���#�S��"�2A��2��zM���֕u������-���>�����W�g�D�����{������w�m�5���5���X�6w8ĺ����!�]��іY�4Ī�����-a�`}��k�6v�������netˎ�����a����6�vB?���8t����v/Xۖe���gvB?������Џe(jb���>���	��	ֲ̑ef����Q�E�>+�5XTĎ,�`�'aߎ,�`g�"�,�`�l�LY��rwP�,�`i�imeY��H���e�b<s�A�|��;�F�Ȳ@��kh8yG�%��VX�#�Yv��W{dY"�ʝN�#�Y����e�,�<4��,KdY���W��J�C�𐯎����hdC"��)V6�������UȆ��6�v�*dC�rֶ�dC!������p�jɆB6�`w�	�f�l�ᵤX!�Ƭ�b��Rl<�n�+����d,gjɱF��} ����P�����$�X�?����z�QP{      �   �   x�=�=
�@��S�ffw���"�����E:Al������0��M�F"����,������.�Ц�Y��oS�|H�v�6 �<|�w3��j.C�:9"D���ъ��V&76��H��c:�8�/�/.����![Y��N�I��z�����#آ�����_-�      �      x������ � �      �   S   x�%�;� E�zfl ������0Z���p��0����:\����y�ϾR��.!��2 �!,��N9�-��j��)�>�T��]D      �      x�3���p�2�u����� '/�      �   D   x�364�46255�4200  �����d���Z(ZXY�����Zr��q��qqq ��R      �   �  x�5�Ar�0ѵ8�HH�]|�s�~fu���]e�����֏��v�?�v}?�\r��K��%z���3���\Rޟ�����r�����'��M}��$ �i��ˑs�?��h�\���g��͹�r瞛�7���sE�]�i�]jw����@�]��e9����E��.��e��&�,��2��/��]�f����+ŏ;�Y�1d�2k-�h�m���T�����~��|���u��I@Wn�=7ɑ�$�����1mM'���K�H�L�,4�Ҕ6�M�m��.�u2�tH��1u���ii�i�i�ifY˿0iS��65�iJ�ڦ��i�a�)mj�ڦ�9!MiS��65��Ҧ��m�4�L�H�L�L��f�u�Y�Y�Y�Yf�2�tN��95M�IS��6�M͜<�9�sj��Ωi�P,�Ҧ��mj�<����mj��&�CS��6�MM�D�Ah&���}1IK��)����Q�$%II����{GQ��$%y�"���$����q�o��      �   �   x�5�ۭ�0�+�2�����+9�Q�d���BW����A���Q�����*�R(��K^2�@d�]V�-R�U]�7���cYY��zFU�G�\��S�.jK���µ�z=f��{�U�GypW��䪾q���o�aѪ�Jp��b��2a1�s�?���~��Ҽݥ�~���,>#      �   �   x�3���x�km��\����p��dNCNG��0W�?.#Έ҇����T`3� ��<�d���0#�/�W�{�{1��!��pKA68g<ܽ</U�LMv�ᅨ4��ُ)gd ӗ���PV��"���� Y�g�      �      x������ � �      �   �  x����j1��:�����ko�M�d]H�!)�`R��ƅ��>AO=��s�!�7�HRRV9ߌ��������K���7?���|�W���ֳ]��PQ����D�F�8D�:T�+�Jr�
Ko��ϫ��^�	�g���)���$�t� �L����/{�PD}�AY�_�(��l���.Th�J�f��!)V���-�s�4�
*r�7�9�_\� �՚Bn���q=�������bZ`3QQԹ]A�?]-z	z��A�}�y��n/�~�]��rO���_���|��R���X(�!O��h������E|���J��x6�����F�ֽ�"!�3t|�!/O�wv C*%�
�2.���v��׿�!T����tObB�=%+0ʆh�c����Ǡ"�.v�r|��Ғя3O'�'��A��
��u�y�_6��|�\.6��߻E����WH]�ԢV��)&3��ST�Q`��3�G�l�Y�"R�OMȋ�Z��'�"9��v�tW�@h�b"$K��%�#����I2Eɧ����ѹn�)�xhK�4���nb�[lW��w���`�pg8��ֲ`�˩
N��/x�Mbc^�_��Ӹ�.����p��'������������Z&�m���p��\�G<�$}P�����      �      x�3�42�4�2�44RƜ���\1z\\\ *�%      �   s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      �   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����     