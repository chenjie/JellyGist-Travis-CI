# GDB in macOS High Sierra

众所周知，GDB 对 macOS 并不友好，这导致最新版 v8.2.1 在 macOS 中出现奇怪的错误。

## 解决方式

将 `gdb` 降级到 v8.0.1，具体操作方式看我博客中的教程。[[Link](https://nichenjie.com/c/how-to-install-gdb-in-macos-high-sierra/)]

是的呢，我还特地为此写了一篇教程！！

## 耗时

一亿个脑细胞

## Valgrind

这里顺带一提它的兄弟 `valgrind`，安装过程多么简洁。GDB 你丫的学着点！

```bash
brew install valgrind
```