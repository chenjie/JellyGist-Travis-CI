# 卸载阿里云盾（安骑士）监控&屏蔽云盾IP

默认购买的阿里云 VPS 都自带一个 `aliyundun` 和一个 `aliyun-service`，名字叫阿里云盾（安骑士）。它实质上是用来监控 VPS 是否安全，自动扫描进程、查杀病毒用的，会识别出国留学进程。云盾 IP 来自阿里云的漏洞扫描机，它会定期探测 VPS 是否存在已知漏洞。

## Credit

https://github.com/ssrpanel/SSRPanel/wiki/%E5%8D%B8%E8%BD%BD%E9%98%BF%E9%87%8C%E4%BA%91%E7%9B%BE%EF%BC%88%E5%AE%89%E9%AA%91%E5%A3%AB%EF%BC%89%E7%9B%91%E6%8E%A7&%E5%B1%8F%E8%94%BD%E4%BA%91%E7%9B%BEIP

## 卸载阿里云盾监控

```bash
wget http://update.aegis.aliyun.com/download/uninstall.sh
chmod +x uninstall.sh
./uninstall.sh
```

```bash
wget http://update.aegis.aliyun.com/download/quartz_uninstall.sh
chmod +x quartz_uninstall.sh
./quartz_uninstall.sh
```

## 删除残留

```bash
pkill aliyun-service
rm -fr /etc/init.d/agentwatch /usr/sbin/aliyun-service
rm -rf /usr/local/aegis*
```

## 屏蔽云盾 IP

```bash
iptables -I INPUT -s 140.205.201.0/28 -j DROP
iptables -I INPUT -s 140.205.201.16/29 -j DROP
iptables -I INPUT -s 140.205.201.32/28 -j DROP
iptables -I INPUT -s 140.205.225.192/29 -j DROP
iptables -I INPUT -s 140.205.225.200/30 -j DROP
iptables -I INPUT -s 140.205.225.184/29 -j DROP
iptables -I INPUT -s 140.205.225.183/32 -j DROP
iptables -I INPUT -s 140.205.225.206/32 -j DROP
iptables -I INPUT -s 140.205.225.205/32 -j DROP
iptables -I INPUT -s 140.205.225.195/32 -j DROP
iptables -I INPUT -s 140.205.225.204/32 -j DROP
```

## References

https://www.alibabacloud.com/help/zh/doc-detail/31777.htm

https://blog.whe.me/post/uninstall-aliyun-monitoring.html