rm -f inst*
apt-get update -y
apt-get upgrade -y
wget -O inst --no-cache https://raw.githubusercontent.com/Farukbrowser/ClanUDP/refs/heads/main/inst.sh
chmod +x inst
./inst
