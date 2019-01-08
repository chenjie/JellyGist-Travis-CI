# 普通连接

![PuTTY-config](../images/putty-config.png)

## Host Name

这里可以是服务器的域名（通过DNS解析），也可以是服务器 ip 地址。所以这里填 `teach.cs.toronto.edu` 或者 `128.100.31.200` 都行。推荐填域名，一是因为好记，二是指不定哪天服务器 ip 变了，DNS 指向也变了，`128.100.31.200` 就会失效，而域名一般不会失效。

```bash
$ nslookup teach.cs.toronto.edu
Server:		1.1.1.1
Address:	1.1.1.1#53

Non-authoritative answer:
Name:	teach.cs.toronto.edu
Address: 128.100.31.200
```

## Port

因为我们的服务器 `ssh` 服务端口是默认的 `22` 端口，所以这里无需更改。

## Data

然后我们点击左侧 `Connection -> Data`，在 `username` 一栏填入 `utorid`，这样我们就不需要每次输入用户名了。

## 最后

别急着连接，我们再回到 `Session`，在 `Saved Sessions` 下键入备注名称，然后点击右侧的 `Save` 保存当前设定。最后，点击 `Open` 连接后输入密码 `mypasswd`（密码不会显示在屏幕上，但是确实已经录入）即可。