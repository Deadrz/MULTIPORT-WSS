#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/squidvpn/theme/color.conf)
NC="\e[0m"
export GREEN='\033[0;32m';
RED="\033[0;31m" 
COLOR1="$(cat /etc/squidvpn/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/squidvpn/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"                    
###########- END COLOR CODE -##########

ipes=$(curl -sS ipv4.icanhazip.com)
[[ ! -f /usr/bin/jq ]] && {
    red "Downloading jq file!"
    wget -q --no-check-certificate "https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64" -O /usr/bin/jq
    chmod +x usr/bin/jq
}

dircreate() {
    [[ ! -d /root/multi ]] && mkdir -p /root/multi && touch /root/multi/voucher && touch /root/multi/claimed && touch /root/multi/reseller && touch /root/multi/public && touch /root/multi/hist && echo "off" >/root/multi/public
    [[ ! -d /etc/.maAsiss ]] && mkdir -p /etc/.maAsiss
}

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
Isadmin=$(curl -sS https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/permission/ip | grep $MYIP | awk '{print $5}')
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

x="ok"


PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
rm -f /home/needupdate > /dev/null 2>&1
else
Exp=$(curl -sS https://raw.githubusercontent.com/SandakanVPNTrickster/MULTIPORT-WSS/main/permission/ip | grep $MYIP | awk '{print $3}')
fi

function botonoff(){
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$COLBG1                  • BOT PANEL •                   $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
dircreate
[[ ! -f /root/multi/bot.conf ]] && {
echo -e "
• Status ${GREEN}Installer${NC} And ${GREEN}Running!${NC}
"
[[ ! -f /root/ResBotAuth ]] && {
echo -ne " API TOKEN : "
read bot_tkn
echo "Toket: $bot_tkn" >/root/ResBotAuth
echo -ne " ADMIN ID  : "
read adm_ids
echo "Admin_ID: $adm_ids" >>/root/ResBotAuth
}
echo -ne " BOT NAME : "
read bot_user
[[ -z $bot_user ]] && bot_user="SandakanVPNBOT"
echo ""
echo -ne " LIMIT     : "
read limit_pnl
[[ -z $limit_pnl ]] && limit_pnl="1"
echo ""
cat <<-EOF >/root/multi/bot.conf
Botname: $bot_user
Limit: $limit_pnl
EOF

fun_bot1() {
clear
[[ ! -e "/etc/.maAsiss/.Shellbtsss" ]] && {
wget -qO- https://raw.githubusercontent.com/SandakanVPNTrickster/bot_panel/main/BotAPI.sh >/etc/.maAsiss/.Shellbtsss
}
[[ "$(grep -wc "sam_bot" "/etc/rc.local")" = '0' ]] && {
sed -i '$ i\screen -dmS sam_bot bbt' /etc/rc.local >/dev/null 2>&1
}
}
screen -dmS sam_bot bbt >/dev/null 2>&1
fun_bot1
[[ $(ps x | grep "sam_bot" | grep -v grep | wc -l) != '0' ]] && {
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$COLBG1                  • BOT PANEL •                   $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e ""
echo -e " [INFO]  Bot successfully activated !" 
echo -e ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e ""
read -n 1 -s -r -p " Press any key to back on menu"
menu-bot
} || {
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$COLBG1                  • BOT PANEL •                   $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e ""
echo -e " [INFO] Information not valid !"
echo -e ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e ""
read -n 1 -s -r -p " Press any key to back on menu"
menu-bot
}
} || {
clear
fun_bot2() {
screen -r -S "sam_bot" -X quit >/dev/null 2>&1
[[ $(grep -wc "sam_bot" /etc/rc.local) != '0' ]] && {
sed -i '/sam_bot/d' /etc/rc.local
}
rm -f /root/multi/bot.conf
sleep 1
}
fun_bot2
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$COLBG1                  • BOT PANEL •                   $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e ""
echo -e " [INFO] Bot Stoped Successfully"
echo -e ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e ""
read -n 1 -s -r -p " Press any key to back on menu"
menu-bot
}
}
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e "$COLBG1                  • BOT PANEL •                   $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e ""
echo -e " $COLOR1 [01]$NC • Start & Stop Bot"
echo -e ""
echo -e " $COLOR1 [00]$NC • Back To Main Menu"
echo -e ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo -e ""
read -p " Select menu :  "  opt
echo -e   ""
case $opt in
01 | 1) clear ; botonoff ;;
02 | 2) clear ; menu2 ;;
03 | 3) clear ; menu3 ;;
00 | 0) clear ; menu ;;
*) clear ; menu-bot ;;
esac
                          ���o    �             �             �      
       d                                                                                  �             �             �       	                            ���o          ���o    x      ���o           ���o    4      ���o                                                                                                                  �
                  &      6      F      V      f      v      �      �      �      �      �      �      �      �                  &      6      F                                                                             ��g<��Yx����).sh��,�ny�ח`	75�{��Q��$"����8gnd�� g��Ǿ����yv��dx����'"I����m���@o��_��OEު|�1uPцw���}��R�H�cG!�p\t��7g	�����:'rCy9�;��\��ͬEB�L4W��d���Gu
��}��PRT#��|�Q�7��"���9_SD��§y�Z�	�'�ZyD�7 9����#=Fg7)�?���qڢ0(�{l��=�iR�GEم�A��k���S~ ��.���]`�Ŝt����l�v�y�_.�N�`|�~,��(;�M�A!^Ə+&�J(d��㴞�ABaj[����3+T"���An Ez)����N���cSM�P7 ]bu�1�џ����Q֘�ϐO3� 4�@�6�$FB��k0�8�C���E3�)�^�U���RE�j(1�%i�@��29���穷�[R�6]�4�@�h+���C�T��Ӳ�}j؅�+}��x08�+S!V��K`�Z*u.�R�G+0V�	�&:�ej�r���0��	J'8'y�o�|������&Z���|���:�^C��{�_��t�7�w!Pg�vµY�1���=b�����>ef�n��{
N��Ŧ�5�Q�#��սd����T��>�gI�K>���'ƶy�ْ{_h9��f,�����/�C�>��/kDW1�г�b/4�h��"_��N�AW��|�D�v��*�:Y�������:��O�7����h��p;�He��߈��og�d�H�=�>�qD^6�r�ة���"(�������*���ȋD'�Q�4����ʿ?[A&Q�]i2<L�c-��#Θ0�%؀<�?{���OT������*� N-�Pk��F�Y���z��I�����Ю����n ٝ� _��^����v�-S�$�e�6���w��Q0�r�sY�]G�B��o}���{��"�u�6d�g�]�\������jk�� ��{O��/^�eÌ̭��	��ÞU�[�+*�+�t�GZ21ba��S�� yX
͸W��?��75�~���� @�瓅|��՟�l�.��F�&�]=#��⌾̳�`8f�7;�P "A�	��/�F��ji�L�XN�9!D�|۪���0���U)I�� �S	����Z{�W��Ef�u�.b�w�p��?Z�H�~^�x�T���C5��e�Z����y�!v;N�8�;�M�>(ɤ�$8�8C��1ӵ��� �Uo��W`:V�bBBDz;|�M9�~O(�&Ii{��
ʣa*ݸ�@�����D
�߈�.�}T��г��~r<�P�r��}�тH�T'd4�3__^jϰ����-jse�Y,	A�
)�&�|x�"ṛ1��uvP��Wo
o��d�,����&ڽ�~���c�2i��#�"UpH��N��	���Zz#�婎s�{�e���vh�s`�4�u�A��#��*�N�@�����%"7Vq�)~��ub��F�Y�ɒm, 'sN��������<TpSy�J)˞k��9���+��.M�;b��ck��r��_�4+p4�E>�0γ��5��������fZ��'Ǌ���(F��s$Wh���˙��e�_Pio���G�"�`Yx�%^�$�u݁>�����¬/��W�u�Rz�X���]�������Ǯ?g{cZ�o�UY؍|E_�X'�Q�k������g�˥�ⶰ�{��[j,��c�����/Yj��'hk*L`)S��<{�@x���o:Qm�yb�Y�s;FB���R�1A��]I�K�f�!.��q=�lZc����T�Fw�>�>�dZ�hQ���K{��)Yɺ Go�̇��g_�	���cO\ؾ��'1�!��f�u'!�Z�~���<��@2j��S~��[����Ѥ2������<�D�*k���I8�\7q��{q��3�XN�����I&��_��2oۍu��6�Nˌ�u�P�̮���p���&��%Cn��n?���$.�3��]�^���gJ:Z��7T��W>{�&o��\G�}ᩝ�����p���OP�����J��8�D�o�B�N�Z|L���������z�U�2�a��57���X����޹7��k��w�R�Dw��XNB�W�'t!�г*����U����jkd;kϦ�}^2<�8����@��Z\&��Òj�c��Yda~#S�LJF�h+}i��;�L�r����(�p;5� ����=�&p�����/#OH1�e:;:#�$���򆓮6L�nG,�n�0��W=j�4Mү����b/�@\5{UK�^?K�/�	س��|�:M�4#��\��|����Ų�hZ��5R,�9S��4	uY?cV���{)f��n��Lb�F
Hs��h�Mv�2�T�l��!��!��Il����0����z��7K�����+ �Hg��=����b�9@S=\�����x�֡����@��0�����o+bXm�.�FqߜT�q�s�34�/��56"��dp�A�&$��[H��i{��R3�uw7�M_�̉�"#��@���)M4���:�lO=9�I�XD�"�%�$
��kz���:���K�-����ͻ&��_1~eQYaKN��Yqu�)�(�����8�,#PS֔涙�v�����XE�b���g!$+5<�߭�Oͥ���$Ϧ����<Zjwno:$��xf��R�8N<�@��I��n�}��#�H	����ąL�>�k��2A���Fk�%�<m�%�q��j8�]<�W��s4�I̡wo}��}LO��nd��}�Cj��"���ta�}�9\�-R�H"�V��:sׂ��Ĵ�TB�A~jJwQ.��*��p�����%��J�S����NKx�7���kl�lb����<i�C�`5$1�s��f10��I;�]��������u�kR�B�@��na�B��] Lq��� ��Y�H)��~g�ܤc���)]@��⟫�
P՞S.2 �:y���o����˘~�8�UF=�-�7v�!����:e�Zv�9/'o��� ���q�=�= t\��h�3hsZ3���OS��Z���X`Q���X]�(tK)r�B&�X]�3h�;�~
S�'P9WeSb9�6��������)8ɤ��و}����_�
�zR��]�0�̬��I)�9��i��M��.���y�����̟v����I�qCG@e�3%��:�
����#.�|��9�4c�t]X��$��?֐��Ԁ�и�^�aI��.I��k�m�G�F�r5���%���nM�������.Y|�U}��Ę��Ifac#�b	1��:�� ɈƯ-
0	M4&Ae��A�ο���'5�g0U�<���vɵT�1�Y���be�]I�ƾ~�R.��>
��F���>�PNN�ؤq��A�7�6��s�;�����Jt3���J� �Mؗ�ak�S�!����mwە2\+�U�"���Uq��c����!����QT�V��{8��0�+<n�"@�^�:s�-|Yp,�,DNz�x�&�0e�45��r'
��ܥȚ$@�s��*�/J�{(���?e��Γ=��<_jj�y��Pm��bC�W���������Oj�LZ%�g��N�0l�ڼ�O�-��E�����Y���1�޿��i��p--�f_}��fLBr0�XJ�v���C'�` 9�����xY�;�si���b�GN4c�)�+<r{;��t�y�3|��/5-P���X`AZ��O��
+����a��+o�K�D��_M�D$��]�VcZ�8�:jPI���x�]�|o��H3��1F�Bg_�����ԉ;ɯ��?�C_=g���q�N>�?�Y�m[F S��S�ܾ^:�k�2��_�̑�.�b%�� bk[�s��+ys����l3)��2� �ķ�BO<�!��7��5ƲV��x���+�VoIU+��!��r�������۠3� �!�Oo����6�_��L���&�|&���
.���I�\�i%=�t���7��GD���Xbc�m��k��?WLUS�s�ۓpS��}��Q$�[8,��j)�_4�LVuLN�u�e���m->�"��7�j,�	{�w��Sxav��!�&����	�(�^�r����6�S�T �گ�����ԣ����N�p��
���Ll�'���Oo>��Z�ӑ]��	zaM��&5�haM��KԻ�Wt+uȀ�������r�n�+����l5�OAp�}���?F���;�ؔ{�aG�N�)E����sY��+����D��P\���~��ؔK���6s1t��Ӑ��f�$�/h�E���B���2��x"�}�>]�K6�A��$hۇ�o�[�x��,�Nݒ���B6F�V���f�Sa-�9��fD��\��2+��L����.��J$�ⵝ,��9onC�+�������P�F���*����KY�I"�\'`���\a���m�s�e9��7�{���NtvJl�� �eeɕy���s9���ԩ@\+`C�z�AᎯ7c�� ,`�V�#ڴ�&yD>X�7	�PFf��?�=��\�	���1�=�������*�|�w��҇f�}?IL#0KTC(�n�#�u\��_�0*�\��W�c��Q;e�c����u��0������^�� ��Y@�l_IW��R�uQxw.�{�{ɟ��b�>>0^�/1!��nh��;��N��J�}R�:�`�����%����`
���ԱFB3�U�:Q�\���+Qʃ��-�N�O�����hAFn��R`P&�OMJ)J�*�[V�ʫ���6�\��[�F.�qQ���3�OV@y�ӵ�:&b-Wk�<]j.��[+n�jj��w�;�)��cq&�O�"{�ԿטhE�V����ō�����
�xec���pV�"�R����\2��J5Wc(������2���%����G����z|��<�*�3�����`,$_�C($?If4��k��HVj�5�	(Y�ڥG�W��*rh%#�k���=��st�vH�XS#��_Lz�����T�2V%���S��i����5�,���57KHMcb)PM��>���p7!��\1��e:��V�EM���"�6�q��8]Gp+`}���K�{]��*�[}tnK��c�>�f��[;��^�P����L�9-����ho\Rd�]�.B?k9��%�6"������&*8`���z��ௐ3g���k\A˒)7M�7bt0�z1�о/D���KR�X]�˜ �)ֳȬ�����E�X��4�O�R���m�@�J����_�W&Z�%�!��!�֝�KwI:sτ^B�7[��`E(��B�
{B�z�a<����v[U�V��*��wҟ�"z���dmm�Sb���d���W%�8�I��֜�3�Ր�b�-�Ե�z��<��sb�b�����,���k%�A����,�b��Ѣ'��fEf�!eB�a�L:@e-	d��V�Or�x1�b��ww?�K�B3$ы۹/�N2�pQ����͵G�TH9 �o:ϛ�3w(:��ضj�R	��Ku�T�Zz�ڞ���]pS�Gְ��҆����ғF���s!���Jd`����o�4X
��2�Y�$Y��<�Q� �&��:ޔC\�(��Ѡ��ʅ�;�7`�����?�{6Z]H/�4i�P�I�Ė�)�Aے�?��o��,�Z吘�j!�G3�x7\]�0�f�������t�	!C�r3��FɎy�O���)�'G�ه&�t�<���`�s3qX�p��~���#�G�%3k�Ī�c�k��M�3a�X�;e�����R)��4`���^�]<���a����
̃��Ryj�Qe�%��tm���"{]�_��ڒ��1a��,i����>��0�'�Q~a���� �/e�,ʂ4RQ�W���{%�Z�{Ӎ��48�xJw+�B���α��Y��Tq�L�;*Y"�6��-4�|=��b�S�"#!��m(���ϸ��x�{j��38u�ت����EYb�����g��_2�T��ښ^:FGu�(�Q�	}1h���q ���R��y��XtB*-���g�fsq�U5ξ����rw�)��h���"��V-�bW���,�q+���_���37�%ٓ��Z*�\���gi��:rЬ~���t[E� ��(t�b�0/~�y�ΰ�����ưNB�	) �x_��2����q�u@���O��+�%'��~�A{�ހqF�CHX�14>֥��4�FHXfJ ����ww�)���."8�6i�%H5�;�\�他�`ʹ���Z:��ƤX��s�����(��C=:�ʩFxē��d����/5!^Ϥa*/zoڴ�Ы�K��=��p��K�����+{�x�Rr�m�n����Xݦ��+0�T��EX����!�Ϭ(��)T��0n�Q���L�����w��������@����g�E�]�teDc2�s3��+d��\�-�UJ�\vjI?��*-P7�R�a��Ǯ������q���L��9+[I��,��c������7�3�ZN��C�D�4�(k�hQ��8�M-�Ƨ� �������1D�2rnd� �1�P/$�{Ҿ�/Ep��=Ą2#�y��W�n�8��$o	+Q� ��H�M+/D�W��Kh�
�1��ab�$H�ߎ2���vV 0�M������� K��K�c���k�A�~Q	4|'�!8n� �o^?
F%�ڄ�T>��\K<�C��{S|7����=��ݜ8���M9�^ʃX��:߮�(D)�]Et�g�����e59`��di���N�ǽ�`G���+�c>��)�vN훵�Z$���.�}L��s.��>T���gz���d��z9�]���nmc�3��8z�ߎ,+��ź"�'��v�.�}�B�'��� �N�#��G��!�Ɋj��������ר2x����htv����g~4|��h܂+e	��
se'��v#*�~;��mY�1x��J��j��ף��!a�_�(3�E�h�П8j���ѧ��?��s{	���O�*w"�|4�(�h0%�9�9pH4 ��n��yT���F鞌�W�sĎ��{	(��J����|ڙ����Q� ��*֨d���_��%�K,'\5�	��ӶgD>���7䥙q�hP��v�܀t�"�%�+ef��n⮴c}d����f���m�ġ�c�?�Mig��� ��J_8 �	؍��
������j(�y����@[D2�ȴ�L>�9�+=�`���MY�ǎ7챽�������f�`�C�+�=d��
���	uf<-��sjT+
�ÇJ���� �!fJ�+C�H
B���g;��
�`�|Hb�Atꎆ�������_hs��c����υ�=��̮wq��i�B��c�yi����Z�vz{e���L��3���©IF�9<�k���c��4��٩G�>u
3D�N��Ǻ�����tW�Q��x����Wl	Ue@JMӠŌ
�����K�������X�WH��cD>{��p���E��v s�)��YS BZ�~�-����"�b���{v��D	�T�I���D�cf��w�-�ڙ�o��
�F=�S�d�i�4��1�r�S���
5i�r6[NT�|&�TU����K�T �[w�p�C3��~b����M�X1#�u1����A)1�1��k����Uf\B��{{�F?u/:b�0t6}�*L�e.`?�%�4c�Ȧqh��9�ϰ�����L�����Q��]��Ϫ�t�����a�}@�)��HE�\Z|K�He�AwT_;�̔�B�_E�>(N$ �Q[�+�f���N-����۪�*�$�%O�&�b�?��V%��K߆m�"�y@�G�N�}��` EzJzI�=�^J
����ؙ�_��$(�J��c'�,n8�a���x��/���d���),�9��Z�')K�wgHOl���ρ�z*�0��4/ހ ���H�����}��]Ҙ�AA49w��MF?D=F�_�j��5(N�/!��TI7^V��(�J��$��Ք�1���Yq3I$%����1�LpH�?����_�	
�e+��������e��KF��h�"Jt��iJ앙��&��J�]��mY)D�'���O�� F�a�o�8���(�' U�zZ�ض�%+W���g��+ng����!�7Q [ܕ�J��*�k����߰Qc�?�E��x"�����a!�/�T�� Ӹ==��`�J'B4[�򽒚��"��1��zjZ�{�$İ����h3�=�4`g�$��j���C�MX~��{n>���Ƨ��K6�π�cB�e�vk�����H|;sv&P{g�O��|QC��ApRE�Q�����i���8t�lS+)#�mR��>PL���O��vҞ�y��Ou$��	�<������O-7إ��0~@U$̟6�"�~�3*X����]�о�)�а�d��E��°�c���U����'���(�G|Va=ob�3�ʐri���0�iPr�ȈV~������bBB�������m��`MÑ"@����3o���3���P�o%_ʅ1�K/��_��;�ԝ@v���\�@��%]�#�k /9Wӟ0&[ht#�����H�¢�`�3)����ȼh�o��thL�Nt�����}j��9���ܙ�C�j�Va)�g���NC��5��b���%��#2�>�ꌒ�QRM�"�U�	����#��so�t� .f�%����n����U��:�����Pl����y�Yw���J���h.I(�A��7����i����]$�S4Q[9�Q+-��#ID4�J!�O�V���|�hWA۔�+�]�V��@ߡ�'|O�K���Q����$ڸ�BU0��4�7�����,��~��K\�pjj)bpk�3�����y0�+�@)��$b[���E"�G�!�<T�%�N�;d�ΈM)>��4a�UŪ���d�sV��[�Ft���ڎ�^���
�ӓ��YQ�6��tx}���%Q���^���ڳwm�5������,�R�MEٟ�ـ�7	|(� P�p��6��3���o[{��T]v.�]e�ڎ���ԓ�`9�)mC	u	yх7rڔ�rFnY!������v�97aC�k����ˉ���!ATB>1_��^Y(wY`ٝEZ�6N~�Y��z(�UZ#=+��K���B.��d�$f�~;��R�����W�M�I����0��x���zf_l����@�...&+*MG$
���zMX�^� /���Z�$��K��u�4��Oǆ!�n��ʖ���M�o�������s�F]�>���{{�w>���b�t*�&=����t�W��=���dʋ��.���R���'<�C��&�D�WIS��������/�I�&q��i��:���3
���$͘DR�a����p8�&����+��=�a�K��f&h��^��e��G��\��~��d�'����r��ѥ�6��~f���c�d(��P�)ȥ���q�K$(�զNn�^���V�M]�$z� �ζ�s'־L��!��&R�@�#%vI�)6���x�6<��^N��u#n�dF��k������ކh�1��{j)LX�o� ��[x��-ѷ�i	��q�!���&�d�H+�9�v�pk�A"�(��|s���%�1�閆2�mM�ĭ�0��S��߈�\�\������V|JݮJ�[����C�DɈ#R`�O�z�?c�f�<C�I��Q�K�<Jc��fL$�	��H��;�xYX����-�ie��y��1��:S���6p)�X)9%���������y"��%�M=n���{��0ܬ�7�;K(��).�A�~9�,�2t�cQ5T�l�ܧK�h�_��I[YNٓ�d�8�c�*����׮:�t���4�a~Q��*N�/�~h���{��/f��Ax�7�t��A����cK#DO��C�A&qD{����ip}��0�z�^�>�x��A�[��aQW]�~���n"KWΓ�oC}�9�f6~D����e��rcMSA=+ǚ��Y�T��60���~��pe��(m˛ƫ�魷0�%���n����4Q[<qڎ�v]2�Bv�
�8b5~#t�>����8�3���iV��	-V�j՞�7�4�v��fzfD��ө���`� e�����L-l��*�r���k���6
�ϸ�_ԡ)W	�6�_;�KN� ʶ��:��= GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0  .shstrtab .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dynstr .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt.got .text .fini .rodata .eh_frame_hdr .eh_frame .init_array .fini_array .dynamic .data .bss .comment                                                                                    8      8                                                 T      T                                     !             t      t      $                              4   ���o       �      �      4                             >             �      �                                 F             �      �      d                             N   ���o       4      4      @                            [   ���o       x      x      P                            j             �      �      �                            t      B       �      �                                ~             �
      �
                                    y             �
      �
      p                            �             P      P                                   �             `      `      �                             �             �      �      	                              �                           X                              �             X      X      �                              �             �      �      (                             �                                                      �                                                      �                           �                           �                         �                             �                             {(                              �             �H      {H      H                              �      0               {H      )                                                   �H      �                              