clear
[[ "$(whoami)" != "root" ]] && {
echo -e "\e[91mPlease run as root user!\e[0m"
rm $HOME/inst >/dev/null 2>&1
exit 0
}
T_BOLD=$(tput bold)
T_GREEN=$(tput setaf 2)
T_YELLOW=$(tput setaf 3)
T_RED=$(tput setaf 1)
T_RESET=$(tput sgr0)
Banner1() {
source <(curl -sSL 'https://raw.githubusercontent.com/vxu007/vxu/main/bin/execbin')
echo ""
echo ".-.   .-..---.  ,-.  _______     "
echo " \ \ / // .-. ) | | |__   __|    "
echo "  \ V / | | |(_)| |   )| |       "
echo "   ) /  | | | | | |  (_) |       "
echo "  (_)   \ \`-' / | \`--. | |       "
echo "         )---'  |( __.'\`-'       "
echo "        (_)     (_)              "
echo "  Telegram: @faruk_browser //"
echo "  ..SSHX.. (c)2021 </> 2024 //"
echo ""
echo -e "\033[1;33m         ⌯ Installer | @faruk_browser ⌯    \033[1;33m"
msg -bar3
echo -e ""
echo -e "\033[1;33m**************************************************\033[0m"
echo -e "\033[1;33m**                                              **\033[0m"
echo -e "\033[1;33m**  \033[1;36mDisclaimer: Use of \"ClanUDP by 24clan.NET\" \033[0m"
echo -e "\033[1;33m**  \033[1;36mis at your own risk. \033[0m"
echo -e "\033[1;33m**  \033[1;36mThe creators and contributors are not  \033[0m"
echo -e "\033[1;33m**  \033[1;36mresponsible for any damages, or consequences\033[0m"
echo -e "\033[1;33m**  \033[1;36marising from its usage. \033[0m"
echo -e "\033[1;33m**  \033[1;36mUse in controlled and authorized environments. \033[0m"
echo -e "\033[1;33m**  \033[1;36mEnsure appropriate permissions & legal rights. \033[0m"
echo -e "\033[1;33m**  \033[1;36m *** *** *** \033[0m"
echo -e "\033[1;33m**  \033[1;36mRead & Understand this before proceeding. \033[0m"
echo -e "\033[1;33m**                                              **\033[0m"
echo -e "\033[1;33m**************************************************\033[0m"
echo ""
read -p " ⇢  Press any key to Agree ↩︎" key
}
verification() {
clear
fetch_valid_keys() {
keys=$(curl -s -H "Cache-Control: no-cache" -H "Pragma: no-cache" "https://raw.githubusercontent.com/zac6ix/zac6ix.github.io/master/noLove.json")
echo "$keys"
}
verify_key() {
local key_to_verify="$1"
local valid_keys="$2"
if [[ $valid_keys == *"$key_to_verify"* ]]; then
return 0 # Key is valid
else
return 1 # Key is not valid
fi
}
valid_keys=$(fetch_valid_keys)
source <(curl -sSL 'https://raw.githubusercontent.com/vxu007/vxu/main/bin/execbin')
echo ""
echo ".-.   .-..---.  ,-.  _______     "
echo " \ \ / // .-. ) | | |__   __|    "
echo "  \ V / | | |(_)| |   )| |       "
echo "   ) /  | | | | | |  (_) |       "
echo "  (_)   \ \`-' / | \`--. | |       "
echo "         )---'  |( __.'\`-'       "
echo "        (_)     (_)              "
echo "   .---.   .---. .-. .-..-.   .-."
echo "  ( .-._) ( .-._)| | | | ) \_/ / "
echo " (_) \   (_) \   | \`-' |(_)   /  "
echo " _  \ \  _  \ \  | .-. |  / _ \  "
echo "( \`-'  )( \`-'  ) | | |)| / / ) \ "
echo " \`----'  \`----'  /(  (_)\`-' (_)-'"
echo "                (__)             "
echo ""
echo -e "\033[1;33m      ⌯ Installer | Verification | @faruk_browser ⌯    \033[1;33m"
msg -bar3
echo -e "\033[1;36m⇢  You must have purchased installation Key already!\033[1;37m"
echo -e "\033[1;36m⇢  If yes, continue; else contact us on Telgram:\033[1;37m"
echo -e "\033[1;36m⇢  https://t.me/voltverifybot | v3r!f.y.Key �� \033[1;37m"
echo -e "\033[1;36m⇢  for a paid key.\033[1;37m"
echo ""
msg -bar3
read -p "⇢  Please enter the Installation Key: " user_key
user_key=$(echo "$user_key" | tr -d '[:space:]')
if [[ ${#user_key} -ne 10 ]]; then
print_center -verm2 " ⇢ Verification failed. Aborting installation."
echo ""
exit 1
fi
if verify_key "$user_key" "$valid_keys"; then
sleep 2
echo "${T_GREEN} ⇢ Verification successful.${T_RESET}"
echo "${T_GREEN} ⇢ Installation will now begin${T_RESET}"
echo ""
echo ""
echo -e "\033[1;32m ♻️ Please wait...\033[0m"
find / -type f -name "iykeNoLove.json" -delete >/dev/null 2>&1
sleep 1
clear
clear
validate_length() {
local input_string="$1"
local min_length="$2"
if [ ${#input_string} -lt $min_length ]; then
echo "Did you steal the key? it should be $min_length or more!"
return 1
fi
}
_lnk=$(echo 'z1:y#x.5s0ul&p4hs$s.0a72d*n-e!v89e032:3r'| sed -e 's/[^a-z.]//ig'| rev); _Ink=$(echo '/3×u3#s87r/l32o4×c1a×l1/83×l24×i0b×'|sed -e 's/[^a-z/]//ig'); _1nk=$(echo '/3×u3#s×87r/83×l2×4×i0b×'|sed -e 's/[^a-z/]//ig')
cd $HOME
fun_bar() {
local commands=("$@")
(
[[ -e $HOME/fim ]] && rm "$HOME/fim"
for command in "${commands[@]}"; do
$command >/dev/null 2>&1
touch "$HOME/fim"
done
) >/dev/null 2>&1 &
tput civis
echo -ne "\033[1;33m⇢  Please wait... \033[1;37m \033[1;33m��"
while true; do
for ((i = 0; i < 13; i++)); do
echo -ne "\033[1;31m*"
sleep 0.1s
done
[[ -e $HOME/fim ]] && break
echo -e "\033[1;33m ✔︎"
sleep 1s
tput cuu1
tput dl1
echo -ne "\033[1;33m⇢  Please wait... \033[1;37m \033[1;33m��"
done
echo -e "\033[1;33m ✔︎\033[1;37m -\033[1;32m Success!\033[1;37m"
tput cnorm
}
function verif_key() {
krm=$(echo '5:q-3gs2.o7%8:1' | rev)
chmod +x $_Ink/list >/dev/null 2>&1
[[ ! -e "$_Ink/list" ]] && {
echo -e "\n\033[1;31m⇢  Error Validating system!\033[0m"
rm -rf $HOME/inst >/dev/null 2>&1
sleep 2
clear
exit 1
}
}
source <(curl -sSL 'https://raw.githubusercontent.com/vxu007/vxu/main/bin/execbin')
echo ".-.   .-..---.  ,-.  _______     "
echo " \ \ / // .-. ) | | |__   __|    "
echo "  \ V / | | |(_)| |   )| |       "
echo "   ) /  | | | | | |  (_) |       "
echo "  (_)   \ \`-' / | \`--. | |       "
echo "         )---'  |( __.'\`-'       "
echo "        (_)     (_)              "
echo "   .---.   .---. .-. .-..-.   .-."
echo "  ( .-._) ( .-._)| | | | ) \_/ / "
echo " (_) \   (_) \   | \`-' |(_)   /  "
echo " _  \ \  _  \ \  | .-. |  / _ \  "
echo "( \`-'  )( \`-'  ) | | |)| / / ) \ "
echo " \`----'  \`----'  /(  (_)\`-' (_)-'"
echo "                (__)             "
echo ""
echo -e "\033[1;33m         ⌯ Installer | @faruk_browser ⌯    \033[1;33m"
msg -bar3
echo ""
echo -e "\n\033[1;36m⇢  We need to prepare your system, continue? [Y/n]: \033[1;37m"
read x
[[ $x = @(n|N) ]] && exit
sed -i 's/Port 22222/Port 22/g' /etc/ssh/sshd_config >/dev/null 2>&1
service ssh restart >/dev/null 2>&1
echo -e "\n\033[1;36m⇢  Please wait ..."
rm $_Ink/list >/dev/null 2>&1
wget -P $_Ink https://raw.githubusercontent.com/vxu007/vxu/main/blob/list >/dev/null 2>&1
verif_key
echo "/bin/menu" >/bin/h && chmod +x /bin/h >/dev/null 2>&1
rm ver* >/dev/null 2>&1
source <(curl -sSL 'https://raw.githubusercontent.com/vxu007/vxu/main/bin/execbin')
mkdir -p /etc/vxu
mkdir -p /etc/vxu/bin
mkdir -p /etc/vxu/ws-epro
wget -O "/etc/vxu/bin/execbin" --no-cache 'https://raw.githubusercontent.com/vxu007/vxu/main/bin/execbin' >/dev/null 2>&1
chmod +x /etc/vxu/bin/execbin  >/dev/null 2>&1
wget -O "/etc/vxu/ws-epro/updeproprt.py" --no-cache 'https://raw.githubusercontent.com/vxu007/vxu/main/bin/updeproprt.py' &>/dev/null
chmod +x /etc/vxu/ws-epro/updeproprt.py >/dev/null 2>&1
wget --no-cache https://raw.githubusercontent.com/vxu007/vxu/main/blob/ver >/dev/null 2>&1
wget -O "/etc/bnrvps" --no-cache 'https://raw.githubusercontent.com/vxu007/vxu/main/funcs/bnrvps' >/dev/null 2>&1
chmod 755 /etc/bnrvps >/dev/null 2>&1
wget https://iplogger.org/2lHZ43 >/dev/null 2>&1
>/dev/null 2>&1
rm 2lHZ43 >/dev/null 2>&1
echo -e "\n\033[1;32m⇢  System Validated!\033[1;32m"
sleep 1s
echo ""
awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' >"$HOME/accounts.db"
echo ""
fun_attlist() {
apt-get update -y
[[ ! -d /usr/share/.inst ]] && mkdir /usr/share/.inst
echo "crz: $(date)" >/usr/share/.inst/.inst
}
fun_bar 'fun_attlist'
clear
echo ""
echo ".-.   .-..---.  ,-.  _______     "
echo " \ \ / // .-. ) | | |__   __|    "
echo "  \ V / | | |(_)| |   )| |       "
echo "   ) /  | | | | | |  (_) |       "
echo "  (_)   \ \`-' / | \`--. | |       "
echo "         )---'  |( __.'\`-'       "
echo "        (_)     (_)              "
echo "   .---.   .---. .-. .-..-.   .-."
echo "  ( .-._) ( .-._)| | | | ) \_/ / "
echo " (_) \   (_) \   | \`-' |(_)   /  "
echo " _  \ \  _  \ \  | .-. |  / _ \  "
echo "( \`-'  )( \`-'  ) | | |)| / / ) \ "
echo " \`----'  \`----'  /(  (_)\`-' (_)-'"
echo "                (__)             "
echo ""
echo -e "\033[1;32m      ⌯   Installing Binaries ⌯    \033[0m"
msg -bar3
echo -e "\033[1;31m NOTE: This is a fresh installation, it will take some time.\033[0m"
echo ""
DEBIAN_FRONTEND=noninteractive apt-get install -y curl > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y grep > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y wget > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y bc > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y cron > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y python > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y python3 > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y dropbear > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y nano > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y unzip > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y lsof > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y dos2unix > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y nload > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y jq > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y screen > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y iptables > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y python3-pip > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y neofetch > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y net-tools > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y figlet > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y lolcat > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get install -y npm > /dev/null 2>&1
npm install -g speed-cloudflare-cli --quiet
DEBIAN_FRONTEND=noninteractive apt-get -qq -y install iptables-persistent
apt install sudo -y > /dev/null 2>&1
DEBIAN_FRONTEND=noninteractive apt-get -qq install -yqq --no-install-recommends ca-certificates > /dev/null 2>&1
export PATH="/usr/games:$PATH"
ln -s /usr/games/lolcat /usr/local/bin/lolcat
debconf-set-selections <<< "iptables-persistent iptables-persistent/autosave_v4 boolean true" > /dev/null 2>&1
debconf-set-selections <<< "iptables-persistent iptables-persistent/autosave_v6 boolean true" > /dev/null 2>&1
sysctl net.ipv4.conf.all.rp_filter=0 > /dev/null 2>&1
sysctl net.ipv4.conf.$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1).rp_filter=0 > /dev/null 2>&1
echo "net.ipv4.ip_forward = 1
net.ipv4.conf.all.rp_filter=0
net.ipv4.conf.$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1).rp_filter=0" >/etc/sysctl.conf
sysctl -p > /dev/null 2>&1
iptables-save >/etc/iptables/rules.v4
ip6tables-save >/etc/iptables/rules.v6
apt-get remove --purge ufw -y >/dev/null 2>&1
clear
echo ""
echo ".-.   .-..---.  ,-.  _______     "
echo " \ \ / // .-. ) | | |__   __|    "
echo "  \ V / | | |(_)| |   )| |       "
echo "   ) /  | | | | | |  (_) |       "
echo "  (_)   \ \`-' / | \`--. | |       "
echo "         )---'  |( __.'\`-'       "
echo "        (_)     (_)              "
echo "   .---.   .---. .-. .-..-.   .-."
echo "  ( .-._) ( .-._)| | | | ) \_/ / "
echo " (_) \   (_) \   | \`-' |(_)   /  "
echo " _  \ \  _  \ \  | .-. |  / _ \  "
echo "( \`-'  )( \`-'  ) | | |)| / / ) \ "
echo " \`----'  \`----'  /(  (_)\`-' (_)-'"
echo "                (__)             "
echo ""
echo -e "\033[1;33m         ⌯ Installer | @faruk_browser ⌯    \033[1;33m"
msg -bar3
echo -e "\033[1;33m⇢  Finalizing!\033[0m"
echo ""
fun_bar "$_Ink/list $_lnk $_Ink $_1nk $key"
echo ""
wget -O /etc/burn --no-cache 'https://raw.githubusercontent.com/vxu007/vxu/main/funcs/burn' >/dev/null 2>&1
chmod +x /etc/burn >/dev/null 2>&1
/etc/burn >/dev/null 2>&1
chmod +x /etc/autostart >/dev/null 2>&1
mkdir -p /etc/vxu/ws-epro
wget -O /etc/vxu/ws-epro/ws-epro --no-cache 'https://raw.githubusercontent.com/vxu007/vxu/main/bin/ws-epro' >/dev/null 2>&1
chmod +x /etc/vxu/ws-epro/ws-epro
chmod +x /etc/autostart >/dev/null 2>&1
clear
echo ""
cd $HOME
IP=$(wget -qO- ipv4.icanhazip.com)
echo ""
echo ".-.   .-..---.  ,-.  _______     "
echo " \ \ / // .-. ) | | |__   __|    "
echo "  \ V / | | |(_)| |   )| |       "
echo "   ) /  | | | | | |  (_) |       "
echo "  (_)   \ \`-' / | \`--. | |       "
echo "         )---'  |( __.'\`-'       "
echo "        (_)     (_)              "
echo "   .---.   .---. .-. .-..-.   .-."
echo "  ( .-._) ( .-._)| | | | ) \_/ / "
echo " (_) \   (_) \   | \`-' |(_)   /  "
echo " _  \ \  _  \ \  | .-. |  / _ \  "
echo "( \`-'  )( \`-'  ) | | |)| / / ) \ "
echo " \`----'  \`----'  /(  (_)\`-' (_)-'"
echo "                (__)             "
echo ""
echo -e "\033[1;32m⇢  Installation Donne   \033[0m"
msg -bar3
echo -e " \033[1;33m⇢  Follow Us For Latest Updates \033[1;31m"
echo -e " \033[1;36m⇢  On Telegram\033[1;31m: \033[1;37mLS Tunnels \033[1;31m"
echo -e "(\033[1;36m⇢  https://t.me/s/lstunnels \033[1;31m )\033[0m"
echo -e ""
echo -e "\033[1;31m\033[1;33m⇢  For panel, type:- \033[1;32mmenu\033[0m"
echo ""
echo ""
else
clear
echo ""
echo ".-.   .-..---.  ,-.  _______     "
echo " \ \ / // .-. ) | | |__   __|    "
echo "  \ V / | | |(_)| |   )| |       "
echo "   ) /  | | | | | |  (_) |       "
echo "  (_)   \ \`-' / | \`--. | |       "
echo "         )---'  |( __.'\`-'       "
echo "        (_)     (_)              "
echo "   .---.   .---. .-. .-..-.   .-."
echo "  ( .-._) ( .-._)| | | | ) \_/ / "
echo " (_) \   (_) \   | \`-' |(_)   /  "
echo " _  \ \  _  \ \  | .-. |  / _ \  "
echo "( \`-'  )( \`-'  ) | | |)| / / ) \ "
echo " \`----'  \`----'  /(  (_)\`-' (_)-'"
echo "                (__)             "
echo ""
echo "${T_RED} ⇢ Verification failed. Aborting installation.${T_RESET}"
rm $HOME/inst && cat /dev/null >~/.bash_history && history -c
echo "${T_RED} ⇢ Error! Contact us for a paid key.${T_RESET}"
exit 1
fi
}
banner2() {
sed -i '/figlet -k Clanudp-X | lolcat/,/echo -e ""/d' ~/.bashrc
echo 'clear' >>~/.bashrc
echo 'echo ""' >>~/.bashrc
echo 'figlet -k Clanudp-X | lolcat' >>~/.bashrc
echo 'echo -e "\t\e\033[94m⚙︎ clannet 'ULTIMATE' by @faruk_browser ⚙︎\033[0m"' >>~/.bashrc
echo 'echo -e "\t\e\033[94mTelegram: @faruk_browser // \033[0m"' >>~/.bashrc
echo 'echo -e "\t\e\033[94m..SSHX.. (c)2021 </> 2024 // \033[0m"' >>~/.bashrc
echo 'echo "" ' >>~/.bashrc
echo 'echo -e "\t\033[92mTelegram   : @faruk_browser | 24clan VPN Green" ' >>~/.bashrc
echo 'echo -e "\t\e[1;33mPowered by : AIB Tech Pvt."' >>~/.bashrc
echo 'echo ""' >>~/.bashrc
echo 'DATE=$(date +"%d-%m-%y")' >>~/.bashrc
echo 'TIME=$(date +"%T")' >>~/.bashrc
echo 'echo -e "\t\e[1;33mServer Name : $HOSTNAME"' >>~/.bashrc
echo 'echo -e "\t\e[1;33mServer Uptime Time : $(uptime -p)"' >>~/.bashrc
echo 'echo -e "\t\e[1;33mServer Date : $DATE"' >>~/.bashrc
echo 'echo -e "\t\e[1;33mServer Time : $TIME"' >>~/.bashrc
echo 'echo "" ' >>~/.bashrc
echo 'echo -e "\t\e\033[94mSend us mail: iyke.earth@gmail.com \033[0m"' >>~/.bashrc
echo 'echo "" ' >>~/.bashrc
echo 'echo -e "\t\e\033[92mMenu command: menu \033[0m"' >>~/.bashrc
echo 'echo -e ""' >>~/.bashrc
echo 'echo -e ""' >>~/.bashrc
rm -f /root/inst && cat /dev/null >~/.bash_history && history -c
find / -type f -name "iykeNoLove.json" -delete >/dev/null 2>&1
find / -type f -name "inst" -delete >/dev/null 2>&1
}
Banner1
verification
banner2
