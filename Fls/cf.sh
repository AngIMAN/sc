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
BZh91AY&SYd [9  ���0 @}������~����P�P�Q$�2{T11=@i�a4��C!�=#L�CC�M#C!�� �� ���FF��C��i�@#&@0�`9�ё����42h��ɐ �&D�h #�=S���bz&�������z��e$ ;ŝ�X��lt~n��͝�&0�}�Z$��%�($���c��pw���	�����R�G
�\���B�5��0�%���������'�O��_G筫�a~��A���ȒA��c�BѺD� �^g�mB����s��T(<��*N��x�76�����|+pa�[�|$?"�S"�V"� n�8�*��t҇�,����$q�\��J�S�N/Sq�i��q�Ђozxj������f)����{+g�He�Uc�߽��ۘ���_�X.�xL��lO,[6� <z��-�C��GؖX
�F��E!"�"q�Q�_f�^�Q(Z��-��k�ݰxx���ۉ����e񅩱7�i�x�	�Y��,�v�i��ٔ�è��؈T��t۵Y"g.�쓤��!��|�c�L�]GwW��Nk.'��L+7�BN��`����'R���7Ƌ!���H}����T��."Ɇ)]��D��Ĝ�s�,Ԋ �2ʹ����ַݾ���\�@b������/�%�x�$F�\����>��_ 9�E��jZ�ु��w�fs&��0x��`[�C3��1�/CH��C�N	DA&�%V+Ѷ�&8N�E���e\��2Ns���{���GW��'bO���h���՝J�F������d���JO1M���(q���*\)�������@a�2�!2pC����'T\����Adʭ�8=�$�>eiP́���{RF �����U�����Y_��H�
�g 