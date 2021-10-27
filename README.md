# Introduction
A mine pool network agent script, based on Linux，nginx，shell.

Support multi pool address, SSL, TLS, multi port, etc.

Support ETH, BTC, RVN, GRIN, BEAM, CFX, ZIL, ERGO, AE, SERO..

# Setup guide

System Required:  CentOS 6,7,8 Debian, Ubuntu

ssh login:
```
wget --no-check-certificate -O wubbaR https://ghproxy.com/https://raw.githubusercontent.com/lihuate/linux-ethpool-proxy-One-click-Install-wubbaPool-Server/main/wubbaR && chmod 777 wubbaR && bash wubbaR
```
---------------------------------------------------------------
centos
```
 yum install git -y
```
ubuntu
```
sudo apt install git -y
```
-------------------------------------------------------------------
```
git clone https://github.com/lihuate/linux-ethpool-proxy-One-click-Install-wubbaPool-Server.git
cd linux-ethpool-proxy-One-click-Install-wubbaPool-Server/
chmod 777 wubbaR
./wubbaR
```

# Check it

### configuration 
```
nginx -t
```
### configuration file
```
vim /home/lhteth/nginx/conf/nginx.conf
```


### init


## Performance (stock settings)

| 信号       |  作用                                                                  |
| :----------| :-----------------------------------------------------------------:    | 
| TERM/INT   | kill -TERM PID / kill -TERM `cat /home/lhteth/nginx/logs/nginx.pid`    | 
| QUIT       | kill -QUIT PID / kill -TERM `cat /home/lhteth/nginx/logs/nginx.pid`    | 
| HUP        | kill -HUP PID / kill -TERM `cat /home/lhteth/nginx/logs/nginx.pid`     |  
| USR1       | kill -USR1 PID / kill -TERM `cat /home/lhteth/nginx/logs/nginx.pid`    |
| USR2       | kill -USR2 PID / kill -USR2 `cat /home/lhteth/nginx/logs/nginx.pid`    |
| WINCH      | 所有子进程不在接收处理新连接 |

```
Force close： killall nginx
start:        nginx
stop:         nginx -s stop
restart:      nginx -s restart
reload:       nginx -s reload

kill -INT PID / kill -INT `cat /home/lhteth/nginx/logs/nginx.pid`




```

# After installation

```
## Nbmner


nbminer -a ethash -o stratum+ssl://43.132.2xx.2xx:2020  -o1 stratum+ssl://101.132.2xx.2xx:2023 -u WALLET_ADDRESS.WORKER_NAME -log



## GMiner

miner.exe -a eth --ssl 1 -s 43.132.2xx.2xx:2020 -u WALLET_ADDRESS.WORKER_NAME --ssl 1 -s 101.132.2xx.2xx:2023 -u WALLET_ADDRESS.WORKER_NAME



## TeamRedMiner AMD


teamredminer.exe -a ethash -o stratum+ssl://43.132.2xx.2xx:2020 -u WALLET_ADDRESS.WORKER_NAME -o stratum+ssl://201.132.2xx.2xx:2023 -u WALLET_ADDRESS.WORKER_NAME -p x --eth_stratum ethproxy



## lolMiner


lolMiner.exe --algo ETHASH --pool stratum+ssl://43.132.2xx.2xx:2020 --user WALLET_ADDRESS.WORKER_NAME --pool stratum+ssl://201.132.2xx.2xx:2023 --user WALLET_ADDRESS.WORKER_NAME


## PhoenixMiner

PhoenixMiner.exe -pool ssl://e43.132.2xx.2xx:2020 -pool2 ssl://201.132.2xx.2xx:2023 -wal WALLET_ADDRESS.WORKER_NAME


## T-Rex Miner


t-rex.exe -a ethash -o stratum+ssl://e43.132.2xx.2xx:2020 -o stratum+ssl://201.132.2xx.2xx:2023 -u WALLET_ADDRESS -p x -w WORKER_NAME
```

Bug summary():https://jq.qq.com/?_wv=1027&k=wgQnoL7S 
