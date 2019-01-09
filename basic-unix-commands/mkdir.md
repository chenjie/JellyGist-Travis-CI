# mkdir

刚才讲了 `touch` 命令是用来创建空白文件，现在 `mkdir` 命令是用来创建空文件**夹**。

## 举个栗子

现在我想创建这样一个文件夹结构：

```bash
$ tree .
.
└── level-one
    └── level-two
        └── level-three
```

就是当前工作路径下有一个 `level-one` 文件夹，然后它的下面有 `level-two`，`level-two` 下面有 `level-three`.

### 第一种笨办法

```bash
$ mkdir level-one
$ cd level-one/
$ mkdir level-two
$ cd level-two/
$ mkdir level-three
$ cd ../..
$ ls
level-one
$ tree .
.
└── level-one
    └── level-two
        └── level-three

3 directories, 0 files
```

### 第二种基本操作

`-p` flag 可以一步到位，自动创建所有中间文件夹。

```bash
$ mkdir -p level-one/level-two/level-three
$ tree .
.
└── level-one
    └── level-two
        └── level-three

3 directories, 0 files
```