# uname

长期使用 Windows 的朋友一定非常熟悉以下几张图，现在我们来**看图猜系统版本**。

![winxp-desktop](uname/winxp.jpg)

![winvista-desktop](uname/winvista.jpg)

![win7-desktop](uname/win7.jpg)

![win10-desktop](uname/win10.jpg)

Yes, 系统版本依次是 XP -> Vista -> 7 -> 10. 那么好奇的你一定会问，Unix 的系统版本怎么看呢？其实，这么问有些含糊，因为类似 Unix 和 Linux 的系统内都有两个版本，一个是`发行的系统版本`，另一个则是`内核版本`。举个例子，Ubuntu 16.04 是发行版的版本号，它既可以搭载 4.10 版本的内核，也可以编译并升级到更新的版本，比如 4.15 版本的内核。更多 Linux 内核版本可以参阅 Torvalds 的 GitHub [链接](https://github.com/torvalds/linux/releases)。

## 发行版本

查看系统的发行版本在不同系统中方法不一，比较常见的 Ubuntu 系统可以用 lsb_release 来获取：

```bash
$ lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 16.04.5 LTS
Release:	16.04
Codename:	xenial
```

## 内核版本

```bash
$ uname -a
Linux wolf 4.15.0-39-generic #42~16.04.1-Ubuntu SMP Wed Oct 24 17:09:54 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
```