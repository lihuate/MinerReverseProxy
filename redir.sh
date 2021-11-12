systemctl stop firewalld.service
systemctl disable firewalld.service

yum install gcc g++ -y
yum -y install automake
yum -y install autoconf


wget https://github.com/troglobit/redir/releases/download/v3.3/redir-3.3.tar.xz
tar -xvf redir-3.3.tar.xz
cd redir-3.3
./configure --prefix=/usr
make
make install

echo "查矿池IP：http://ip.tool.chinaz.com/eth-kr.flexpool.io （有多个就随便选一个）"

echo "用法例：sudo redir -I flexpool :22333 13.209.102.128:5555  "
