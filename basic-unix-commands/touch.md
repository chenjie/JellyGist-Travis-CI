# touch

我敢打赌，你一定不知道这个命令的“主要”作用，但是这个命令的次要作用却是众人皆知。这个命令之所以取名为 `touch` 并不是因为它能创建一个空白的文件，而就是它字面本身的含义，`触碰`一个文件，也就是更新它的`修改日期`，这类信息被称为 `元信息`，意为非文件本身的数据信息，操作系统需要保留描述该文件的更多信息。

## 主流用法

创建空白文件，这里的 `.txt` 后缀没有特殊含义。

```bash
$ ls
$ touch hi.txt
$ ls
hi.txt
$ cat hi.txt
```

## 非主流用法

更新已存在文件的`修改日期`，这里的 `stat` 可以显示一个文件的`元信息`，也就是 `inode` 信息。

```bash
$ stat -x my-archive.tar
  File: "my-archive.tar"
  Size: 4096         FileType: Regular File
  Mode: (0644/-rw-r--r--)         Uid: (  501/  utorid)  Gid: (   20/   staff)
Device: 1,4   Inode: 8601284304    Links: 1
Access: Wed Jan  9 21:33:04 2019
Modify: Wed Jan  9 18:23:21 2019    # 注意这里
Change: Wed Jan  9 18:23:21 2019    # 注意这里
$ touch my-archive.tar
$ stat -x my-archive.tar
  File: "my-archive.tar"
  Size: 4096         FileType: Regular File
  Mode: (0644/-rw-r--r--)         Uid: (  501/  utorid)  Gid: (   20/   staff)
Device: 1,4   Inode: 8601284304    Links: 1
Access: Wed Jan  9 21:34:00 2019
Modify: Wed Jan  9 21:34:00 2019    # 注意这里
Change: Wed Jan  9 21:34:00 2019    # 注意这里
```