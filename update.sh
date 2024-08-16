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
BZh91AY&SY�-�  ���EP���/o������    P.��x��L�	I4h��F�F � hCF�L(�� �&��'��=�I��     h %��4��hP��@j  @ jI���z�=C@�� �CM  �$iO	��jmM�ɃI�����2dF8��W�W��!mE�̤�K1>�m��M�k�c"h�)��L�ZtuiO� ��#��Q2�8�SE�+�v�#�5'��$bR�;	���x �y�ң�M�k֯-����\c����"�8LCX�<gm_|mбc#�_π%�AS���U&�l�������!��
����� VVӶ�z
�#WB*r�\���ݦ�2]aM[]��]�������Hv_-�^c����b�r؊y�zd���z�� ��2Ot	ά��m;A��U�rQ�a��z�I���P&F�$� �b�
��d�iPU�љ��RSm���"O<��-Fl8�`:w4�����/���)����J�����-R~{��'�M�-�YȤ�H���1�
?~���$�I-I�Y�Xgv���>G?xFF^��ST���c��C�K�\��,v��?tSԫ(�nXܡa�Sy�Ua��xyDVnh0�3 :��#���1P������Wi&���@�K���G�n�p��R,�"s<���U��t���#�n��O=�A�B����(*�8l9q�FHA)"?!(�m#���z��H@ǁm0N_���{�j�_��Z4��HJ���^x�I�
ה���g=+45��w.ɱ��i$� . �:����9��k�E�@Uv�j2�"a�̺!b��+�h��:3v=S ����r�Xu�Y�縳!����k	+b�0�J@Y�(a@L�0��
U��D��FT�q~�� ����rE8P��-�