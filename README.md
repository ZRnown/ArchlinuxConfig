# About zsh

## 安装zim
```bash
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```
## 安装yshui版本的picom
```bash
git clone https://github.com/yshui/picom.git
```
## 安装feh nautilus flameshot qq clash yesplaymusic
```bash
wget https://github.com/qier222/YesPlayMusic/releases/download/v0.4.7/YesPlayMusic-0.4.7.AppImage

sudo pacman -S feh nautilus flameshot
```
## 小鹤双拼
```baash
git clone https://github.com/ssnhd/rime.git ~/.config/fcitx5/rime
```
## 字体
```bash
sudo pacman -S ttf-cascadia-code
```
## rofi
### oranchelo图标主题
```bash
git clone https://github.com/OrancheloTeam/oranchelo-icon-theme.git
cd oranchelo-icon-theme
sudo make
sudo make install

git clone https://github.com/catppuccin/rofi.git
```
### drun添加软件
你可以手动创建一个 .desktop 文件，并将其放置在 /usr/share/applications 目录下，以便使用 Rofi 的 "drun" 模式启动应用程序。以下是创建一个简单的 .desktop 文件的步骤：
```bash
nvim /usr/share/applications/qq.desktop
```
```
[Desktop Entry]
Name=QQ
Exec=/home/your_username/software/qq.appimage
Type=Application
Icon=/path/to/qq/icon.png
```

### 鼠标灵敏度
```bash
xinput list
xinput --set-prop "设备ID" "libinput Accel Speed" -0.5
```
## 需要安装的东西
```bash
sudo pacman -S Hightlight fzf feh fd zsh lolcat
```
## 配置环境变量

```bash
sudo nvim /etc/environment
```
```
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
SDL_IM_MODULE=fcitx
GLFW_IM_MODULE=ibus
https_proxy=http://127.0.0.1:7890
http_proxy=http://127.0.0.1:7890
```
## GRUB引导界面美化

在https://www.pling.com/p/1230882下载主题
接下来 cd 进解压出来的文件夹，打开 终端 输入
```bash
sudo cp . /usr/share/grub/themes/Distro -rf
```

以将主题放置在系统的 GRUB 默认文件夹内。

接着编辑 /etc/default/grub 文件，找到 #GRUB_THEME= 一行，将前面的注释去掉，并指向主题的 theme.txt 文件。即

```
#GRUB_THEME=
GRUB_THEME="/usr/share/grub/themes/Distro/theme.txt" #修改后
```
然后再在终端输入
```bash
grub-mkconfig -o /boot/grub/grub.cfg
```
