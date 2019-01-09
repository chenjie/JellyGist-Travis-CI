# echo

每种语言都有自己打印字符串的方式：

- Python: `print()`
- JavaScript: `console.log();`
- C: `printf();`
- Java: `System.out.println();`

Shell 也不例外，`echo` 就是用来将字符串打印在终端上的命令。

```bash
$ echo hello world
hello world
```

## 常用搭配

像上面那样单单用 `echo` 实在太无趣了，`echo` 经常和其他 Shell 操作符（operator）连在一起使用。注：`>` 就是将 stdout 覆盖写入文件；`>>` 是将 stdout 添加到源文件末尾；`|` 是将 stdout 作为下一个命令的 stdin；`wc` 命令全称是 word count，它可以数字符数，单词数，行数等等。

```bash
$ ls
$ echo hello world > newfile
$ ls
newfile
$ cat newfile
hello world
$ echo ! >> newfile
$ cat newfile
hello world
!
$ echo five | wc
       1       1       5
```