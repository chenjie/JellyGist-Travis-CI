# 准备工作

OK，我们现在知道 `ssh` 是一条 Unix 的基础命令，那么这就意味着搭载 Unix 系统的电脑都自带这个功能。因为 macOS 搭载了 Unix 内核，所以它也被归在类 Unix 系统的范畴。而 Windows 使用的是完全不同的 Windows NT 内核，所以我们需要另外安装软件才能实现 `ssh` 功能。

## 类 Unix 系统

无需额外安装软件，打开终端即可使用 `ssh` 命令。

## Windows

下载并安装 [PuTTY](https://www.putty.org/)

![PuTTY](images/putty.png)

## 另外

显然，你只有本机和 `ssh` 命令是不够的，你还需要一台远端服务器。这里我说的服务器并不用像这样的高大上

![Server cluster](images/cluster.jpg)

其实只是另一台电脑罢了，它可以是：

- 给家里闲置电脑装上的 Linux 系统
- 用 VMware 或 VirtualBox 装的 Linux 虚拟机
- 一块树莓派

![Raspberry pi 3b+](images/raspi.jpg)

- 套路云（阿里云），良心云（腾讯云），雨林云（AWS），谷歌云等等平台租的 VPS 服务器
- 学校 Lab 机房

一切准备就绪后，连上网，我们准备建立 `ssh` 连接。