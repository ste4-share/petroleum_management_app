PGDMP      8            	    |            postgres    14.13    16.4 E    <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    13754    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            *          0    16873    assignment_type 
   TABLE DATA           3   COPY public.assignment_type (id, name) FROM stdin;
    public          postgres    false    259   ">       $          0    16797    category 
   TABLE DATA           j   COPY public.category (id, header_lv1, header_lv2, header_lv3, type_title, tructhuoc_id, code) FROM stdin;
    public          postgres    false    253   M>       2          0    16945    team 
   TABLE DATA           3   COPY public.team (id, name, team_code) FROM stdin;
    public          postgres    false    267   �?       �          0    16395    nhiemvu 
   TABLE DATA           l   COPY public.nhiemvu (id, ten_nv, chitiet, hm_trenkhong, hm_matdat, createtime, status, team_id) FROM stdin;
    public          postgres    false    210   <@       �          0    16401    chitiet_nhiemvu 
   TABLE DATA           B   COPY public.chitiet_nhiemvu (id, nhiemvu_id, nhiemvu) FROM stdin;
    public          postgres    false    212   �B                 0    16445    nguon_nx 
   TABLE DATA           7   COPY public.nguon_nx (id, ten, createtime) FROM stdin;
    public          postgres    false    225   �C       �          0    16407    dvi_nv 
   TABLE DATA           >   COPY public.dvi_nv (id, dv_id, nv_id, createtime) FROM stdin;
    public          postgres    false    214   �E       6          0    16972    group_title 
   TABLE DATA           A   COPY public.group_title (id, group_name, group_code) FROM stdin;
    public          postgres    false    271   �E                  0    16776 
   inv_report 
   TABLE DATA           s   COPY public.inv_report (id, petroleum_id, quarter_id, inventory_id, report_header, quantity, price_id) FROM stdin;
    public          postgres    false    249   KF       (          0    16850    inv_report_detail 
   TABLE DATA           �   COPY public.inv_report_detail (id, loaixd, soluong, title_lv1, title_lv2, title_lv3, title_lxd_lv1, title_lxd_lv2, title_lxd_lv3, xd_id, title_id, quarter_id) FROM stdin;
    public          postgres    false    257   hF       ,          0    16890    petroleum_type 
   TABLE DATA           @   COPY public.petroleum_type (id, name, type, r_type) FROM stdin;
    public          postgres    false    261   �i                 0    16430    loaixd2 
   TABLE DATA           |   COPY public.loaixd2 (id, maxd, tenxd, chungloai, status, "timestamp", ut, type, r_type, ut2, petroleum_type_id) FROM stdin;
    public          postgres    false    220   )j                 0    16481    quarter 
   TABLE DATA           �   COPY public.quarter (id, name, start_date, end_date, year, status, convey, tdk_sscd, tdk_nvdx, tdk_sum, tck_sum, tck_sscd, tck_nvdx) FROM stdin;
    public          postgres    false    233   �n       .          0    16904 	   inventory 
   TABLE DATA           �   COPY public.inventory (id, tdk_sscd, tdk_nvdx, total, status, tck_sscd, tck_nvdx, petro_id, quarter_id, import_total, export_total, pre_nvdx, pre_sscd) FROM stdin;
    public          postgres    false    263   @o       "          0    16782    ledgers 
   TABLE DATA           m   COPY public.ledgers (id, quarter_id, bill_id, amount, from_date, end_date, status, bill_type_id) FROM stdin;
    public          postgres    false    251   �p                 0    16760 
   loai_phieu 
   TABLE DATA           .   COPY public.loai_phieu (id, type) FROM stdin;
    public          postgres    false    247   �q                 0    16420    tcn 
   TABLE DATA           F   COPY public.tcn (id, name, concert, status, loaiphieu_id) FROM stdin;
    public          postgres    false    218   r                 0    16487    ledger_details 
   TABLE DATA           �  COPY public.ledger_details (dvi, ngay, ma_xd, ten_xd, chung_loai, loai_phieu, so, theo_lenh_so, nhiem_vu, nguoi_nhan_hang, so_xe, chat_luong, phai_xuat, nhiet_do_tt, ty_trong, he_so_vcf, thuc_xuat, don_gia, thanh_tien, so_km, so_gio, dvvc, id, loaixd_id, nguonnx_id, cmt, nguonnx_dvvc_id, sscd, denngay, quarter_id, "timestamp", tcn_id, nhiemvu_id, nvu_tcn_id, nvu_tructhuoc, phuongtien_id, phuongtien_nvu_id, so_phut, tonkhotong_id, tonkho_id, ledger_id, import_unit_id, export_unit_id) FROM stdin;
    public          postgres    false    235   �r                 0    16752 
   ledger_map 
   TABLE DATA           f   COPY public.ledger_map (id, loaixd_id, header_id, soluong, mucgia_id, quarter_id, status) FROM stdin;
    public          postgres    false    245   By       �          0    16413 	   lichsuxnk 
   TABLE DATA           w   COPY public.lichsuxnk (id, ten_xd, loai_phieu, tontruoc, soluong, tonsau, createtime, mucgia, "timestamp") FROM stdin;
    public          postgres    false    216   _y                 0    16437    mucgia 
   TABLE DATA           |   COPY public.mucgia (id, price, amount, quarter_id, item_id, status, "timestamp", asssign_type_id, inventory_id) FROM stdin;
    public          postgres    false    222   }       4          0    16964    nguonnx_title 
   TABLE DATA           K   COPY public.nguonnx_title (id, nguonnx_id, title_id, group_id) FROM stdin;
    public          postgres    false    269   �       	          0    16455    nguonnx_tructhuoc 
   TABLE DATA           I   COPY public.nguonnx_tructhuoc (id, nguonnx_id, tructhuoc_id) FROM stdin;
    public          postgres    false    226   ��                 0    16459    nhiemvu_tcn 
   TABLE DATA           H   COPY public.nhiemvu_tcn (id, nvu_id, tcn_id, phuongtien_id) FROM stdin;
    public          postgres    false    228   Մ       7          0    16986    nxt_reporter 
   TABLE DATA           �   COPY public.nxt_reporter (petro_name, petro_title_lv1, petro_title_lv2, title_lv1, title_lv2, title_lv3, title_lv4, petro_title_lv3, petro_title_lv4, xd_id, quarter_id, quantity) FROM stdin;
    public          postgres    false    272   �                 0    16471 
   phuongtien 
   TABLE DATA           }   COPY public.phuongtien (id, name, type, han_muc, dm_tk, dm_md, dm_xm, quantity, status, "timestamp", nguonnx_id) FROM stdin;
    public          postgres    false    230   �                 0    16477    phuongtien_nhiemvu 
   TABLE DATA           G   COPY public.phuongtien_nhiemvu (id, phuongtien_id, nvu_id) FROM stdin;
    public          postgres    false    231   ��       /          0    16928    price_status 
   TABLE DATA           0   COPY public.price_status (id, name) FROM stdin;
    public          postgres    false    264   �       9          0    16992    titles_category 
   TABLE DATA           ?   COPY public.titles_category (id, title_name, type) FROM stdin;
    public          postgres    false    274   �                 0    16495    tonkho 
   TABLE DATA           t   COPY public.tonkho (id, loai_xd, soluong, mucgia, createtime, status, quarter_id, loaixd_id, mucgia_id) FROM stdin;
    public          postgres    false    238   ݈                 0    16501    tonkho_tong 
   TABLE DATA           �   COPY public.tonkho_tong (id, id_quarter, id_xd, amount, sscd, nvdx, update_numb, note, "timestamp", tck_nvdx, tck_sscd, tck_sum, tdk_sum, tdk_sscd, tdk_nvdx) FROM stdin;
    public          postgres    false    240   ��                 0    16508 	   tructhuoc 
   TABLE DATA           @   COPY public.tructhuoc (id, name, type, "timestamp") FROM stdin;
    public          postgres    false    242   �       &          0    16842    tructhuoc_loaiphieu 
   TABLE DATA           M   COPY public.tructhuoc_loaiphieu (id, tructhuoc_id, loaiphieu_id) FROM stdin;
    public          postgres    false    255   ��       A           0    0    Inventory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Inventory_id_seq"', 664, true);
          public          postgres    false    262            B           0    0    Ledgers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Ledgers_id_seq"', 209, true);
          public          postgres    false    250            C           0    0    assignment_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.assignment_type_id_seq', 2, true);
          public          postgres    false    258            D           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 38, true);
          public          postgres    false    252            E           0    0    chi_tiet_nhiemvu_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.chi_tiet_nhiemvu_id_seq', 57, true);
          public          postgres    false    211            F           0    0    chitiet_nhiemvu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chitiet_nhiemvu_id_seq', 16, true);
          public          postgres    false    213            G           0    0    dvi_nv_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dvi_nv_id_seq', 127, true);
          public          postgres    false    215            H           0    0    group_title_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.group_title_id_seq', 2, true);
          public          postgres    false    270            I           0    0    inv_report_detail_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.inv_report_detail_id_seq', 43406, true);
          public          postgres    false    256            J           0    0    inv_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.inv_report_id_seq', 38359, true);
          public          postgres    false    248            K           0    0    lichsuxnk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lichsuxnk_id_seq', 684, true);
          public          postgres    false    217            L           0    0    loai_nx_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loai_nx_id_seq', 24, true);
          public          postgres    false    219            M           0    0    loai_phieu_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loai_phieu_id_seq', 2, true);
          public          postgres    false    246            N           0    0    loaixd2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.loaixd2_id_seq', 70, true);
          public          postgres    false    221            O           0    0    mucgia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.mucgia_id_seq', 2147, true);
          public          postgres    false    223            P           0    0    myseq    SEQUENCE SET     4   SELECT pg_catalog.setval('public.myseq', 88, true);
          public          postgres    false    224            Q           0    0    nguonnx_loaiphieu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.nguonnx_loaiphieu_id_seq', 20, true);
          public          postgres    false    254            R           0    0    nguonnx_title_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nguonnx_title_id_seq', 41, true);
          public          postgres    false    268            S           0    0    nguonnx_tructhuoc_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.nguonnx_tructhuoc_id_seq', 108, true);
          public          postgres    false    227            T           0    0    nhiemvu_tcn_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nhiemvu_tcn_id_seq', 1, false);
          public          postgres    false    229            U           0    0    petroleum_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.petroleum_type_id_seq', 13, true);
          public          postgres    false    260            V           0    0    phuongtien_nhiemvu_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.phuongtien_nhiemvu_id_seq', 3, true);
          public          postgres    false    232            W           0    0    price_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.price_status_id_seq', 1, false);
          public          postgres    false    265            X           0    0    quarter_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.quarter_id_seq', 20, true);
          public          postgres    false    234            Y           0    0    so_cai_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.so_cai_id_seq', 759, true);
          public          postgres    false    236            Z           0    0    splog_adfarm_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.splog_adfarm_seq', 1, false);
          public          postgres    false    237            [           0    0    team_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.team_id_seq', 5, true);
          public          postgres    false    266            \           0    0    titles_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.titles_category_id_seq', 14, true);
          public          postgres    false    273            ]           0    0    tonkho_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tonkho_id_seq', 813, true);
          public          postgres    false    239            ^           0    0    tonkho_tong_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tonkho_tong_id_seq', 1068, true);
          public          postgres    false    241            _           0    0    tructhuoc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tructhuoc_id_seq', 28, true);
          public          postgres    false    243            `           0    0    vehicels_for_plan_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.vehicels_for_plan_id_seq', 26, true);
          public          postgres    false    244            *      x�3�vv�2��s������� '��      $   G  x��R�n�0��_q_�b�TE��ō���(*DH�gDU�n�Pu��F�#��vV�R���~���{P��Q��
�{^�e����#�g�|I���3�-/��y3��௼��M�r�z�8���A�n3��_;�9�6��5����؝��ɺ ��w�P��i .\OXm \,�ч�-0��t�b���>u,�����z�����qU�P!�T��F����W�n��d��Oc��X
�v�Pk��?�C7�گ��!�6(��׊Y�ϑ]�(r;╆	�1M6x����Ú�g��4�نKLjyb��g��/���~sF���m      2   �   x�3���x�{������;B<B�Z�������C��`j�=��y(�=��Q�������eS����{l}(D���eS��"T���e~%���Ύ~\����@��KB@�x���=... ��9�      �   �  x��U=k�P��~�[p��a;��bh�CYI$~6�d�͐զ�!5���!C�HC���'��-����$���wϻ�Y(>c\�b|Te�E�T�'�it���h������5K���k<��sb������p���0��EL��VG�
�*�W�A$B�a�[�ȪaTe?b�"��&����T��XX�x�ҫ�}xX��ŷ%>,.��%�����7�%8��Utp�_��P{���C�T��F��Х�W� �V�]�6=��6�24����hsk�f�W��	�*���"���r���Z�W�a�0$q1t�������
�I�#�v���� �p�M����5�5���Gtm+`�]�׉q����9\�z�Ћ�Wh��9��-��S�R/	�i���O���W	t_m�`4V��HՈ�܊���\$��:Cv!�3F[�IX�w�X��:)�
){:��tDn�����I	�˔ I�ґ<R�%�m���H��D�G�Q�ЫK�>���$Y�§,egYq9��K��vm�g�f6��A�Uq9�KnG	�/��)�E��t��.1(?
ܗ�J�6������DOiXd�AYBٟ�Y�o��-=��9�������߫��>�G�}�>�^�<yx��߰�PÑ�%�k��Ί�-�oi�ꚦ��_@      �   �   x�e��N�@�뙧�0��8�k�+H4h��X� e�1�	,={�\ccb���X^d�䖽B����2����$mI�+z0�}�!nL�St۴�+�gB�JN!8�]6��P8�%//S�N[mZ'n����2�lG����8��o���4}W�r��^��]Ku�������g���CH�����"��_��4nM���#RH��a���]QV�s"8��W��M��U�NT���23<Q�ߔ���C�=��mp         �  x�]��j�@�ϣ��c{p�]ɒ���P�c������PK`Km�y�^�C="J95������&�4���gg���%L�����"(���}ه28�@���:͑�N�fT��0M>�%��C�C�!����5��5��I�Dέ��U�lq��1уKk���]����__�E��zV��q������l�!��x�W]����V�K5\.���wk~���5������4/2�*Sv\�t�`zt��)nlcX�<����b�N��`l�:Ͱ*ۺxM�2مx/���� "��m�[<s�6�6��.�ˎ~;+�X<"�gǻ�O��}�'��y.���$,iO,N�`Df���Q]��Ґ�y{�3\cfV�8)1��b<8�S�<��z����5���יּK�}�^eH�L�Sjʦ��e_�՚o���"���8�2��.      �      x������ � �      6   R   x�3�LJ�/�<��T�$���@25_!/#����\�2�gII|^�P��_��]k*J�ZZ�P�p��<�����=... H] �             x������ � �      (      x�ŝM�^�u���O�l
�@'�;���H���b+��Ȫb"kI���Yd۠袋�"@�.�z-e�{��>��9��幼��H��>�����^>��(k�у�'�v����wO�:Rb�����ݣ'g��/w?���������_��e���}������?��~����=���Ͼٽ�q��͏�_N�������ӷ��p>�;���>2S[d�-_|q�&�s(���L�Kݿ�{�x��W?�|p�7����f)>����C��e!o?<�=y�z�G?mO E��'ߜ����ݯn\����ɛW�z�`�C��o_�۳��'q6�/y�e��<��k����@�O`���l�/�^:���?�u��v1���7����e)�,-���U�K��Y�r�X�N-�����Rtz��%��3��L%(��]v6[�I*?/9FJOR��d����M�m���w�?��7G7����	�7�/�������=~��dWX�����Jp�_�����j}X�\��J�X��8.b�յn��	r�p��E�*����\+�2�/Ke%��3|=T[���!�/�Jy-h,_-A[k6L�=�ïw�oK��}��ԬW�Gӿ�]�I�4���(5h���'D^�z��ƃ����!�XE5*E] 䥛7O�`:������<ݾVBz,�C*)��?����������c`�>�8\�T>n�l����o褘c?84y�[O�1qc2�>h��$hx�'���~�{6Ͱ����ߏ~3��c���󅧞��/��,a�̦�V��\���2f
?�a��[��ĉ[|Z*bo��cY���o~��[����c�>��}�����1�4�Fv��-:�b���$�����z�%Eyž2"k��y�e\��J���A�E��a�K(����k���yPs�2�r��=n\���{h�߱$�k� �4+���b,�d@V�:�]>;8a��J����C���:�Б��D�%��'r1Q2���ّb�8�~����c���=���p�D��������'e��Mi�b�I�%��D5�I���Ee�I���TF����21��Aqt��î���qZQ��J�W�g�����!DX&4��a��h^)6$�*���jlH���������ǂ�U�����l���q��Z+��w%�H�4*�Jx�&!ߠ�+��8i�/��J���Zf�Vutm$�rj��nQε�q��;�M+�2Du�>�PUǕ���:�yU=\�{��3�A�֢G2�iԡ�qF�8Q���m�(;F�0�95��y
��(8�-c���G�1~y��xZ��+k�g���y��ވ�F�ګ��5��p��;G�ʋ��2���� ��
���'�+�¶ES����'��`?�/�:����S}���&�L��v�=��ɡ���������!t�rQ�_-����K�����h��I���i���
0̕`t�ie�2��
��
ʊel�哧�����uƓ�X�ַ���n���
�	)G�`��`6�]�/O�/�(z��p��s�֊�U�*̩$�Bp!�t~t-�s&�u9�s66&Z@��\{X��t�����H�|:{�H�����	���|&�i���|������|�q(��ywt��ݻqWq������?��g���*n�޼s�{6U�<����_�_/;RE��Z��D�=!�`H6�[{�(u �LRמ'�)�,OA���F��]� �>�,M�n��L> m��!YTH������7��c�����6d�ziqW(�����cC�(K��D��Ǚ
Ұ��!Q�kC�6$�Cr�hD׆dQ��L2��c�-L�I�$�=�`�����;��
�Y)I[A�r1r���2��6�B(Dfc%�y!
�8i9�>r��؎Q��ʧ��+/��!�����R��r�$Ԗ7_��*z������/�a^��\�=�����>}�4Ð���)�K=��B���E�[�8�H����"g�����Q�(�nx�G�^��7��]h/���[��Y�PǸ��o/J�c^��V��Px���t��hŇ;��o��-a]��Ƹ��|�i�����'���:�p��P
����I�0��"���$c�m�FU^z�Ϲd��*/a�鼸�m+/G	���T��p�%�W��v�i�g�լ��QF[w^�r�ΑG��yQ��^ٵ���qV�̘�C?�|�዗�Ϟ����in~ul��n ����b��'z
I�8���~*�RlV��֥�ʫ���n��駒+� nlz���٘G��^�b*N�Ѷ��T�8@�$�]P?�
o������>�=�|��z�K�2�J� ��,#�Ԥ�bo�j2P�>��"!|,��1ea�*m]{Sf��N�7���㧧��~p�����jl�1�DHT�fɆH���/b�4 A,�0�3 9MX� f@bNSy����Hi�"'!Ҫ� �1�f��~6"�-j+	���E'0�����|�WCwN$�MJ��t�HgCC��O��-E��l�����g�=;�I���Ummktn�NU���7����e��i���Τa9)��-�;�&��FZ�\���u]h��iX.�ir���,����F�]��z�i�|��M�}��L�5%�D�&�!�U��#�ӂ��3Q�&g&�3me�&?a�sA`à&{7�3E�#�&�b�3����&C4�����oϟ>�}n\
�-��Pl+�3ك�g� �xy�ˠ�D@j������A/� ��=�eP6������	?����A�E�A{�\e��!2��PVV�k�����!葅�� #�\�|��؝������yy��[��~�8�!�fԑ+������>{��lwz�B��۷4ߝ�څ��>���b������i�(���>@%:+��ׇP���E�U�{�� �A�Jt6R�;UIƉLri�k��N�oa�뾟j�
bE�XiJ�� ʂ3�U�Q��a���>�����L�ATe���d���+��%c~�5�af0�Wä�����_���)��U}gG�] 0�D�A��Ż @�$�q�g&YI㲲M�a�4#e�������AB����h2di8�J�ƠD> �4%GcP����y�����)�%ۭ�ѡ�Çة��*��aj��\%�yI~Ԡ
��GJ��k##ɏT.�t$?jP��w�:_���#�Q������A�$�ѽ������A�,#��������A�,.�����pґ,�A�|@x�H~֠����YEV�����JG�!��� �aL.�t$�p0�Jӑ��������&�F:�E8�\,��H��`�ѭ�OϿ~���^0�����޾��g���o4	͕��r���)#N!Xd,�qS�H��Mxܔ*��i�L���M�ℱ2IT ����V%�W	�mzE��:�ӂ�m��Ĳ&�6Fn�1i-[)����$��ui�䶔Q=�O����M���6�*'�ŏ�gS���r[�8]&�ܖ)�KU���2��v�l4�r[��~�ҡB��m@�~���(<����čL<��&9G���:��,476�p8�%�'�� Y�1t�Qp!�	O:�^d���I?��|p�J�?�+���_Un��i𩤌c����Ń�t6|�!(�#"���
S:)>W^�ҁ���΍@�����j��DoڼM�@5x~�o-���3$�jg���j�	D��Y2V�<KѬv�j�ϓ@t���f��3%�fg�x�j�\	D����p������,�=�6C�K T���Θ@H%e��Ι@�Ń��Κ@�5���Λ@('P�9��++P�;��K	;P�=���n=~���gf��U�ϟ@�r��a�gP �E�Q��9�05|��x%����(�G	B%�� �gR��I`N�ҹ� L���t6%�
;>�|J����8FgT���7:�J���(8�J�Pp`�Ϋ��4��J��H�"�έ��/0��J��l��ί�������/��F��7W	M<��N��vq�O����h�w�x�%��D�1�gX��]����x�%�mF�Ɛ��X��:���t�%��C٘�J�X��Z�4X�    ��,ao;�* Cܣ�,AT&n��Q��J�3�]:�TYd8�K�Y�*k��4KP�a1g	��0�8��,A�%��t�%LCx���gOv�ྶ�_��C,a�B#�Ȼ�$��gI��]�٪�"VSף�y7M�y������v��Z�Ǌ��~k�"��4?�[8��BXvp�D��TU9hZ�)�v��D�2jљEv��C`�e�VA�2ʋ1ՐQd�]GPCp7�|k�q��E���Qa̻��ݽ�}`�๏`B�,<���
�х<����b�	�V̓3��p��;X��6�5�P�(����yd���`ݢsy@B�1��<Ŵ]��F���f���6�{��"t�"�EqvC��V'k7�-2�-s!t�"8�{k��H�E�2��I��߾~��ǒϹ�]�oN��忾�}�p��ͫ�Z�G$��+�ycVP�5�?K�0ek�Ȗ�w!g1W�5η��r�2[s�y��B�,�7[cF���8�y�;�'P���Wg)hs�8u��]���6'�D�_��:��ܚ8�|Q+Vش9[T>���@jkX��_�}�V�CG��P�9_>)�C�ڜ$�/��$��$+,E`�h�E�K)���g��n�=�"���t�A���;��$���F� 6��J:��:��21�o��<�û�@��ztu����$�C����~t�o�����D��P�V
�5�!��1HB��7�\�iHW�����0��
��GE��7�\�H�����3����Wx}�����������|�>y�=�l���N��2��e�SX��e%c��wJ��D�`��NiL�f���z�)�Mòa/����4'��)����x���
��Px��Ԡ���"/��B������W O�3Q"^<Eϴa��x�=>��S�Li�WOy2�`�!^<�\K�����w�>�*�P�z�X��D	Y�!*RQ�BdV0�Q�B.F6�Q�B�<�Q�Bd6BR�B"NHAR����r��ʲ�t?��P��+-�h�r!&0UI2��	�LUR�alaS傏�@��%�`�'<uI@��	�O���Um%�N��}m(�Ngp[1 ?u�웋��S�`�b�O����Fc@~�T5X��Ӥ������&�������&���ڀ�Os@gX���&�A~�)I�0?�Ӕ�c����i�r���@�4%�`�g ~���0�3?�8���ç�<�p�vrvE���ie�E����iU�q�V <��s��
d�5y*>tZ��6O�ON+���偹�i���<#7� nZ(
+6� l��Y���������	M+�.��1fZA�t�E��LWЋQbZA�t%�`�LWP	>^ZA�t��ť�K�/��z��1�cce�w�o�误歹��1A�ܖ�+/�r��	�\��.�BF8z��l��)I��^&I��hJ��WI���M!#
�NB6�l�6u��y�dh�Ԣ-I�4ަ��z�E[�>�؊�t�D[cp�U����dQ�<$=\���)*bΧ�^=W�9J�5_=_�9�5�
��Ɗ�qh!����*�r������h�Uf�.pjh�B��-��d
An��d
A>	�2� H�p�L!� $)zA�dA$!y@�dA&�@�dA���2E ��(;٢d��| S�`���"�����@�d!��1�)YH��2h@��H˒2h:2������*�G���bS�H�Tz���0цd�h�� �H�v���/ђd���z��I��~��.hO2%�e6��Iɔ#$���*�R
�Z�T{4,��R�>��mɔK-��,h^2MJ|�+ha26��=��"eZ�L�Ghg2�p-)�>fR����-�����+y:2H.*��c�Av)�L�O/��R2���/��R*��E0�S:���0�S&��C1CS6M��1CS. F�"��|���C,S5�ࣙ!���vr?��Lge?F4CD�Y��1��t^�LT3D5��<�qMg"�I6Cd�>���{����ݵ�7v�N��۫��E�M]Po�,N�<a?�,Rn��B\>�Y$��L\��H;#Jyz�g�xF���P���*�a#�%�]F�Y��1���$K4�4����(h
�1BBK$4Ey��%��J��m�d��e	X�XÜв-9��-�Ǳ�(_���ӷ���Q�9�eu�5m74f�5�l�{�FVY�m�-�1M��4-w4&����$���FDYH����:���ؐ�h��5M�@Nd����ߚ)��I�2-�6'�>WS�6���tQ�N�������2�¨9v�2��@�Dͱq������ߚ9�����,8���z��f��F�W\?�����>�{.i�3��O��>�w/��������??�==}����;�F�����Ϟ�>:;}���~��Y���/3 ]~V�]�^�����9����Ռm��i��S��yNS�	���T=��i��Uo$j��NG�z{ �vC�lz��݁<]��Y*�X�Рt�Eg�"g=��RnpuΚ���A]�����Q��.���ilK8$�&�Y�(}pH/�-���q>�A��0��2Ł�C*�cG�e��>$���Y��~���?~~����Ow?z~��F^���&��H�-m�@&�H�9{���,����Dk��d��Do��T�щ�,rZ
=
Org�A�ĀO�g����?��=�f��A�M��Qrh�ᐤ�a�,Zd8,� %�kH/Jɤe���ss��Ң�a��)ٴ(qXJx�J>-J,�$;��;7���)��(a���RthQ�V��@�Y�pհ Eo%|5�8<јE	���NteQ"TÎB�,Y�5i50ɏEIYX����=�ff����J�I�aQ�&}�$%��G2`Q���`$�%�0�zEɺ"��|W��K�tE�D(�ݵ����-W��k�a��C��T%_ڭ(��a`��lE)SM4C�V+J�j��0th�������#��|5�8��(�����#���{(ܭlrd�����0�Б���5�股�*���	CG�*J׵����U�> �0td��t]�a��TE�D��Б���qWju��e ��(�fp��T��4=�CeD�th���L���S�Qi��XC�etm�f䗢�I�3@��R��YG���\R�q|u�� d��L��9HE�(�@ڥ=�"[e����9�(�Up/��Eټl�)D>(�fu;�@Q6+d�������;�0�k����g�����'��í� :�(��z@�(��JP���PI3�%�AQӓz9�v:���V<堣�"/5��rV���~���E9�^���B�(ʭ���E��,�q�\Q��	@/��E���R��Q���0���ժ�q���|MxPG,�GQ�zw��`ʡ��������:M��6t_Q���8���+��<�8��yEy���3�]Q���F9F�+�C�a乢|(t8��qE�଼�$!�u�`��(Ȋ�W䵢�Pν�"������((��0��eEA����D+

��C%rXQ�,�ﮩ諢 ��A"tSQAP����
r��>蜢��������瑷]RT0�H��!o�<0e�E��X���
���6�=���P�c���
aލ=4!�-%���7�B�n�H-��8��2�B����jC/
���[��=�P$�:��x��J�p�Fp0�I���$=�@O-`���C�EXF'z��I�����F���X�� �=I�"4?�WDOJ��`��������6�;��hY�m��g��nٙ=!�-�2�%	y�h	���Y"���%�(�|c��p��hy�B�":^t���=�g���m@'�@^4�厳�qě��)J���G�,��_Dj��l=6�$7��~m�zde?���S��"�]H�zw����p�%d����3�?H���Ko3�h�ڵgS�y��{�b��/0������G:�K�G+4�V��qf�J�\]֐#J���n,�U�'�^|�J��Hi[�mX�Iz   Y�׏5�����7�iQ�m�5��:������8t�Px������S��7t�"�"��bCǫ~/b��=5t���"�v������^D��f�xk�E`^��5*�;l�~�q9���4LŘ
���N��v=f*#Nm���dմB��v��inӪ[��C�h�xg��Ԣ��0�i�M�$:�}Y�,�2c��f�Q�޼���<8)d����wc�"��U�]p�w�B�*ڪZ�mÊ��d��"�,S�5�7�iA�E
��h{Ɇ۟[>ΦV�������
ڞh�$=K�9�6,cq,V��D;��>�\A'��2��Z�h���F�,�U��^�fX��9�v&�`���v���6�;ُL��ֲ����eg�p�F�Kʴ�$�(�]���6�����0M�3D{�|c��p��hy�B� �_��iJ�E
z�hoʭ�`
:�hoYz���ڻ$U��C{���
z|hI��\Ag�Cl,��A$��B.d��,h!����6�>9vh�T9\ȧC�I���.�Ρ!-�^��'���n{�BN�b�ohH�u�0亡!-_Đ׆���ɍ�O�}��i��5t���}g�%A��(A�}��8�)A��}W�%r�C��#��HK\[;����HK����q}?�iࣀ?��ݐ��8�����4����b��Zp9_��P�Jf{3�y��-�"&�X�_�{ M�d�k�f����;�
�)0��]���84�b\��GS�w��?�裏����      ,   �   x�U�K�0��]�H�wi�E�S$������JLX�y�=ְ�fd))��-�G��ݺ��r/y-��(���a�z��Kh��0=.��#x8�8rk�[���=�:ҭ��q"G�_ȼS�[����>)�����/V�G         �  x���Mr�F���S�&UP�v���� �1bc�f�$�X�r��L��	r��r��2��"�I�@�c���J�5]��V��F1���-�Bbge9���%��C����KBa3���7J�;����ӳ���L�#�Ӳ�I֔)��d��zDܖD?�c�Z@ո2�]�"�hE�dk�56�z���t�8�&C<Px�M�$ ����l�d��{>L��A������~��3ɛh�6�7��d�7x/7� f�@e���d�(���) �2g4�N���X����< �p����Z�I�5:L= M������4k�/�D��������kH�5���"9�b�5U_��x1�~0n?�x�B��R��b<��\I+Z��Q�����I[�x�	��������Ī�/�a7,�	%Es���x�)�lP"Z.7O�t^�8��hÈ��4�yf(�qh��O�;"N$�r�VP4���&�����(3�:�����v��W��T�'K)92u2d�����!�I����/��ۂ�)����ۛ`~;�0�8̲��w��\/w@G)%t�iE��ku�Ѻ�����}�h��)�|�o�[0�B��Qʳ u��yҹ�oC�	��]|]0�<64����X��Ne_���4�*8l����&�J�$���^�"���!r�Ug�ˇ{�/O��z�UyY�Be��1�e}<�N2�t�P6�?��a�Dʡ�0�n�*adS��z����?�T4o���q����d�l?�I�ˊ/\s�]����j����&��1���&���])j��	kR��q�����@����z�Y�Z�J�ѯ����<��<���[�i��9��$U��u�q����J����K�f�1M7�����C�C��8�AgI�8^Xl��̠>oɠEA�N7��j��Ym�%����m���(���x�r�����N�Y��QOcV0�p�Ҵ�U���m��Q?cBhw�w1]t�:	h~ˊ��L��4G�]�p�;���u�<YmlB%C"�
�;��^����4p�2u�,�̏�R3�L�l��
���Đ��5
��c�r���vr$�iC��k7��t<���L:/@��z"�a�fmUS���`���\����S�!��;!��✢v��饾;?;;�vVb/         r   x�34�,�T0�4202�50"(�X�����,.(��K�P��X�T�	B����Binnj6��`��PM�����K2J�i72 k7��14�k74Bv~yf^	V�c���� %�9I      .   �  x���Mn�0��p���/d�VU7��ֽ�9J,&Ҽ'E2�O{l��l��<����������׸�sJ��.����ig{)e�=���N��p_=r�A#�:g|�!H�CB�=�SZ��B6&�-4_9�xT��A'9$�{�a�-�,����4.-*���UP�������^^��{��f?=�
���	ʸ���p|/$c���`|>���~�P�`�s`vԘqL�6m'L�����u��
SL��B'jGu�a_I��]������[��J�Ϋ���^���Aj%u���~0�a�W��\8v��t����ISkO{�J������*��9������[��7N�]���!���t�&��	~.�E��
�����w3�n�����I�K�      "   �   x���;n�0Dk�.�e�H�>H���#��4��W!�a���T`b�cp b]�X	W�cTx|}~ -��1�(�Ӽ�0W����(D�Q�C1�%'�!+��n�ȇq�������R��#>a�3�1�R�m�93_���8R6�<q�l�L&��X([��<錿�*�����.;�Y	��-^���� �Ըgf"�ܥ[г�E�f*5Av��wh֡ZPgu����mY�_�P�_            x�3���p�2�u����� '/�         �   x�3���x�km��\����p��dNCNG��0WNC.#Έ҇���`�7�2��/�8�(O!�� Y��̀�����^������4P7���R���w/�KGQbS��qx!��-av�Iq�t%g�+��f��ِ3/#�@�$��E�!�`�"c̙WR��"dW�X�PR��bx� �>z�         S  x���;o�F�k�S�	� 9bgvg�ٰc�z�J��Mb� 9�]��'H��@�F� )\Y��|��&��{p�\.�F$�i��#�����?�����_+! (PUO��'��Tuz�������Y(UU�<]�����7����՟��ʿ���;,���Jj�j������P����¹���N�����RԠ[T��F*��UP��o�G�Xx�8������ЊB�q�%8��"cS|V��A��4�q������a*Ap�U��3C��@�B�1jI6�@��f�Y��u}q��B�~fIk%_��� �6�(��!���' w�q�������`�D�V:�b�c~ɠ��Dk��3�e[��*���c����Ӽ��ܼ8\(��.2���i��T}�b0��@&h�͈�9t�4��Q��KV	��gǠ�G�^2��T��h�HB���ƌȘDnN|�D�#
Kd!���H��HRDA*ErJrp�A*E�
h"H�����(�s�X/f)�ǔC"��	�{_�=;:���ÛJ�.Ha�Nrʢ�%�F�Wi6�E�9.���d%��f�t����e}�tu�v���%�9�q
,.��4�,c/ &iT�q�h����2rA����#㭔���"�}�(����G������Ŭ���Z`��ܩ>g�f�ƪ��S,�_]^�{����⨾���b ���8ҕ4p��E��Ұ��gH�J"3�8\f)X�=N0k��`T-wWW�~y~�۲v��i"���0i�d�WN�����	����S�K���9 ��Y�*ł��zt��]��W���7��F����������.����#�Y�-Ae��` �z�>��ڂR��)JS4�d���Y�6:ࠗ��B��Q"J�Rg�R>�L'-���l��3��x\� S�}s����3A$�:0�q&2���&���'B���ق&��3L]����m"�F��#�2�!0$�K����0�1��<�����w�	�!�|�#��i����+�,B���2tv3���4(݋������N� t�����PnA��~�^������[c]�yN'�$hilx���Y]����??>g"�2�;&qf�F�w���
�,b����ienӔ��{��4=Go��;gp,v|���f�d+��:�~�=�y�ɔ�M4��m~��������!%Z)e��o:@���� oZ��IL�8�5�v�lJ��i�Ͷ���$��B-�w�,i^I%8��D�(%b�t)"EB3."�{B�������`�a�I[qdlzl���J��fSD��~�p#Ѕ��;;H� MA���,�`���Z�A�ӳ ��vO1��,/#O'��dq#5)8-7u6�#;�Y����s6e8�n�h0�M;Gi"qK��gJ��-!Jq���%��0�#cO����4*1�� �ȸn�,6��yD��`.�4��5�y��8m�x3���}�%g�
ZB��4�2]p6��ѡ ��U��4��>:���L� n�)~ŏ��ˇ����I1;%�07���AtE"n{46�� �&`��Y\7�.e!���<l�nO�7            x������ � �      �   �  x�����I�㞧��N�iU�O���hY����`�.=!D��</@DʽȽ	.w�NwU���j�T��lvU"ޞn���<����0�<=� ؟�<<�p� 4D��|��0�1�@s�	�A�!Q����û�a�C�a�ˠ��1�!qߎ����׿B�9�@��@*� �����_ߌwW���QcȤ�+��?�N��|'��x��g����1u�8)E�lLt����1�t���aZ��tfe
�u���mO���*�����'T�v��:]�z�f��Ε�c
Eg�2��$.:=�r����L0�/�����m<�>]�Θ�K-3c��$�{1:���k��@,eB>ˤ��HsLS&F%c�s�#�Bj��� l��j���#�Z��;����4��������������{5F�xM���.5�Ƣڱ��s%�W�Tx�`�0�{c�"D�g*1��߭+Ig�IYm�5{���^��0���$�O�6_gI�F����1�"0�������GR���,3;Fp�t�rKb�n��M9;��Đڔq��Nk�[\F�/s�Ct�d�R��6�;��	��ζY5�N���	%�.i�h6���Un}i��1M)D�fD����E��ޮ�g�)��Z�]�..Y��q�ҊVH
3��8�-r���7-un�ʑ����2�PnZiG�;쳋P>��Y��͏��F\��}�y[�
�0�0q�~iM�.��U��ϰzX`�g.=����&n�3�&L뎬@{����ZX��>Y[G��W`NQJ���P��ɺ���»��pa���v�j��-����)�#.�L|b�~b�Z|�cث�/���?�E��U����lt���e��nd���d=��Иب\�ٛ	C�[�m?� �A������Ƀ��QC��L.��|�{:?�Xb         �  x���;�$7��S��_�X�#Àء��棪k ���Y˯�ү�����0N�������ǿ��篿��#�����/���A���?:�'6h���q���� +*� ���8�APT��@+�@i9t'�7�cFA��@a�@�0�пA�D�X㹈��{��t����r'��*�zES4rP#�Ț�s�"��*�FAP�q(�9`d���)$a�	� L�9�VAVn��X�$l)��c�N��$F�d���&r�9a#Ȋ fI9ac��^2Pk�
np��Ȓ���.��"���9N5����"+6���$l,R+�dnp��Ȓ �s��*��b�8Fx���*��,)� �����0!@���VI��̈́���Ȣ�0u�j��p��Ȓ0ç���Ȣ�02{���,	8!*	�,��^rTLr��I��zH�F���I��$79�h�$`��I�h�:X"^�<79�h�$��B��&�:Y��3"79Y5Yz�,�IX5����V��l������	]r+�J���5�ޤ��d�dM�qVIru�ϙrp��U�5������J���5������d�dI0�:%��$��eͨ�M��\�H�$thQ5���d��9%$�nr}#Ɋ�m���$l4Y�JQ��-�oY�g��j>�!�}`7���c�f6����k7r���F�%�L6�)	���7iv'�d���ʱ$�9C.CV9J�o����7V9�N�N��F)�M`��y
�oc�cM�2��L�*H)��*��2#���*�& p�m��*R
�F0(v�$k�5��NI�H��7A;ڹ�os#Ɋ`�<%��$�͋��͍$K�mBT6�,N���3����dE��jvI�h��8&�Ѓ��͍&K���:a����dF�����d0��L!�${�q�#{zq��U�5���Va�d�<N��pIq��U�5��yXTVI���:��/�&��$k�w�$����u#��MNWIք�OipVI���擤���*�0 [��I�H��A~9���m$Y$�f6��<n��y�9a#ɒ����I�H��	3]��6�,	f�q,���d�q���GGlYF�\� lYy�6wgρ���dI �W�$����))�;t�8��mj�_�#� �$'Z��V�}�h� RIo��7A*�i���!3^�4}M} L۠v8���M�Gc�>����xiN�+���Δ�":�5m0Q���'�~�1����H�f%��UKZZ9�8��;�s�>�p��胦����߶"ީg��3�:����������/\�
�9��x�5��d<�=0�>�cd��.����C�:j�~Ҙ5��υ�]*�4��$L��k�_�A�x˞�[�|f�?�Wm�nק|����0����C���x1�k+`�����<�0���Ɉ�n��>�g����ϳ��=��2z���Bpg����g�N�������֑GP��p�ps)�.\����oG��9���o�QLC���b�3|<����Xz�X:S�eo�=?z˗�̝C6�A��Џ� |�ջ�}�ɖa��x?u����j�9���.!P�w*<���!�0�|Ǐ[x��y/����N��a'�7W<�����m�橹�_>��Y��a��~-v/w��b���u�ߐ_+�8��x
�<1������(VW|��W˨UL~b�VSԊg8"?e�s�h3�j6^�ß �*����Y,K��&@�/��6����ؚc�i����g�z�����{�3�E���u�a������Bu�s      4   �   x�5�� C��a*rq��������<��ab��t_H�af2a��0�SN���|K�29|v���k�����+����C��^J�+:���Ȧ�lJ즉�D��Ȱsg�}&ԉ�U���N��@jc"��(�upcvh�/���~D���1M      	      x������ � �            x������ � �      7      x������ � �         �  x����j1��:�����ko�M�d]H�!)�`R��ƅ��>AO=��s�!�7�HRRV9ߌ��������K���7?���|�W���ֳ]��PQ����D�F�8D�:T�+�Jr�
Ko��ϫ��^�	�g���)���$�t� �L����/{�PD}�AY�_�(��l���.Th�J�f��!)V���-�s�4�
*r�7�9�_\� �՚Bn���q=�������bZ`3QQԹ]A�?]-z	z��A�}�y��n/�~�]��rO���_���|��R���X(�!O��h������E|���J��x6�����F�ֽ�"!�3t|�!/O�wv C*%�
�2.���v��׿�!T����tObB�=%+0ʆh�c����Ǡ"�.v�r|��Ғя3O'�'��A��
��u�y�_6��|�\.6��߻E����WH]�ԢV��)&3��ST�Q`��3�G�l�Y�"R�OMȋ�Z��'�"9��v�tW�@h�b"$K��%�#����I2Eɧ����ѹn�)�xhK�4���nb�[lW��w���`�pg8��ֲ`�˩
N��/x�Mbc^�_��Ӹ�.����p��'������������Z&�m���p��\�G<�$}P�����            x�3�42�4�2�44RƜ���\1z\\\ *�%      /      x������ � �      9   �   x�-�;
�@�zr�9��y�jM
A�X�ѨIwU��g���!)׋�M�Ymv������k���oX8K���T�b�d��/��H��,
�9��~�4v!�Ļ���c�j�V܎��Wq���j��z�}���0��sG`� (��o^,�f�/�K�u�Z�ZX�gFmկߴa2q=�B��?�f$Q�0�/e9UM            x������ � �            x������ � �         s  x����J#A�s�S�l����>��`�h�L��]&�>�o~ �����7�GA6�ea���������d޼,e]��'9-*���!�����j���t�K�IcrN!S(0°h���P���:$��e���i���ʙ�apx2,N�_�cELQGA�Y�����I'��`�da�nnʮ���ލB9/��V;�e�P��湜�V7���O��ѓ �/�m���䤃���@?�n*W�׹�y�~^~��B�6���C���R�j��4���Jv7R�:M��<#[�{�������S�U�tָd�b�QAF��v.��[^���S#J��S2yrDm�0�������66����pp��G+!�	�1      &   V   x����0ߢ�L��%�בՇ��dHU�����z�id,�V1�����:̤�<	�N�ڇ��e�K���M����&N�q_�����     