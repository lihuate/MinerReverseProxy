# Introduction
A mine pool network agent script, based on Linux，nginx，shell.

Support multi pool address, SSL, TLS, multi port, etc.

Support ETH, RVN, GRIN, BEAM, CFX, ZIL, ERGO, AE, SERO.................

# Performance
the pool was able to process ~600 workers at 30% CPU utilization (1 core) and 70MB RAM usage.

# Pull requests & possible optimizations
If you find any issues with the pool software please feel free to issue a pull request.

# Setup guide

System Required:  centos 6.x x64    /   Ubuntu

 用法1
 
ssh登入vps执行:
```
wget --no-check-certificate -O wubbaR https://raw.githubusercontent.com/lihuate/linux-ethpool-proxy-One-click-Install-wubbaPool-Server/main/wubbaR && chmod 777 wubbaR && bash wubbaR
```
---------------------------------------------------------------
# 用法2 
centos
```
 yum install git -y
```
# ubuntu
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
# After installation

## Nbmner

```
nbminer -a ethash -o stratum+ssl://43.132.2xx.2xx:2020  -o stratum+ssl://101.132.2xx.2xx:2023 -u WALLET_ADDRESS.WORKER_NAME -log
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

ctrl cv 的shell 非常垃圾，如果我有时间我会用c++重构。。。

bug提交群(建议自己修😒):https://jq.qq.com/?_wv=1027&k=wgQnoL7S 
