if [ ! -x python ]; then
    apt install python
fi
apt-get install git
git clone https://github.com/hxzmm/shadowsocksr.git
cd ./shadowsocksr
bash initcfg.sh
wget -O /etc/init.d/shadowsocks https://raw.githubusercontent.com/hxzmm/shadowsocksr/manyuser/install/shadowsocks 
chmod 755 /etc/init.d/shadowsocks; update-rc.d shadowsocks defaults; service shadowsocks start
