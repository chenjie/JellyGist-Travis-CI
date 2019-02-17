# cd

命令行中打开一个文件夹是再简单不过的事情，熟练运用 `cd` 命令可以让你操作起 Linux 来得心应手。

## 绝/相对路径

`cd` 命令后面既可以跟`绝对路径`，也可以跟`相对路径`。区分两者的方式很简单，如果该路径是以 `/` 开头的，那么它就是绝对路径，例如 `/etc/apache2`. 反之，不以 `/` 开头的就是相对路径，相对指的是相对于当前工作路径，也就是 Current Working Directory (CWD)，也就是 `pwd` 命令输出的路径。

## 常见目录

1. `~` 代表 HOME 目录，也就是你自己的家🏠，你对这个目录下的所有东西都是拥有绝对掌控权的，换句话说，你可以删除、修改、添加此目录下的任何文件。注：`cd` 后不跟任何东西会默认为 `cd ~`，也就是进入 `HOME` 路径。

2. `/` 代表 root 目录，是整个文件系统的根，也就是说 `/` 的 `..` 还是他自己。添加或改动根目录下的文件一般都是需要 root 用户权限的，也就是所谓的超级权限，Android 手机的 root 就是获取 root 用户权限的过程。

## 小技巧

1. 一般 `cd` 是结合 `ls` 来使用的，先用 `ls` 来查看当前路径下有哪些文件和文件夹，然后使用`相对路径`来 `cd` 进去，比如

    ```bash
    $ pwd
    /etc/apache2
    $ ls
    apache2.conf	conf-enabled  magic	      mods-enabled  sites-available
    conf-available	envvars       mods-available  ports.conf    sites-enabled
    $ cd sites-available/
    $ ls
    000-default.conf  default-ssl.conf
    ```

2. `-` 可以用来帮你回到你上一次 `cd` 的目录。

    ```bash
    $ cd
    $ pwd
    /h/u11/c5/00/nichenji
    $ cd /etc/apache2/
    $ cd -
    /h/u11/c5/00/nichenji
    $ pwd
    /h/u11/c5/00/nichenji
    ```

3. `pushd` 与 `popd` 的相关用途。

    ```bash
    $ cd workspace/                     # 这里我想进入 workspace 开始工作
    $ pwd
    /h/u11/c5/00/nichenji/workspace
    $ pushd .                           # 我突然想起来先要去另外的路径移动一个文件，我一会儿还要回来，所以先保存起来
    ~/workspace ~/workspace
    $ cd ..
    $ ls demo.txt
    demo.txt
    $ cd Downloads/
    $ mv ../demo.txt .
    $ pwd
    /h/u11/c5/00/nichenji/Downloads
    $ popd                              # 做完别的事情之后再回到工作区 workspace
    ~/workspace
    $ pwd
    /h/u11/c5/00/nichenji/workspace
    ```