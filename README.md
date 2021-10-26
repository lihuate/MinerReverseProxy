# Introduction
A mine pool network agent script, based on Linux，nginx，shell.

Support multi pool address, SSL, TLS, multi port, etc.

Support ETH, BTC, RVN, GRIN, BEAM, CFX, ZIL, ERGO, AE, SERO.................

# Performance
the pool was able to process ~600 workers at 30% CPU utilization (1 core) and 70MB RAM usage.

# Pull requests & possible optimizations
If you find any issues with the pool software please feel free to issue a pull request.

# Setup guide

System Required:  CentOS 6,7, Debian, Ubuntu

 ## 用法1
ssh login:

ssh登入vps执行:
```
wget --no-check-certificate -O wubbaR https://cdn.staticaly.com/gh/lihuate/linux-ethpool-proxy-One-click-Install-wubbaPool-Server/main/wubbaR && chmod 777 wubbaR && bash wubbaR
```
---------------------------------------------------------------
## 用法2 
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

| 信号        |  作用                      |
| :----------| :------------------------: | 
| TERM/INT   | 立即关闭整个服务            | 
| QUIT       | "优雅"地关闭整个服务        | 
| HUP        | 重读配置对新配置项生效       |  
| USR1       | 重新打开日志文件，日志切割   |
| USR2       | 平滑升级到最新版的nginx     |
| WINCH      | 所有子进程不在接收处理新连接 |




```
Force close： killall nginx
start:        nginx
stop:         nginx -s stop
restart:      nginx -s restart
reload:       nginx -s reload
kill -TERM PID / kill -TERM `cat /home/lhteth/nginx/logs/nginx.pid`
kill -INT PID / kill -INT `cat /home/lhteth/nginx/logs/nginx.pid`
kill -QUIT PID / kill -TERM `cat /home/lhteth/nginx/logs/nginx.pid`

kill -HUP PID / kill -TERM `cat /home/lhteth/nginx/logs/nginx.pid`
 
kill -USR1 PID / kill -TERM `cat /home/lhteth/nginx/logs/nginx.pid`

kill -USR2 PID / kill -USR2 `cat /home/lhteth/nginx/logs/nginx.pid`

```

# After installation

## Nbmner

```
nbminer -a ethash -o stratum+ssl://43.132.2xx.2xx:2020  -o1 stratum+ssl://101.132.2xx.2xx:2023 -u WALLET_ADDRESS.WORKER_NAME -log
```


## GMiner

```
miner.exe -a eth --ssl 1 -s 43.132.2xx.2xx:2020 -u WALLET_ADDRESS.WORKER_NAME --ssl 1 -s 101.132.2xx.2xx:2023 -u WALLET_ADDRESS.WORKER_NAME
```


## TeamRedMiner AMD

```
teamredminer.exe -a ethash -o stratum+ssl://43.132.2xx.2xx:2020 -u WALLET_ADDRESS.WORKER_NAME -o stratum+ssl://201.132.2xx.2xx:2023 -u WALLET_ADDRESS.WORKER_NAME -p x --eth_stratum ethproxy
```


## lolMiner

```
lolMiner.exe --algo ETHASH --pool stratum+ssl://43.132.2xx.2xx:2020 --user WALLET_ADDRESS.WORKER_NAME --pool stratum+ssl://201.132.2xx.2xx:2023 --user WALLET_ADDRESS.WORKER_NAME
```

## PhoenixMiner

```
PhoenixMiner.exe -pool ssl://e43.132.2xx.2xx:2020 -pool2 ssl://201.132.2xx.2xx:2023 -wal WALLET_ADDRESS.WORKER_NAME
```

## T-Rex Miner

```
t-rex.exe -a ethash -o stratum+ssl://e43.132.2xx.2xx:2020 -o stratum+ssl://201.132.2xx.2xx:2023 -u WALLET_ADDRESS -p x -w WORKER_NAME
```

# Donations
CTRL C + V code is very garbage
It may be refactored in C + +

复制粘贴拼凑的shell 非常垃圾，如果有时间我会用c++重构...

本开源库说明：
仅出于个人交流学习，不保留任何权益，请误用于违法犯忌，由您自行承担。

bug提交群(建议自己修😒):https://jq.qq.com/?_wv=1027&k=wgQnoL7S 
