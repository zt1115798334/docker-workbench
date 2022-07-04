cluster-announce-ip 为宿主机的IP 
### 查看cluster nodes
`cluster nodes`


/usr/bin/redis-cli --cluster create 主服务器ip地址:端口号 主服务器ip地址:端口号 主服务器ip地址:端口号 从服务器ip地址:端口号 从服务器ip地址:端口号 从服务器ip地址:端口号 --cluster-replicas 1


redis-cli -a Abc@123456 --cluster create \
192.168.108.57:6381 192.168.108.57:6382 192.168.108.57:6383 \
192.168.108.57:6384 192.168.108.57:6385 192.168.108.57:6386 \
--cluster-replicas 1

https://www.cnblogs.com/kendoziyu/p/15807623.html
https://www.cnblogs.com/kendoziyu/p/15826862.html
