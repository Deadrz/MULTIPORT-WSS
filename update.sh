#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-ss.sh" && chmod +x /usr/bin/menu-ss
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-vmess.sh" && chmod +x /usr/bin/menu-vmess
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-vless.sh" && chmod +x /usr/bin/menu-vless
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-trojan.sh" && chmod +x /usr/bin/menu-trojan
wget -q -O /usr/bin/menu-bot "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-bot.sh" && chmod +x /usr/bin/menu-bot
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-ssh.sh" && chmod +x /usr/bin/menu-ssh
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-set.sh" && chmod +x /usr/bin/menu-set
wget -q -O /usr/bin/menu-theme "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-theme.sh" && chmod +x /usr/bin/menu-theme
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-backup.sh" && chmod +x /usr/bin/menu-backup
wget -q -O /usr/bin/menu-ip "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-ip.sh" && chmod +x /usr/bin/menu-ip
wget -q -O /usr/bin/menu-tor "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-tor.sh" && chmod +x /usr/bin/menu-tor
wget -q -O /usr/bin/autoboot "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/autoboot.sh" && chmod +x /usr/bin/autoboot
wget -q -O /usr/bin/menu-tcp "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-tcp.sh" && chmod +x /usr/bin/menu-tcp
wget -q -O /usr/bin/rebootvps "https://raw.githubusercontent.com/kenDevXD/multiws/main/corn/rebootvps.sh" && chmod +x /usr/bin/rebootvps
wget -q -O /usr/bin/menu-dns "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-dns.sh" && chmod +x /usr/bin/menu-dns
wget -q -O /usr/bin/info "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/info.sh" && chmod +x /usr/bin/info
wget -q -O /usr/bin/mspeed "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-speedtest.sh" && chmod +x /usr/bin/mspeed
wget -q -O /usr/bin/mbandwith "https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/menu-bandwith.sh" && chmod +x /usr/bin/mbandwith
echo -e " [INFO] Update Successfully"
sleep 2
exit
��%�  h   �����%�  h   �����%�  h   �����%�  f�        1�I��^H��H���PTL�Z  H��  H�=  �V  �D  H�=A#  UH�9#  H9�H��tH�*  H��t]��f.�     ]�@ f.�     H�=#  H�5�"  UH)�H��H��H��H��?H�H��tH��  H��t]��f�     ]�@ f.�     �=�"   u/H�=�   UH��tH�=�  �����H�����"  ]��    ��fD  UH��]�f���UH����#   ��#  ��#  ��#  ��#  ��#  ����#  Hc�H�v"  ��l#  ���c#  �\#  ��uǐ]�UH��H�}�u�H�E�H�E���   �6#  ��Hc�H�)"  ��E��#  �E�Ј#  �#  ����}��Hc�H�E�H����"  Ј�"  ��"  ����"  ��Hc�H��!  �Hc�H��!  ���"  ��Hc�H��!  �M����"  ����"  ��"  ���=���H�E�   �m�   �}� �$����]�UH��H�}�u�H�E�H�E���   �?"  ���6"  �/"  ��Hc�H�"!  ��E��"  �E�Ј	"  �"  ����!  ��Hc�H��   �Hc�H��   ���!  ��Hc�H��   �M����!  ��Hc�H��   � E�H�E���E�Hc�H��   �1���H�E��H�E��m��}� �'����]�UH��H��@  H������dH�%(   H�E�1�H������H������H��H����  ��y
������   H��`�����   �    H���)���H������H��h���H������H��`���H������H�E���������|����������E�H�� ���H�E�H��(���H�E�H��8���H�E�H��`�����   H���C����    H�M�dH3%(   t������UH��H�}�H�u��H�E�H�}� t/H�E�H� H��t#H�E�H� H9E�u��H�E�H�PH�E�H�H�E�H�}� tH�E�H� H��uِ]�UH��H��P  ������dH�%(   H�E�1������H�H�������5���H��  H�����H)�H�Љ�H�=�����t�����  H�=�  �c���H�������   H���O���H�������   H���2���H������H������H�5c  H�Ǹ    �N���H������H���/���H������H������H���I���������H������ uXH������H������������Hc�H�<��������H��H�5�  �    �����H������H������H���;����    �   H������H������H������H������I��H�5�  H�Ǹ    �n���������������uRH������H������H9�u?��������H�H�P�H������H�H�-  H��H�������������������)Ѓ�������H�M�dH3%(   t�D�����UH��]�UH��SH��H�}�H�u�H�E�H� H�E�H�}� uH�=   �����H�E�H�}� u*H��  H���    �   H�=�  ������   �����E��������E�� ����   H�=u  �P����A   H�=�  �6����   H�=  �%����
  ��t*H�=�  �����H�ÿ    �����H9�}H�v  �  �
   H�=�  ������   H�=�  ������   H�=�  �����   H�=�  �����   H�=u  �����   H�=d  �����   H�=o  �y����   H�5^  H�=;  �������tH�+  �  �   H�=�  �@����}� yH��  ��  �E���
H��   H������H�E�H�}� u
�    ��  �}� �
  �   H�=�  �������  ��uH�=�  �������tH��  �  �   H�=�  �����   H�=�  �����   H�=k  �����   H�=Z  �����   H�=�
  �m����   H�5�
  H�=1  �������tH�!  �  �   �I���H�E�H�}� u
�    ��  H�Eغ   �    H������H�E�H   �   H�5  H��������P��  ��t=�   �����H�E�H�}� u
�    �  H�U�H�E�H�5�  H�Ǹ    ������H�E�H�E��E�    �EЍP�U�H�H��    H�E�H�H�E�H� H��}� t/�S  ��t$�EЍP�U�H�H��    H�E�H�H�.  H��D  ��t$�EЍP�U�H�H��    H�E�H�H�  H��EЍP�U�H�H��    H�E�H�H�E�H���  ��t$�EЍP�U�H�H��    H�E�H�H��  H��}�~�E���    �E��;�E̍P�U�H�H��    H�E�H��EЍP�U�H�H��    H�E�H�H�H��E�;E�|��E�H�H��    H�E�H�H�     H�E�H��H�=A  �i���H�5  H��H[]�UH��ATSH���}�H�u�H�E�H�XH�U��E�H�։��5���H�H�E�H��H� H��t
H�E�H�X�H�]  ����� ��t����� ���C���I���L�%?  ������ ��t	H�.  �H�$  H�U�H�H�=�  I��M��H��H�5
  �    �D����   H��[A\]�fD  AWAVI��AUATL�%�  UH�-�  SA��I��L)�H��H���7���H��t 1��     L��L��D��A��H��H9�u�H��[]A\A]A^A_Ðf.�     ��f.�     @ H��H���   �����H��H���             x%lx =%lu %d %lu %d%c _ E: neither argv[0] nor $_ works. <null>  :  %s%s%s: %s
 ;�      �����   �����   ����   ���  s���0  j���P  ^���p  K����  �����  �����  �����  =���  ���8  x����  �����             zR x�      `���+                  zR x�  $      ����p   FJw� ?;*3$"       D   ����              \   ����a    A�C\     |   ;����    A�C�     �   ����    A�C�     �   �����    A�C�     �   ����_    A�CZ     �   �����   A�C�      ����    A�CB       <  �����   A�CE��      `  !����    A�CG��� D   �  ����e    B�B�E �B(�H0�H8�M@r8A0A(B BBB    �  ����              �  ����                                                                                                                                                                                                                                                                                   `                                  �
             �                                                            ���o    �             �             �      
       d                                                                                  �             �             �       	                            ���o          ���o    x      ���o           ���o    4      ���o                                                                                                                  �
                  &      6      F      V      f      v      �      �      �      �      �      �      �      �                  &      6      F                                                                             ����9TV��"F4�k�R[^�+jX qh"�ʇ�LWBfB�*��oG�O��5����+��Qc���5�	P�����Q������2�d��k_�1�LVC�i�Ռ$��k�,@%�:�~O���[S�������@�sQ!��P�����="�OQ���$螩��0&5
�_w�.Hj�hTA��^KnG\.S��吐�j�Gi�����9�r���y����lq��V�*����ҁ���۵�Nz���Z��O�����=���Hyl	'���3H�<���0=�����1Jp�5�Q��iȧ7��)��
��:ϣ*ȕ��r��T��^p��b�&���h��7)� ���1��:J�B@� Zb����c�7�ToOp��F{;�����ث��*������\�A̶8��N�kԘd�qd_�F����D�\7CBx��"�ep��E4�DF�[�1~ ��u���,dt�EǸ��H�}�\�WU�_Yo�V��$�Pr܌��	{9T��HTE5�hk���}��~,e�$���� |1s�����̼�7t���Ħ���Ǎ�����ϧ�R8]�����u[�:O+�@�xP}�V~%�w�l��
����I�����&��wPU��˽�C�OɍQ��T1����N�K�O��[���ѿ�M@ol(�yZ�u$�ns�:�{WeO�L�_�W�&�@wl��޳ɸ1"6���c�lO�(��'{�\�Qtx�@� �)Ů �ю�j��_�S-7�1<s�~P������Pk��[.��v�b��?h3��n(�i�� u@��:��d<c��o(�\��f��a��]]�|~flּ���6�eGݵ�(K�®�o5�ĕ0�m灦���BjV����dt<��DB2�L��Ǎ~fL�m���ϴ�%�
����y�ܑv�0��@ 9<���Zl(����yZC�>X��K�^n�:UV�� ՝yl����%\ ��8÷�ŋ�����n>�Jx�X��W�s�N���X{��;�烟�E$H�5|���(�h?���L�cH��w�Og��'x��g��aݵ���z޷_��n\���$�t9�3��(p.����� 귊5F>ʭ�@�U�d������"�ٽ�WY�ƽ`~[�qCBe�?(��b܆�!�|cL�̶J׮��MH��R��VB�޻6o5'�xݾa���-6�E�v�cZ�*V�#?�Ư���E��7$B�v�>���g]m���Ÿ/E~�-b���쿹V3����T�;��Y [Aa�Q\Ycj�7�4���U	f�����X	���|��O�����P,�^p�	W>	�G���ąR��/���,?�T�FcT�WC�q�˟�Ƚ�,zԞg��ү�?䌯�<��r�@�\��h\*��>(a/0���E@�]G���k��_z��}�|
6���0I�n��]	-��Ǳlɂ� *،� �-܁'����~��`(��"H��31ռ=���[��3tb]Չ/٠�x�@fĽ��	�U+���]l��j����.�>x�kt�!�kq�G�_���vS�Ӕ_a�n��j���!��ְ�Ϝe�)���w�{�w<>��~�����d��y�!1v��;1�5����?P�p�);E���� ��K<��f���W�4D� !��-s��)�
K&e� �c�P6���l�)n��(�l� OQ�&�{Z�&@A�ڪ���7�'���*D�!��*�.Sq����7bo��	{k��t! ���7D�+��f�m\�0��L��Q+z�"��T(g�6y��ӱ�5lؕ3Q�=@��Sߵ�MkŜ���mnL9N�Q�/"��C���^W����ζmo�Eef;U
��8��~�h
"�0,~k{����p���:�I˒�h� ��;⁴�;A�&uc�`���n�շ E�h�ͻ	��W�4`���� b�*��X:�'��.�oH������vQUݫnM~K[�A/���4z8��kt�J�%��E߇Ԛ��@I�E��%�x��JY9K�(�c�����5{i�>/�fF���	|0?A��%Z��MȔ��ȉ�f�D�C.\�:G�ji���W97lN��9�ʐ���ٞ�����/Nym�Uk��ű�j��aq��j[�� *D���ۙ
G6"ã�������}c�[���u���X����l�G�+��:ڪy�q킜xq�o�����b�DN��.�p�?F�ZCF�\�1n�vt�G3�J�k���C�*JR����5�%Y�
Emu��� �%n��,��L�<Z-v==2�zsYD89/2�B2�ˣ��)�4��ѽ����G�NL��R*^��SJdL1K/
�0!����	�i�L��N��	�i�1��r�ʜ�|}���������R��[M������cs�+H��^_�kK��NEAm�o��5ƣ�����r��
KBN�j2��%�CVL����U���7s�P^�u�����1dS������3b�E8�4 �$H}��:�k/��(��|�7���)qoZԕ������v�P�d@�(R Ec��`��G��b����;#��Oש��Fi7������>�"�^�(���r���nv��`��]������t*����u�����=l���U�Ofɸt˕��F�a�e�6��W�V�����hs3(9�D�}K��:PL�|55��n�m���+y? pr�rPnP+w��]׃n�,�'G[���.!��6�^qx0CYn7�W��S��ϝ)��!���_Hp�\�Z���7���i��Z���Xr���SZ�MXa����2�������!�6��ٮ���CIb�[�C$f�&��IMd5�	��dc�Fp}x��X�va��'d��z'	����<�1�_�r�~��8
�j98���4\Z�^�ȥПDU��w�sJ�|�|��Y�w�\z�l�C���oOV��&g�Ѭ�)�s7��6&^��}��+M���%�1&� �!���HD0��
�f(ճ/����t(�zfY���Zl6�4qf��(O���U��5��=P'8"��{uƙH�"��hէ�D�ef��#�]��A�'�����t�J���C5r�f��a���Ē6���]%���}�%K�Q�q?�\�v��~�� S�����1�U�t�����^Qҫ�o�Lf���#�.�/J��cw���6�f�3�:04&޽��zy���}������;������.�y+яf�!+����<���@�=���
ku�֡q)�}z�7����UjLP+N`x"Q"�&�/ǶAGs��\̼��?]�V��IC�����AHjh¦=L2/#-	W�P藮�j�?��7��W�# *uf�1����_쥿�(��r2�opdo[2��g���#b���IB��x�o��������[��?m��u�>	5i�e!�'��$�3���hQ�Ȍ��e6��ݕ�B�rF���MG,�A����Ir˵���T�`��8����y-x(*��Ӽ6�k����I:��"�ƬK� ��"yb *I-��:���:J�dpOu����z��ňZ[7C�B谸��00{��\����k_�-w\�˘�5��gu���-��i��V� �Z@Ֆ�d�~3Ü�����-�*|��x�6R�kg�W53��P�xHQp�bA�����|�R�Q�n�h�/	�.r�[�'#��r����j��}�/�Ls -����Qe�	��鲳9�o��mi!���zB����Jut��YҔ�N�سAկĖ)G@�9ƓT	�0�aMn��9;���RĂZ���ܳH0�Q��E[���t9B(f�}GD��1P������0K���8�z+���(Am�+����,��ʰ#xt8#�O	'z�ah�)tV�<��~V�^V�[clML-ړ�F�JC�H�$h'"��3fʫ�!��v���)�~.F GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0  .shstrtab .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dynstr .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt.got .text .fini .rodata .eh_frame_hdr .eh_frame .init_array .fini_array .dynamic .data .bss .comment                                                                                     8      8                                                 T      T                                     !             t      t      $                              4   ���o       �      �      4                             >             �      �                                 F             �      �      d                             N   ���o       4      4      @                            [   ���o       x      x      P                            j             �      �      �                            t      B       �      �                                ~             �
      �
                                    y             �
      �
      p                            �             P      P                                   �             `      `      �                             �             �      �      	                              �                           X                              �             X      X      �                              �             �      �      (                             �                                                      �                                                      �                           �                           �                         �                             �                             �                              �             �/      �/      H                              �      0               �/      )                                                   �/      �                              