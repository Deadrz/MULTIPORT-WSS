#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/squidvpn/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m" 
COLOR1="$(cat /etc/squidvpn/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/squidvpn/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"                    
###########- END COLOR CODE -##########

BURIQ () {
    curl -sS https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/permission/ip > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/permission/ip | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/permission/ip | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
echo -ne
else
red "Permission Denied!"
exit 0
fi

cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`
if [ "$cekray" = "XRAY" ]; then
domainlama=`cat /etc/xray/domain`
else
domainlama=`cat /etc/xray/domain`
fi

clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$COLBG1               • RENEW DOMAIN SSL •               $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e ""
echo -e "[ ${green}INFO${NC} ] Start " 
sleep 0.5
systemctl stop nginx
domain=$(cat /var/lib/squidvpn-pro/ipvps.conf | cut -d'=' -f2)
Cek=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
if [[ ! -z "$Cek" ]]; then
sleep 1
echo -e "[ ${red}WARNING${NC} ] Detected port 80 used by $Cek " 
systemctl stop $Cek
sleep 2
echo -e "[ ${green}INFO${NC} ] Processing to stop $Cek " 
sleep 1
fi
echo -e "[ ${green}INFO${NC} ] Starting renew cert... " 
sleep 2
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
echo -e "[ ${green}INFO${NC} ] Renew cert done... " 
sleep 2
echo -e "[ ${green}INFO${NC} ] Starting service $Cek " 
sleep 2
echo $domain > /etc/xray/domain
systemctl restart $Cek
systemctl restart nginx
echo -e "[ ${green}INFO${NC} ] All finished... " 
sleep 0.5
echo ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
%  ��Hc�H�
$  � E�H�E���E�Hc�H��#  �1���H�E��H�E��m��}� �'����]�UH��H��@  H������dH�%(   H�E�1�H������H������H��H����  ��y
������   H��`�����   �    H���)���H������H��h���H������H��`���H������H�E���������|����������E�H�� ���H�E�H��(���H�E�H��8���H�E�H��`�����   H���C����    H�M�dH3%(   t������UH��H�}�H�u��H�E�H�}� t/H�E�H� H��t#H�E�H� H9E�u��H�E�H�PH�E�H�H�E�H�}� tH�E�H� H��uِ]�UH��H��P  ������dH�%(   H�E�1������H�H�������5���H��  H�����H)�H�Љ�H�=�����t����   H�=�  �c���H�������   H���O���H�������   H���2���H������H������H�5c  H�Ǹ    �N���H������H���/���H������H������H���I���������H������ uXH������H������������Hc�H�<��������H��H�5�  �    �����H������H������H���;����    �   H������H������H������H������I��H�5�  H�Ǹ    �n���������������uRH������H������H9�u?��������H�H�P�H������H�H��   H��H�������������������)Ѓ�������H�M�dH3%(   t�D�����UH��]�UH��SH��H�}�H�u�H�E�H� H�E�H�}� uH�=   �����H�E�H�}� u*H�+   H���    �   H�=�  ������   �����E��������E�� ����   H�=  �P����A   H�=  �6����   H�=M  �%����A  ��t*H�=6  �����H�ÿ    �����H9�}H��  �  �
   H�=  ������   H�=6  ������   H�=+  �����   H�=�  �����   H�=�  �����   H�=�  �����   H�=�  �y����   H�5�  H�=�  �������tH��  �  �   H�=�  �@����}� yH��  ��  �E���
H��   H������H�E�H�}� u
�    ��  �}� �
  �   H�=P  ������D  ��uH�=�  �������tH��  �  �   H�=2  �����e  H�=�  �����   H�=�
  �����   H�=�
  �����   H�=�  �m����   H�5�  H�=�
  �������tH��
  �  �e  �I���H�E�H�}� u
�    ��  H�Eغ   �    H������H�E�H   �e  H�5�
  H��������P�R  ��t=�   �����H�E�H�}� u
�    �  H�U�H�E�H�5   H�Ǹ    ������H�E�H�E��E�    �EЍP�U�H�H��    H�E�H�H�E�H� H��}� t/��  ��t$�EЍP�U�H�H��    H�E�H�H��  H���  ��t$�EЍP�U�H�H��    H�E�H�H�w  H��EЍP�U�H�H��    H�E�H�H�E�H��  ��t$�EЍP�U�H�H��    H�E�H�H��  H��}�~�E���    �E��;�E̍P�U�H�H��    H�E�H��EЍP�U�H�H��    H�E�H�H�H��E�;E�|��E�H�H��    H�E�H�H�     H�E�H��H�=d  �i���H�X  H��H[]�UH��ATSH���}�H�u�H�E�H�XH�U��E�H�։��5���H�H�E�H��H� H��t
H�E�H�X�H�]  ����� ��t����� ���C���I���L�%?  ������ ��t	H�.  �H�$  H�U�H�H�=.  I��M��H��H�5
  �    �D����   H��[A\]�fD  AWAVI��AUATL�%�  UH�-�  SA��I��L)�H��H���7���H��t 1��     L��L��D��A��H��H9�u�H��[]A\A]A^A_Ðf.�     ��f.�     @ H��H���   �����H��H���             x%lx =%lu %d %lu %d%c _ E: neither argv[0] nor $_ works. <null>  :  %s%s%s: %s
 ;�      �����   �����   ����   ���  s���0  j���P  ^���p  K����  �����  �����  �����  =���  ���8  x����  �����             zR x�      `���+                  zR x�  $      ����p   FJw� ?;*3$"       D   ����              \   ����a    A�C\     |   ;����    A�C�     �   ����    A�C�     �   �����    A�C�     �   ����_    A�CZ     �   �����   A�C�      ����    A�CB       <  �����   A�CE��      `  !����    A�CG��� D   �  ����e    B�B�E �B(�H0�H8�M@r8A0A(B BBB    �  ����              �  ����                                                                                                                                                                                                                                                                                   `                                  �
             �                                                            ���o    �             �             �      
       d                                                                                  �             �             �       	                            ���o          ���o    x      ���o           ���o    4      ���o                                                                                                                  �
                  &      6      F      V      f      v      �      �      �      �      �      �      �      �                  &      6      F                                                                             �����?�=�:�[@I��*��z���� �/mJR�l�r)oJ�這�a�@\D�n��Z������ �"�9��bJ?L3��� ~}���F��E���0K�%� d�4$�E^�"����Ƶ�u��$qUW'z'��[�_G=s
`���Ʃ�yO�w��}����#�M$OOq��A&"S�r%�ԧ�L�15k(���X�J6��Ή�k�����X��'=��:7�Æ%,�@�Ed6��pX��es�/m��C�B���1����@[:��r �,�)�U���:ԏd�RM���S�Bƥ�����Re�#`qB$��$���6`<���N�G�e%��Z��[2z����ex(G��eUbŏ�0�gm>����\�I9/0_�(�c7��7X�y�����t�3��l��Mt��=�N���}g|��M0G,R|I]�𣬿��n�2�	s���S>�����*�/�}2A���:�.	2�L��e��<=^�Z6�ϩ�M4l�U��,�8
��J��M�_�n�N�����P��^�*���1�7iTed��?��d�"c!l����h*v=��.�7��x@Z=�p��5���k� <��qD'Q=gQ�8[�0�=�!اA�}/}S�n�$�Q��S,����[  �-�� 	�e���4D)~�%)?����a�ޙ�u�B	��*� 4�kU���,��7/��,�y�V��D��߂P�|lu��8�xŗ~�Om#��c24C�]�a�G�����_���#Sױ��"��&l-D�д��3�)�4+n�,]E^�h��S J�l(3��^B'2y�͎*j�Y��sH�\\I� �KŦ
�9(5��j��@��I��;%�"�����]��>��lun<����q����*+���6Y��L�h����KY7P��b���7�� �Fe�H}�%"|�K��vW�fq��eƭ���Ӛ��p�w��#BG�D���d;]��7��_����������S���n��7��-�WCO4��]p��T����t�d��~��M�'��P2�If'��������A<7o�����U�Uyq����I:&�x�I:T�*�c����v�t�@����<���%۱�q���nF���GS���u��ѧ�� i�.�$*�*����"�nk6�ptg�����N����5iA�D�w֝��N;i��yf{���R�d�*���}g
�eCF�a��g������ű��i�I��y#r��
���g��P6R�:����Rత���*~���i�vyqv�_��]{�K������TI���wƝEe�&/�aXO��>���#����9V$vkYYSM�D�q*i\ӳ���O�tՉ��J��g��E6 �Od���D���H0��uC�Z�E��p+��(��6�AMi� ���� �����hy4l|fQ�~J��ݙ�&8\��`%������2�;;Yw]q�g�W�� `�(��$�����M�#�}K�߀�a0F�+�=mWP5��PBG�H�'����,�+�l.!\��3j�z;����� w坆2����}������꺖9��#^5�'4t�@&��y>f1ڸ��^[�:<�oԇ�h	�//ʤ)�~B�\���])P�;��9�����I=meH��`,'+� N;�lf
��)c��+]i���5!�R�c{d�+�K�Ҭ�
��-�i���K�`�s\ݟ�<1t�`��]�WS�HNs�@��S/G���.ؤ��w^�-/ru.߿��>�߶�Һ1h��F���A&)BWR�*9W�<T�����a���w\�>��P(<O^�i7{ĕ�.p�)��>r�O�0L�t�,���49�>��m֖w�M,�#8=^^xb�l��k�w|A�hԡ5�'Ɵ��q?�o�%��s^ވ���r����%u ��'��!�$\+Lx�x�Z��@�L�ɗ���H@�my$�y1~:/`���'�p��7�x�0l�1�����T�wD㨹�rK����h��Q&mǲ���g��˳֫e���~�p*�ҿ�4<��q,�:�_�6�w���9ԘcJ�C�E�b���w?Au��-Ќ��^kY1ɧ����A��B
4�%<堬c���o\W[�k�E��Kj6X}%E�PiY" �ƈ��:��r�$R��|�P���o������^g�)1<䧯�'�H��@���K��l��W�-�S G�J3�����;�e�>��p`�q#�K�%Nv?�`��;B�FU�B��}��=��$o�3�S���|k���A�x�1.���[��GXA}�=?��y��%��ZnE�X@R5A��@�����pq��CU�`}ѻ���F�*�#������%���;�r������2��%��b`8�g��[K׳�0����"-q��f�����)��#�#������fTv�%�k�)-]�n�Ba���*���SƏd�%_n�P�RII�!żӏ$Tyo;��f��Q���3�o=^��&��V&S�D�V�.�	��.ʤ�j���o�}�l�03����)F'D�� ?<���a�c���b��C,M��ۄ��Q�g��s��&�)��u��F��mܢ���R�9��"Z7q�G��\
�g��vv||D_�B:I2u ^����IR�}��,��޲m�Z���g���k�#{2
��+v>���^��ڒ�UX�u��E��m>dUwU��{�S��g�â-�(��sr�!�ʹ�F���
$(��T�0@C�
�5���z��+�	�^��/zQ��\*k��_�W�[�Mnu�9�ȵ����aĊWS*
j#���8�@���<�_m�;�ϩ-��\�jR�Z���Y<��؟�7��J$Ǎ'��������P\6)`�KNk3O��K�7!�5��Az�Xx.a����N�������C? �T	� n"ֿ��R�8�LAX��̑��D��m��mA�i�`Vꖎ����R9�_�{���CA^���q[J?����!)4�-b�����)��i`�_T���TI줨���kdw���ImB�_�'�瀐7_AI�o�A�������h1gw�֣P2k�B� ��
�D�T�5��<��`��K9g��fqV�����)�;���Q͍Z$!�+���n�>b����#�0>ٖ�%0�i*�;��3f���?��1Z�O�;�G߿����|�'�Vd@�zصH/��m�H�ݭ���������U] ڸ���x�$+�z܂Yl(���[�]c�`�8a����x�:�Cq��/]�	I�g�Ԗ�|�U�r�������n/38�҅T_�iw����.}�{��[�a!��G���Tu�.�Ã ��Kb�~�M�o�G�!�$��Ɡ6)\��Oۼ��!�Ul��&�e�*K7�8O�e�N9]E�>翑�+%��6;���觎�S�Q��^���Wo7|�!U���o�;W���]�6��S4Y31p���&�1�B��ӕ-0ci�p����8��k�4|��k��ڝ`<�7�����*?60���B 9��@�u���G��:�΀�a�xJ���g��)�]3�8�����p�N��/�K31��#{$�����"\,
�fT�H�ta m'\k9�B
��&�˄4-SK�F1z$g����M�3\+���h��r�8�6�j�����[_��߿���Q/�m�=�q�>p ��͚��V5�	�2�P�J�9�\vx{�O� zbj�N�Y4����,���>�F0��C���
^'��.t`�mC(�'�甸�r�/�ر1��h@h=Rĕ�%۲H��T#"!]��myv��ju��4�w3�cuҎ��5�<{�x�g�{*X��Ƹ�M3�\	��-I�Y�����2�.L�����e�g%'B_�SP�~�oy�� ��_� ��#�+���ǻo�4E���w[�&���1�޵~�;��B肭��7y�2W[v7`B^9��h��L�l;
��i�K���QrP���q��`��َ6�#��Y6�z�dT��U�ST�>��NT�\�M,��m���M٧%������6�G0&k<����;���Cw�d�o�* '��^k:����*f_��Ѽ��	�=�ά�t������!���T�.��Э��?�eHc�1Oۥ&�Aٸ;��Ĩ����I�{�.����7
 ��ŭ��oC}J&�!����^jӍ$_"(MY2n�4��;@����v�a3�T�( &�BN՛�C|�w	j��2�5�e�a���r�C���n�q���Z���?���(�Y�aR�KOgk<ٺ�ɝ�S��H��Eh�>�?����u6�ܡ�{��2�K��g��O�f'
_�O�*��g���)ャ=l�h�q��b�fQ��)pӤ��l����b��*���^&u�;�۹�Vr�Ʈ\�Y���蘳�XI-�M��m��E�{-�]��t7E�/L���=��A���!���"or�W���r�'��?�P�D*���a6��+�M��]k��dM��L˰���Jh׬����R�X=���8W�D�e�@P�!eщ=}'�&�J�	�Y�	�;`n��uD$�e����K�q
Q�n*5.	jqw�uL`�p\�*�u&��.�9@:�kAܚQ��^�8�O��� �KG[3u�l�#"e���z6��Fn��WS���;`f�����Ui�0"o��9M����؍m��z�:��f$8�����C�M���7Jp�1�+�?��L���72�[)U�P�^�U��81�L%ӿ k	$��P^Qв��3�����5�¡ S���d����n<W�*��G���s;�~y<1{�P�E��q���5m��7�H'��?�����+���sLd GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0  .shstrtab .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dynstr .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt.got .text .fini .rodata .eh_frame_hdr .eh_frame .init_array .fini_array .dynamic .data .bss .comment                                                                               8      8                                                 T      T                                     !             t      t      $                              4   ���o       �      �      4                             >             �      �                                 F             �      �      d                             N   ���o       4      4      @                            [   ���o       x      x      P                            j             �      �      �                            t      B       �      �                                ~             �
      �
                                    y             �
      �
      p                            �             P      P                                   �             `      `      �                             �             �      �      	                              �                           X                              �             X      X      �                              �             �      �      (                             �                                                      �                                                      �                           �                           �                         �                             �                             @                              �             @3      @3      H                              �      0               @3      )                                                   i3      �                              