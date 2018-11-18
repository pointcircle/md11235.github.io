# 在windows上用cygwin自动安装多个软件包

适合于在新机器上部署 `*nix` 环境时使用。

## 初始化cygwin安装

在Windows下，下载好setup-x86_64.exe (以win64为例），然后在命令行运行：

```shell
D:\用户目录\下载>setup-x86_64.exe -s https://mirrors.tuna.tsinghua.edu.cn/cygwin-R "d:\cygwin64" -P tmux -P vim -P git -P zsh -P openssh -P wget -P curl -q
```


参数解释：

* -s 指定镜像，这里用的清华大学的。
* -R 指定在本机硬盘上安装的位置
* -P 指定需要安装的包，如果有多个包要安装，则使用多个-P
* -q 静默安装，不提示

## 安装常用脚本

```shell
cd ~
wget https://raw.githubusercontent.com/transcode-open/apt-cyg/master/apt-cyg
install apt-cyg /bin
```
