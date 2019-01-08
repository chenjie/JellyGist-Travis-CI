# 普通连接

用法：ssh <用户名>@<服务器域名>，然后输入密码即可。这里默认22端口，如果需要将端口改变为1234，那么运行 `ssh -p 1234 <用户名>@<服务器域名>`。

```bash
$ ssh utorid@teach.cs.toronto.edu
utorid@teach.cs.toronto.edu's password:
    Type "faq" to view FAQ, and "rules" to view usage policy.
    Report system problems by sending email to <sysadmin@teach.cs.toronto.edu>.

The Teaching Labs are: BA2200 BA2210 BA2220 BA2240 BA2270 BA3175 BA3185 BA3195 BA3200

This is a shared Linux system. By using this system, you acknowledge that
some information about your computer account (e.g. login name, process data,
etc.) will be available to other users sharing this system, in ways
typical of shared Linux systems.

Last login: Mon Jan  7 10:27:25 2019 from 116.235.140.187
utorid@wolf:~$
```