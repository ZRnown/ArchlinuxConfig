# About zsh

## 安装zim

curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

## 安装yshui版本的picom

git clone https://github.com/yshui/picom.git

## 安装feh nautilus flameshot qq clash yesplaymusic

wget https://github.com/qier222/YesPlayMusic/releases/download/v0.4.7/YesPlayMusic-0.4.7.AppImage

sudo pacman -S feh nautilus flameshot

## 小鹤双拼
git clone https://github.com/ssnhd/rime.git ~/.config/fcitx5/rime

## 字体
sudo pacman -S ttf-cascadia-code

## rofi主题
### oranchelo图标主题
git clone https://github.com/OrancheloTeam/oranchelo-icon-theme.git
cd oranchelo-icon-theme
sudo make
sudo make install

git clone https://github.com/catppuccin/rofi.git
