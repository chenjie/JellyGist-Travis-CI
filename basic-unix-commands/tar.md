# tar

Windows 下最好用的压缩工具是什么？WinRAR (＾－＾)V，而 Unix 下的皇冠👑就非 `tar` 莫属了。PS: 写到这我还是忍不住重温一个老梗 `WinRARsetup.rar`。

`tar` 可以将零碎的文件打包，适合在传输文件前执行，这样能加快传输速度，减少每个零碎文件握手的 overhead (大家意会一下，这里实在不知道怎么用中文表达了TAT)。

## Flag 解释

### 一般

| Flag | 怎么记 | 含义 |
|------|-------|-----|
| -v | verbose | 啰嗦模式 |
| -f | file | 后面跟文件名（路径） |

### 模式

| Flag | 怎么记 | 含义 |
|------|-------|-----|
| -c | create | 创建压缩包 |
| -t | t偷看（我瞎编的） | 仅浏览不解压 |
| -x | extract | 解压缩至磁盘 |

### 编码

| Flag | 怎么记 | 含义 |
|------|-------|-----|
| -z | 后缀 `.gz` | 使用 `gzip` 压缩 |
| -j | - | 使用 `bzip2` 压缩，后缀 `.bz2` |

## 准备工作

```bash
$ tree
# 当前工作路径下有两个文件夹 dir1 和 dir2，里面分别有两个文件 file1 和 file2.
.
├── dir1
│   └── file1
└── dir2
    └── file2
$ cat dir1/file1
hello, world
$ cat dir2/file2
hello, jack
```

## 只打包不压缩

将 `dir1` 和 `dir2` 打包成一个文件 `my-archive.tar`。

```bash
$ tar -cvf my-archive.tar dir1 dir2
a dir1
a dir1/file1
a dir2
a dir2/file2
$ ls -l my-archive.tar
-rw-r--r--  1 utorid  staff  4096  9 Jan 18:15 my-archive.tar
```

## 使用 `gzip` 压缩

注意 flag 多了个 `z`.

```bash
$ tar -zcvf my-archive.tar.gz dir1 dir2
a dir1
a dir1/file1
a dir2
a dir2/file2
$ ls -l my-archive.tar.gz
-rw-r--r--  1 utorid  staff  216  9 Jan 18:19 my-archive.tar.gz
```

## 使用 `bzip2` 压缩

注意 flag 多了个 `j`. 由于这里需要压缩的文件太小，所以不同的编码方式没有可比性。

```bash
$ tar -jcvf my-archive.tar.bz2 dir1 dir2
a dir1
a dir1/file1
a dir2
a dir2/file2
$ ls -l my-archive.tar.bz2
-rw-r--r--  1 utorid  staff  222  9 Jan 18:21 my-archive.tar.bz2
```

## 浏览压缩包中的内容

```bash
$ ls
dir1               dir2               my-archive.tar     my-archive.tar.bz2 my-archive.tar.gz
$ tar -tf my-archive.tar
dir1/
dir1/file1
dir2/
dir2/file2
$ tar -tf my-archive.tar.bz2
dir1/
dir1/file1
dir2/
dir2/file2
$ tar -tf my-archive.tar.gz
dir1/
dir1/file1
dir2/
dir2/file2
```

## Unix 解压缩秘籍

| 后缀 | 解压缩方式 |
|-----|----------|
| `.tar` | `tar –xvf <压缩包文件名>` |
| `.gz` | `gzip -d <压缩包文件名>` |
| `.tar.gz` 和 `.tgz` | `tar –xzf <压缩包文件名>` |
| `.bz2` | `bzip2 -d <压缩包文件名>` |
| `.tar.bz2` | `tar –xjf <压缩包文件名>` |
| `.rar` | `unrar x <压缩包文件名>` |
| `.zip` | `unzip <压缩包文件名>` |
