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
BZh91AY&SY��:z ��up�����������r��  �0 `,]`�}ŝ�5ϯ^��g�.��m���Ww������G��J�7�g�}�j��<�Ք���M�e�E����um����=u�ҭ�q�'n�q�g��x���]�:m�]@�$����^��ل����O�M�i��&�L4�O�7����Q��ML�i��S@ �hКz� � 44��z�P  )�� R~��ɪx�?S��H�A�=A�4�S��h @  $ԉ1�d&�Гb����ڙS=H1��   J4ѐL����e=#�24�=C�D�@���� 4 i��	2@��&��joM@jd��2F�@@ 2'3��U
�ڤ��#H(�0�z�����=v�?�rx���=GWu�{ՙ���{P7�+�[�ś*�z'��zx�Y�N��z<
�^g+8+%x"��Es��?Hɩj��cp�K(���Q.��*-�u�9�=���k�6��ֲ 6ģX*���"�,�������TQ.t~աJ�.�)�e�i��3+	m�)i;�z���W�tw� ��|���^��Ҭ�ޖw���9�+^��.6U�{*�tu��L�_��d(�"*�PS��v}�6����:�L߇s�7*N�a�tY�$B�o�z��u��]{	�𹽛��b����"ay@2��㱼�p�f��L�V�����Vg���r Ul�9TK
M�;�1]�q�E�P�c(�����Ir<f�#��rQtA�&b��,��{�E�=ov�{L��\�b�Y�J6�ɒ�Ӥ�:��#��:�>V�絬K=��3e�R�Ǯs�>��'�t��\U���e�Mc[i��5q�	��TR�(6��&J��A�:�;���ƕ�n��MD��b�$�2� �Y�����˕�p� v�<o�u��ԯoǱ۷�w_l�e�q��<�v67Jׇ6lx�.{��)JU�8Ĳ/�~�"�q8˩�	�(ﲯ��h�O�B3uQ��is�![ .7e���:�`^̦�֎����rK/ݐ��öz^Z,	�"D�d��I���dW��a����vZ#z����d�K���=���-��K#�~�Q.ڨ��e�խi6�^���Yv����a�G�O���Z��V�N�GNTaN%=�b�x1u�C�$��ղ�nw�a�^���c���g[<� ��A���X�g�F�S��[��9��^���["��j�^�W�=@�_��"���������$�UU�Eɮm)U�:��M1�2�K"F"��<H���y�t���{F���.hc�y��R`f@�JJ���Է t�X�����
o�5f�c��JO�)\'�ں^����&�8v9y���}��uo����i����yػQq32@����o��� ���N�����i-�J�F"	��n��n����6�pχ]wb!�>�L��b%먩�"o����ʡ�M�E��5�.j�^�.��#�3JTl	��'b��8�صܹ�%�[�P;��c[8�t�)���$�|�`�^N��=�����j�#����d!��Y�	m���ư.�.\�'�f�d�yw�M�h��W]�	��wK�H�5Q�s���"h�K�r��ӵ��
��Zp��:k�`�M��@��J$s�w"��:�4�e��K���J�%f;[Y��. ���M������8:�9;���[��v���ND�N#l�����B�nB��1o�=l
fV��I-�[����l8>�v'�Kؽ� y���m�3��t���IܵK5�2X���_�3��uquP'���7N�?#y��A�փ��A;�+ΠuA
Hdh��u!�@�&�C�[�xaۍ�X�j�5���L���_b4���˛�Љ��>�
ٗ��f:"��+��%���&���@>�rbR�R�`v.s��'T�ٷ��U3C'e����~���"D��Rz�	W\o���v����ђ���3@6��e�6�l��å�sd,��4��|���u�n���,[z�.iT]^oG�4�α�H��
�;n��q֐��.v�2~=ڔ����ܷ�ԃ��Dg�S�b�OL��J)��,A��>2Pp˪|H�;���K��Ƙ	�<�����
L��R�-�}Y$���!�UW�#��5���7}��O��>�'����BR*/��NZ����fg���gHu6��k�Oi��^}O���`��t��WFQnʏ��'���C^NK;�RF�ؔ�W������c`XNL����Pr�}�$��Rw[��~m:nI,ҹ��]���{�+�c�Nt[��i~ǽ�r��2wC� *I@I�E���j����=�q�R���fR�V�_$��0B�%$����`����~B�v{Euc�	�,��PPY	UA)8�Û���M��h�6eT��P��/�%\X4�U����S.�6�1���HJ�M�k�����>�rs��>�?A�1<|�D�@CL`����m\�"AJB�.����P�y��n�Y(/H����{�&}>��y�=�� -�+ZFW^�b*[����RQ`���1�I~<�۵q�+��g��ܱ/�c��ݢ�;;�m�l�wP�`�w�ƹ��_k���o�}(��ƈI_)�0șg�Gz:%����1�Q
>��>�xb�zO���	`~ ����*�5Js2Z��a��81({G�%�5ؼ0^Ӯ���.��x�d����9�%�Vx�Dj}�NR8�Bש�V|�cu�)i�~R��ar�b<�mH�0Kn7m��^/��W>��z�d�THQeT��I۷�,��� �&ҷ��`4���R#c�j�C��g$2��[�K+���[��8M'�)���cI��̴��@��8��B����m��k6�KR�r��Q�d�Y��ݫ��!D;Q�d-�A�ŧ�0�-�
#�8��P��̕S��]�L���Q|mH~y�5���Z�7ar��I�(m�yZ��׷¥�āo7�jx�a^�Zؖ� z�Nꖓ�AP�q�d%�sAԯ��3�����D�6��u�*��B!Ǽ��n|4����?�)����
D�6."�Ǔ/������w�����wU���1&���^;�NY���Ag�0�U!D�`]$�U$)PPYR6�C`6��V0a�?d������7��ǒ,�0�!ݚ�C�Nj $^�;#���2�h�x�8M�w(��k �]$��S��$:k�,���L��^�����dG2H��Jn+[>MC�p����4�&E��G�0���e�q�h�(ϐ�Ɏ�5-���쳔�Z	������/Ͷ��s��h��dZ�i�E*0:,7Z��(�.W�>ʂ��>Z͚��]'#�*ɀ�dq��a�]š���
<K�@��|���=��2ɽ`c����f����BPl�#��51�K� �r��,�=(����;��|KB�# �pI��l]]����8�*��GB}r�_'?�� �W 4!
���{����+� ^7Mz�u�iH�%|vwh�;��u��G�"{�*�G����=>t}�2gI��2�
"���sa<P/Ѳ6[�Ɔ�����)��%�d������l�l��]%���l6�!Ԩ̷��I�û�I8pؔ<芗
?B��ɢ���.M9�f�&9��vFJ]��h�������\������Vf�K���O��ג�J�R1	L��� ��	�����\֫��BK�� d����&H�
��|_RUgk�э�w����:���/�ӧ��_����u��������z(X�?tj�4�V�{I�ay��l������|��r�v�K7�^���t���8{��N�=y��K𬀬�J�P�=���!%�{��L��I��9��/j8�OW޵�p��j9<�A�%A'̲�-��<=ۦ������;�Gk=�K�鈳p�KN�Epe"Gֿ���p<��׹{��e�W|�e��uKn����M����8���:��jM2�in�g3�=�����v}��=�"���@rj{08�<<|�$�x��af�{}#5�B�돨����%8Jg��zz� &�y���#�x��Q�S`�1m�"�fEY\&���2��M��I�Y��-d����|Ԉ�C���
�>�vrz��J4����:��x7�Eoh߈���&s?G�)����ddo'5om�^�㣇U��!��{�3o*^���9?����<z&������.�z�e	+�t�u�r-(|ݾ�D~��Ɉ�(6R|<�6�&��S�d�yA�NNe�LRo��PqR��к�!�o���i�$t�+��k�G�<�!�;��&�,�M8�(�r�)�ʀU$g�+&g!��~_��8�XB$h�z4,�F�f���(n���d��Ж������@��=T16��=��U03cB�S�*��8|�oaFL�X�t���ڟ���N��w{O#ٮ����nĵ�D:���u�Pv��7��C����ƯVd�]|���	U��/�8�7�Jx�ssR��;�S���iq �H� D5~�ǳ��UCQ$q6�>ET�d�r�%�kmSM�Xe\�Jۄ5@U�8�N�eNF�Ӕ�o` � 8��~<@cD��Sr�59��j,<�J>��DUR"bH���4	|�6 z�n��rr0�p�{<������m|�^\�z��L�L$�;��5ȌVp�#t7|C�W���_O��B�!�z	�$3-�|���9TU�{j����T�03B4E��F��W[_�aV�"G��*G����4�(�%�Ԃ������y�A䣢e�ҳ�3L�C
�(�� dK	P��|���q'��p�p\������O�HFtP��
��;<��a'���b90�SĪ��G��t�<�ޒ�~�5���:��M�9�"�$0�y�du�%L.���rK��u�Ɗ�����x�&�zϽ�2�9X�)���$'*b��(�ȃl�R�Q)
�$��J �F�WM�o�L�Z�0"D��4��������UJ������������(��v�1u!)�-F�rj5��� jɁ������GH�5P\YI��M�7�������"��������V���~��ww��bQG2X �GP���]u�!n(��cm$ �X0:6�)p&��vo�K>��A4���]�nhhf�%(ғ�4;�e����O��O`j��/��\X�$��8�e�7�Dpt���p#G�H�gܣG�M'9xO!�)pBPoR�jE9FFr6n�x���D�7�I�skv�3��j�ߜ�$�jH"$�1�da��HTjF\x���X�`J�����I�N�n�;�	�:6:��ƕ���D���T�(�_�CV2��v�s%l+�5bgH�
v:'mP���N���.�AXS�l�C�H+SX�QV伐���C�8b��OF��^��˾%��	�4 ��nb2*�y��y�]�1�\MD9<.8)��j#��/�!`��'�`\��ۙ���lgd�±ƭ,p�h�"rX��ٓy��rz�H��I��k��OD(�Y��Kص��|f��YZ�+�*OiPU|�mC�i��[�we�܊��mw�R���Ȋ��o�񈜳3Kd �G<h�p3k�#k�X��Y����[%J	�m�U���E,�Kvm�k�m�b-����	��p'/hm� H���1�*�U��c��o��ǦP�a0Y=�:s��mfw/ʐ`��^a��36�A`�K����a"����$޸X<ǖ���.L<�9�v�:�A�cE6��PE"��(�ptD��}s6�DtH�"ml�@%U�U�+q�p���4�-�EH�L�*Bs)�
m�H�$[�����V�EI�X�:�QE�QJ� �桵�8�����������F�|3fH�La�y��]�$`)����
�9�>A�:�L��]�lص�������lRT2%��}��E�|3�gx|��?���@q�ԛ��F0FAQ��wN����aҟH��L-Av#!}���
�t�-eZ
��W�\�;�� �m�����%ZƢ4[[� �zs�=v�챰r� 4�m��g��=qā�����ڐ.o����
���6�cL����P+i#��A���Ef��UޅJ�����TQ���	���/z����o\��<��\mF:*}A=���(Y�!)��q�ɶ�Fw�FZ�@�;Id"�p���ZL�d���f5����C����݇L�!�%";q��-qÇ�͠�($��Η5�����	�|1�$Hm���s�Z�Hvqsꕟ���82+���K"�p��5��@��2�;QeT	T���:�kh(��ƌ��1Mie͔��DԢ�=p K%Ew9\A��R4����
�s���J*�k$�e݆����b�}t 5��u|�}�sl+-<�����"sΝD� *���#�W�9�ս+Ż dD���Aʠ_�Bn�&�խ:����ၼ�14��f���=� ��0~�)4�+�E�((#!����a�gIl�q�8x�Rk-��Q�����{�wJ�����U�rTa��D4/CS ���6	�2�Z ���H��,"��Iþ	6s�Y�'ͤ�թnB��H���$Q <-���Br�t�@7�,컁�R��q�Vq�����?�"G����X��W=&�|�/7��\�P�΁���j�x�<���^�G������(#en��}� ��ֳV���V;I����S�s�dI=��E�Y��M(&E�ԫ���С�	�`2��\aM�C4���i/�=靑r��
C�6rAH��I�H<v�3¥�D��2�Q`a��H�N(�\��<*����v�l���&4( �A��|�H�b��Ġ�?{l2�e��$u�I��8*B$�������v�汋X�a�	I�쐕��|0h�vm1�#I���*�iĆ�ڵD�j,�< t��)l�l�y������/���^�5{Z���{�".F�`ck����^8^e��L2��J�}�SD-�փe�l26��tu͆rNV,��f?6s;��n�a��\;��*(�";��Z�4��@d)�F��1S������н8P�_r� ��	HYpޛY�� ��Zh����u������2�+�b�P�Y��'�pq�Hi���Kʼ��.��e��U�w"]L��5G���Ֆ�Z�B'k�C4&��KTVvM��V{���^�ܵ��p:e�FȪB����1���$����B����I��[KC�������H�b�ѣ�-J(Q5��ߗ���n���tu��S�����+�H1$$ȉA�8A�}ޚ��u��h#�2�l�G�j��lyg��4���]�C�"0�B�_ɣ*6�a#�a=���|��č���$.E�#/1��
v���UI�QT�H�p^��A'z�e,C�gٝ�P�n%[SZ����Oxyzy�I�4e'H���2Є,㻂rR�,�� R�W	L8�!X3�qD�W�����cH+��K(���������ZS͍�肶�ԃI�o �(_���5彞�TA� <�T:5��[$*%��q�M�.A�e*BZ �m9^��]�(�nò���w��դ/A��*�Wz?B�&����L��BoHunBw ��"0�w��K�����������ˇ�7�<�czp5d�����3��=��c�Q@"]�&��1�k5��ҕ�>c�`�,@)��� ��O
�h�TD�X��0��Q��:�vՏF��Wm��T����W���.�F��!w�66�k��N�[�4a�B,�����^�m|��Sp69vk�1�>�a �I�"��V)��9e���:J߀m�;�$I��b2P�-!9��4�Y!��&Z!=��SY����"�"��
�Tj�Ꙇ�N'�\�;;��g��(���
�cC��B񄌂��L2[ɾ9B��H���R
�yʀ�wu�z`0�i|AR��3���4Ǥ4>?M2�Y��q��kA�m3��*���Z ���FU䆄yTT}'�+��C��UX�TG���8�n�R�{f	tt��I�9�2a��Q5�E`�4NC]�E�jĥ�>�J�����~���qHC#���Ayp�@z�hۉ@]����D��,�U��Q
(���<&Hn6 k�XB�>�N��v��_�L���cU������d�Y!Vt�<�¹ܗ~�6P��f)D�P�[d���[.垯m*�Xk ���7�V��3��M�&�e-kR�#��*&^ �<�����q��m�1m�[�x$�)��]�$�FU"աx��(P�B�A�h�@��]�z*Ƃ��b2�=�D�`�L]�Ѫ8j\�$2�2툮�cL��
K�"%���^V�#�Vx� s
.�3����b�!�M�+ʇ#�vE^`C1�Y��O�@�"�~v�P�N٤wR�e���z�C��Ă"(G�L�7�T�:�	����v������*j��yGۼ�����g��q�0\*om̰LM`̐�"�"k���2�F�{{c�K�H��]L�Z/�ݽ^��c�`hn�<ś��A��Q\M�rY�h��[5����f�L��.�J��G���F�[%����$3�'d�$F�

gƏ��j��1�i.�����WL��9�5ܻ�yçc5�a�r�@�[1�3J�1�$�.��Jh�X��D�H�I�ݦGΩ�ϰ�z�PSP�k&n�1"2�D�%4`��UL2qWb���*�� ���aȃ�ip֠�*��D�@�A��)�jP0/� D4*!��dh��@z�>/�3 +̕FT���:�/�.���Z��K�t��i��zf}eh!�i"�Y�QJU��aG�[4Z#�d���=~�m���nh�C(v�z&l�T��u�CPBAC3<��+��W@�t���HW�\��i6�59�7R�R��c��]�%Z����>�jӝB/8	5�clAD�\�&��z�f����v*G�'C��+�z�w
��Y�ݕI~�D�&��l̘d�P��K �ƖYjH�L~ F����P�ѷ��D4f�E	�%�w.��XƵ���4r=�_T�yj�<rf�7���)�45�[���}p8�"U�Ꮥ 
�y�aژ�ae�te"Az���*�jN9����7�r$=P6��'��l����\�\ª�FDa��k`�Jؐ�&�H<�ӌB�r#H��&s��de)��CLe}��S>
�Xw�A@T9v;
�0!��h^݉s��	�b����;. �J"���!��,����I�u�K�W$��#��g	jQ�Rꘖŧ����J�����P�C�[[э0y��<���=1��sl�K���i�F@TO��C���/�Ѫ		�_	�I�;={�`�����S����(�gyӽ4�34W�d�y��&7�`�;+�ܽ����\���O����?�O*�� �WC��_Ż�T�l B���<��K���"�(HY@= 