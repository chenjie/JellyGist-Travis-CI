# 进阶技能二

OK，我们现在 `ssh` 连接不需要手动打密码了，但是发起连接的命令 `ssh utorid@teach.cs.toronto.edu` 还是要手动输入，惰性使然，那么现在就让我们来着手解决它。

将以下代码片段添加到 `~/.ssh/config` 末尾：（这里的 `cdf` 就是你想给它起的别名）

```markup
Host cdf
    HostName teach.cs.toronto.edu
    User utorid
```

然后直接连接

```bash
$ ssh cdf
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

歪歪爽~