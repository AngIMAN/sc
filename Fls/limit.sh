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
BZh91AY&SY��I(  =߀ }�##� >���@ݦ�T	J #&&ё��	��T���hz��4h�  FCA�@4� I!'�6���lH�24�Cjz��_�3�S��E�R�y�{'�UR��f�c�a�*�[,�L���p.<������J��p����d1'1�5UU^���;��6���E����8,=��;���O�&��"58}�̝�9=��7�j��=��a+`��-�����3��~`pbc�Wܝbgݘ΃�L��1�2v�UUUx���E�I�	�#EK�x����NѾM����;��c�
�@���(��%��Ǔ�&��+I�&���^q�.;ŉ�%�m���uZ^n�V���w�����V��vk���^3��r�w$S�	i��