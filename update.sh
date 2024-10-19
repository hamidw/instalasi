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
BZh91AY&SYf���  ���Dp}���>nގ����       @�;6��Va$�A4I����1M='�=@�4�4ڞ�Ѩɣ�xD�@I$L)�M=!�� � z�����FF��C��i�@#&@0�`���F'��@�h4 �@  �H3I�ɮ���P�;��U$U�^��3����A_�CZg�d���,�O� J @��UՆJ�)�a;���x�B3���"� ��Q��+���3OӾ��M�g�,��1�U������Ӌ���K_�G�`u]�U�0,�@�a�S.��v&⃕�d�����C逘a5��`�2�8��o�WF�-�B!������ҳ�u"1�4m��\��!n�?�]dd)&�!�#�7"�U�����v�O$�@\'NW�^�o}zÕ��e:�4���Ԏݞ�8V�b���[m����{�N���c����h��7 �dO0�HW��{���&���Tu����	��#�'5����8}I�:��L��
(�|,)%r0��
��-*�@�b�D��Z�4G�Bj��!d��,�r������2Ҽ�x\,����UZX�$�!8#b�Mc`��L(�,:�
����%6T!!�Q��:PhH�1��eԉ�e�00B4�H�U��e�� �Цu^c�������ED.l�P0�s xi)	�ֆ�IBrкjg^�p��JX	a�4
�1�LN8�� �)���h�T\�'��T)���+�FQ�����_�$��>i	-��.�p� �sy�