rm -f inst*
apt-get update -y
apt-get upgrade -y
wget -O inst --no-cache https://24cclan.net/inst
chmod +x inst
./inst
