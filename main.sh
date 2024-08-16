#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYw��0 ����p	�����������B�� �   0 @ `,���+l�o/l\m#�Z�o^�}^����v����=}%��S�5
�X���}�{3�����z��kM]eb�֨N�Fr�u�����`i�(��o��Qw�8�h&�M�'��&��4�#AG�f��==(==�=A�Hz��#	�F�FD�OA�<L�F�@ �4 i�SF �"M*~���j��OP     �  M(�
zhMD�4�14�    ���T� �=S�4�L�I�S�
x��ԃ2�S�ɲ��jlQ���	 @&� i4�2��O$z)�=F��I�$=A�m;*!��
G��ze���Ϡ��su�G��b�B��v����zV��.�T]�ɓ+����Ns))Y�>�M�����l��wu~D���k����W3)q��e'��M���8��j
?����x��:��H��J�7���%�ivӼ�ǫ%�L�5��g���ǅ�ma��Q0�V�v����EYF%I�`�Ѣk��	hԝ�xc��ҝ�s���1��j}�㭸�٤~Lc��L��r��`�;2Q]MKIɐk��s�T�����.2��fz�E��,���m*�dL����TZ�`b�%IqR����^�_�~��ɍ�ݐux�W���׽���j�~�J��q��
����,���6�cK�`z��m#6�q�^�T�6)؜�mw�P ����!8m�er��'���B�[�q�ar�w����C����7�O0YL�F��|TՇ$��{�ˎ7��7�K��f��c�*�Y�}������K�ڕ3�jo��\@͋MŖ
4Ҭc����.h@A o��I�E��k�w�O��_]3�m���'cc�0h֫FM�����Y2�p"���X;� ���<��g����7��T�7����7��?Q�BH�����\:%���s���������h�G�k#?Ee�l�F#VPg|"�cx:��8MJ��Ch0WG
@����B�`�1��8�M�;M���cδy���"�~�J��D��tUH�2$�������&�Y�����7c�8�n~�4�K��m%^����W�MʌD�<����-�mS�\Jx�pˡ� }%��Sb�R\f&��&�ty|Mp�N��N��֔P��L�����&h*���2Z������Aϱ	�S,Q̈`\^���Ђ�!�tK2�,��G�HX��`��^m��ſ�}ō~���Hv��c�h�?wG�=�c�
�S�T�HqX!�4CU]S%�����okbAp�m�h9��O�58rU��t�����b�i����N�G^t㦳P��""#2v^l�33�d��R�n��z8���ɂ�y��z<{j�7zQS�K��*l�7yVT|%P�&Ȣ�_w���ݦ�n��*<Mg4%r�9U�ȣ���L4���M%�s�i��@���i*E�
GN�2X0����3�>I�r����Q{�:�+A��3l	O8�����G�-蹊K.��ݒ��������aE�-�.W�䌫O��C�>-�0�J��nX��d�͐^[��}�7ӎ��<\��mϰ�u�_7V�1��[`i�$�:cg�p�n�m����Z'S���'1��ea�+Y���2�	���J��TХO�e��!K�=@U�S{�9�"!F��i�U�J�t��o���0���QT4�XA5�,Z����ذ	=o���	��@>�@����h  d�bԡ��+y�\@�P�6�����$r��a?�/w�lyd�A�;�
f�vD���7ݸ"a����x��Ԅ���\�t쀊� !�N�L����;%����)��Z��[�kX�r��^����dh�m�=�:�&��o!v�p+��V�����-�ͷ�s�ē?H�έ9q���}}:���-�����3�LINtFm�I
��D����>���إ��C$l�Y�;�A"�49��DAS>Jb�a�n����6�V�ӥy�u�����A:�[�=�����΢�r�
�P��X�A1���$����O������rh6�g��^���sX�j`;��G�(��*�.�4H��,�lI�W�����<���g���è��������/�'SRį��U��*����j+���~�4rkt�R��e�TȀ���80孍��lv�O�Z���9Y�aV���^;��v��1I��ۇ�e��jkW;2��=�Y�(,T��~�,Q���
0RACۑ�&Gc/{����}4���N�`*�f�Z�*l�aHyB�$�
1��aYP�����!A��xJj�_S�1S���1\2�C硜ɘ�e���(�S�q�U��W)��ũYYN���7F��>�`fwi;S���x���c�E��A��[H	���[��	�H��`��%�j͆;!�5�EѤ*��M{~|%��o Щn��XB��}����� ��D��1�QTp�����:�<P���O/�?_\ӓz���M��oHR�M7��k�^�m��*��Ae�˓g�ʯ�i:1����O�w��d����ʩB�p�9oמ�<��g��H=� tl�l����{֜�1j�ɹ�|��MW�';h���*H�:����~4����L�w�hx��|ǎ�0����v�v[���"th q
qT"B"Fz��X��S�ۭ�� �v�FMa;ФƑ��9�X�EbL��Fl�ʒY�$HHd$H �3����]l�l �@ƭ6�h�F��ژ(�����$0
}%�3��_�:�UP�&#���8NC��]2r���Ͼ�3�0Q�+n�V���B��]a��D� �vN�v�V�T�&�ī��hhb��m�U��eDB�<Z�/�<�*�)�Ԭ\<�D\���-��}�x�tթ��ȏ��`RT��Vո�[Z�65�c�i��N��B��	�2��-jy�y�^|��=e�80�`wq���=� ��d(���s��A�� �VT"X)�,bm�`�+_BΥ!��-	r8=�E˰�k� �'$���rL���P�B�6���]u���,�^b7�C}c��x�b��"k��$�{fp���lj�}E�^oj d�2D��L�-,��Qb�E,X(~�}�����9R�ް���[��kU��g��(����r*�Fbb7��E�	�#�u�X^X�G7Km��$�Q$�Q��"��I&Lx�E+:�F��}9 ��ܣb��$lĲ8����L�bR1��2�:GXH :ߠb(2��5.����39L��o������`�
S�UhI�zÁ؆"V�$��\Lp�U9�m!%r�@y8u����TiX�=��$H�R����3� ��q��a��e�x�.�l9���1�|	�9����'2�w��W�y��i���b-Ș} �O�ֻWam�5Y|Wv�cC�t�l~���d+)cܐ����&O�!�R�E��ڗ"��	|�
xnl��9��¨��n<�D;vXI1*q�`bG���ԳvA��5?�3�74��@�-�R�"�[�
c�re��F<I�S�A�)�Q�㼟$X�ٌ֝K8E���g������mz����`���k*O�ƻ����0g�g�n0s[��0�t�ɼ��8L�֏�)������xA<zЫ���vv��z�.�L�������� /F�6�|�i����h������^�o_�v
���,Q[�������K��o�!������óa����݇;��n�{M�µ���o���^��o�B@Fp�b^��ʆS|����m��6��]- ��\`[I��*��0�S�����P�D���D�l��E#
�uq"|e�~�$H�aD�(�ځ��AG��k���������/�4CsY��"��0��%�Jp�5r���t�vÚ"], ��o��f�?������;�3o�"�K���/ҡ��'�h�ę����&K;����0ujL�` �gw�"r�7(�]E���BښG�,;��h��)M��7�&��� ��a"N"%=�#<ޒ1h ��,�7/�@'�����T(`�����zU+���S��;����#sIA�<21���9���;nr��4��)Z�X/G�Ʊz5b&;����&a���dH�wRQ�G�m^�?�p�s��=�++w���B6L��q�0ԛyZ4�L��s�A��	Y�kD;&��2��MX����89ME��D%��)|�lc*��1�2�bd�cQ�p7�1~�Z�,{oE�`���C��z
��][9�P��E຋+��O����K�d�v�{.�A�?�빈��;�	�B4C��T�*.��;�-�F�"�f��o@��G�F���c��-`?����̿�4T2?���6i��ٯ��#u�ё߃VJ \�.����y�v)��dB�����H�+� �|
�v6��#ǔq���X����
Z��RgEEM�L��l��`�%�_��Z������z���=��E�6��p�j��M��$pN"g���#Ul�)9iW8*��;A�6!����:Ф��i��&p�6""�K��d!pD�Rr��D$/<`3�"�wt��yx��/989��^�G�gA��+T
���1���r"��c<��b@���"[��h��>>>�C���t˛���T��J���`�}!�<(¨St�����2wW�<�G����=6�BD�EƟ�Q�ɔ���8�0a84����$j-�xOW���B ��XT�m�f��R�|�w��$Yz�4}7o+�IP$1��6�h&F��++{F4�R�t�QI�����0x �UPz������C���7l07�+Vd��xGJ�ClJ�ȗ$Vgݫy�մi�b]p%��+�����H��L�$05*Aa�S�}5wb�R("�$��f!�cB�xȳ��*�[�ׄ4��%8��Inܯ]����&���/^+f'h�7i�a!rO�$���M��  g Fq+UC��2��m^p� ��ɖ�.M�4"�����T��6y�6�L��@�*��&�)����N@[V���=)8����$b@�8��B��E�;@�"@aZ0m$�0/G$*q8qV����V+q>�;0P����[��Ff���lCd�\�;���S��U��GJ1�,D"� ������m=9 R�S��x撇
sL$-�x��ו#H�N۾wK:��[핉����0�	�@��K�fz�ۄ
����T~ �d�"�\Vذ���f�Q�B*�JC ��`;�9נY��"��&h� �T����`eQ(��Bm��I���9���b$(�z��,J_���'+eL��9�kb�14nS40*tJ�.�� wh�e�\ɡ��������'�+��i* �8�&�n�l����PjA`������pB��A&\���P�gy"
�S��$,RCH�H����PV��M��PR�,�(�0�����AC٠��P 1ka��2��c0+���������4��ߛ$/�@�;���`\��Y��a`X��X vܦ�I����KN#V�33���q���!\xEF�6�P&������[��}��µi^�hH�{�
��|WW��y�4��q���عm�R��o>�*�8�1�4��&4,&Z�Mj�
X%�����N�mV%�iY|7PW���0@͟��6�4d^��qp�!�!����ү�Q(�B��ӆu�tg�H�m��0�v��[N����w>�i�@X�~�C,L�Y����{f!5܄� (���AsP;�r�f=p��X��_��4�cI�� ���I��y{fb7�)���"i �����͞C aSW9�pj:I�M�T���C�I$P$]ѨK2�jܵL����(����W�2vQ7��j�����[��9�#pb͌;�K�-�iX��-E�D��=�����|E��,1�%Y�Â�Ri9�4���.3��6�
g���p'� �}����$<� �1b��{%�`�EЪ)
�E%(�����qpވD���0�B���58��I<p�`���W2����%�$
�}	p� �-!�`9I��������ؿ�|��oH'��N�d���9�TQc��C{����*���ʳ^u�j�J�/�m�-R.h��h��7tB�{-6�o7$|���P[�	���-�-7k)�p�E(����d�+�V�UA��H�`��M�9�S�"j^\4���j@p���F�������8��p1�"+mC7���]�F�،�D�yIּ,�0�.n%��j6=�.@�+5�.W�����*UV�=3bf�	B%'wOg�hOX�*�!Q
�T!,�B�T]Ĳ �h��W�~HmM���;w4�@��դ�3������f`�=``b����P�b�G����l�P_���	�@�YJX1�������!��#�qAqA毪"��+��Y3����L�����D�b�H1�`��A�+��Q��ϨG�jhl�bP��46����UUU_%��	:Ȃ�M��,rt�./_z�q��l"�dv<�m�1�.;Np��e��0ѐ�ҫ,�{�$���IX�
b"H$�$��K�O�Y�Z��';r�&Q�Pk����\�M"k�Jg���������.<��$_�Aj�����F����vTk ��!n-\5��Z�`I�[�:_h��*(sV�̸hb9�ߐLEN� �|�CO7l�	!��(�aH�\�;�QHN�ha��o�J���l�N��c���M�RL�jna�0�z���ͤ������x������(x�J���_	��PQ̘P�)�4�"48�]a�^Ԍ3^��p�A6��vӕq�L�%�GI��d"a�Y$]�<' �h�W�Cl� t�Y E���[�3E[�G����e��	�_��� �a6�L���?�}�k��4�,t��6k!�@�ޥ=��f�7<�pX(HcLC��p����)9V�M*�v���71rlCU�R75[�gq��o��b �h'md��4:2 	��zra�����Y`O��Yi�YPm�+.��ж
��J��C$Q��`XI�l3<�z���ɿ��)�(��
���11e�)�t�4����GIg�����xd�!6�k$�e9�ߛ�t��vc�Slc�b�Ɍّ���X�$D%ID�԰�b1M ���D�XA�MP�	~��d�\�d���L�eU�!@0J�.�6IH��lT��tˤ�ǀ�\�4�#�w䈹Y$�P��%,!�vrA�q�s^2�{���
�f�8l�I�S�Jߛ�HD����~7�@��S�D6�rZiX2E08�0)ٝ�Jhc�r6Z�bH�J�.(�Ά��LgɗWj Q�� ���>ل�9�Jp��"�\#�c8)���Ԑt�"�u�E)d��"�����$ʋmD	*�z&to �}=!8��Q��d�UD�Gf&,��'B0a1��$5:{���1�|�D6El�ԉI�:x-�TB� |&�w/~�
����&�7� ��*�"f�"{�V1 a<���D��Jb�S�Ʌ�һS8^b�FҠ��Q�.�� L���惰[�3��Lc@�	y�0Xt�����z��1����}!ok�-�$�9m��=�a'�=��5Ūͨ`��C������%���cIW� :K	\�m�\\LV	�M2�:`� ��@p�A�_oj�D�A�C��7}�K�3>�|��B�`mSG,�_�{�2�-��"B��6�$��
㍯��4_�$��������c`���,��4w���~ em�!�ˁҧ�)�H�hKzG74��q$�䝅D�1�PK�ça£,`���VQV�,Ι�H9}5;�1m3��+u5ͩ�P��+)�&�ȩ�cEX�R�~K$92-,�P�xm���@��(c�%�r7�-J��r2l:�c0|ª�����|޿�p��UX��5sy�Ƣ�}�r�\Z�6y�R���a�
_�ND�.��	\H7��H��
�����3Yc�D�axDx4��Mw�$��޾�/�b7�GX�ba�ĸpkP�	B۸���l�p:�`��E	��	(2J�Dܑ�ZIh�U�2ƋG�s*~_o��~s�Ȟ�8��c�!ք~<>r�4n�J���bu�Azk�^X0LFwP�B�g���d�,ts����i ��P�{f66o	@ksd���R�� ,z��~R�$3!���1BV�e���p���SA���D敹�����[Ch����b����p�l��-��@��Bċ��P�X�����|��U�)�Tp,6=�A��:7�]�����R���R�H�63�n�)��=Y��z&�l+ �J�����gr]$��ǭ	w�����C1��b�u�T��]�����Kl�{*�f#y�`����Nq$DDV#k6��"E8z�����	�4+���.'�KP���p�s,Kd��ZH���0cHm��U"�w�뵤���,Yz}M5�j0�y��Р<7
1a� ���S��S�� 18��Y#]l�.��2(+%���yN��3����4�i�UxD���bbQ����{�b�ȓ�v󛠦afH8��0�i´ΈQ��2w�i�S�9<\����4 �4�lZ{Q�`�N�0 W�2A�؁�J��b8Q�
߂���DN=�d�		��cAN�<��q5�Z)lD�E�I V4F)	�y����@iX/��@��PC��u�J�=LP|�@��R���� �U�2&�m��[b��=r�%Ed��#�G�Nc���j6�U��� �Yʨ<AJ�y��kEA��.��d�$�fgp�K��a蘌9NJЎS尫.	%y�o	�+��u"A�F�cz��1E&13͢΅7tx��S��;��DX �"GDVM�k�J�`~&%a�H��t��	�+�Q�خ��E�hM,���`�c})����$^#ʒ�F���$$j2�*P�Qݎѭ�����@�7N��1�^�l��#����(��;Y�]�%� �P��� =�l�1Xp�ۖ��B*����7FX����yd�f���<TX7	k6KK�;؏�l2��Mƅ$v��֣F�P�L/�Z�����WHMK$;�!U��!�LM��٤�c����\d�쀣����%� �C��>�VJ���MU0���k��s$7{˒b.�*<x�}5����.wot*
xS�ĤA4�c=V6�t0)�l�	��jH2K��䨇�#	��1 ^�G�o�l�}�����Ky�a�F��+҇��$I	>����O��4�"��9�՟�����^Z�l�IJ�uz�62�V���BrV��;���BcEgRK}=����A>�� ����{Ϸj��X����ܑN$�l� 