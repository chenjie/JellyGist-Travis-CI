# 进阶技能一

无密码登录原理参阅 Windows 下的进阶技能，具体设置方法如下：

## 生成公钥和私钥

如果你登录时不想输入密码，那这里的密钥对 passphrase 应该留空。

```bash
$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/utorid/.ssh/id_rsa): # 这里留空
Enter passphrase (empty for no passphrase): # 这里留空
Enter same passphrase again: # 这里留空
Your identification has been saved in id_rsa.
Your public key has been saved in id_rsa.pub.
The key fingerprint is:
SHA256:GKW7yzA1J1qkr1Cr9MhUwAbHbF2NrIPEgZXeOUOz3Us XXX@XXX
The key's randomart image is:
+---[RSA 2048]----+
|.*++ o.o.        |
|.+B + oo.        |
| +++ *+.         |
| .o.Oo.+E        |
|    ++B.S.       |
|   o * =.        |
|  + = o          |
| + = = .         |
|  + o o          |
+----[SHA256]-----+
```

## 添加到远端 `authorized_keys` 中

```bash
$ ssh-copy-id utorid@teach.cs.toronto.edu
utorid@teach.cs.toronto.edu's password: # 这里输入 mypasswd
```

恭喜你，进阶技能get!