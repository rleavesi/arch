Arch

```shell
# 装机
sudo pacman-mirrors -i -c China
sudo pacman -Syyu
sudo pacman -S cudn cudnn
sudo pacman -S wqy-microhei # 语言
```

```shell	
# 常用软件安装
yay -Sy miniconda3
tee -a  ~/.bashrc <<<  "source /opt/miniconda3/etc/profile.d/conda.sh"


sudo pacman -Sy git
git config --global user.name "rleavesi"
git config --global user.email "2045000244@qq.com"
ssh-keygen -t rsa -C "2045000244@qq.com"

# vim
yay -S vim-plug fzf vim-sneak vim-signify
yay -Sy visual-studio-code-bin
yay -S compton # 透明终端
yay -Sy nitrogen  # 壁纸管理软件
yay -Sy fish  # fish shell # set fish_greeting
yay -Sy google-chrome-stable  # 谷歌浏览器
yay -Sy screengrab  # 截图软件
yay -Sy gget  # 下载工具
yay -Sy manjaro-setting-manager  # 系统设置
yay -Sy lighttdm-setting  # 登入界面设置
yay -Sy lxappearance  # 外观设置
yay -Sy pcmanfm  # 文件管理器
yay -Sy debtap # deb包 
yay -S baidunetdisk-electron
yay -S wechat
yay -S dingtalk
yay -S deepin-screenshot # 截图
tee -a ~/.i3/config <<< "bindsym $mod+Shift+A exec --no-startup-ed deepin-screenshot"
```

```shell
# 中文输入法配置
sudo pacman -S fcitx-im fcitx-configtool fcitx-sunpinyin
sudo /usr/bin/fcitx-autostart
echo "exec_always fcitx" | tee -a ~/.i3/config
echo "GTK_IM_MODULE DEFAULT=fcitx" | tee -a ~/.xprofile
echo "QT_IM_MODULE  DEFAULT=fcitx" | tee -a ~/.xprofile
echo "XMODIFIERS    DEFAULT=@im=fcitx" | tee -a ~/.xprofile
reboot
```

```shell
# 更改默认浏览器
vim ~/.config/mimeapps.list
:%s/userapp-Pale Moon/google-chrome-stable/
tee -a ~/.profile <<< "export BROWSER="/usr/bin/google-chrome-stable""
```

```shell
1.终端输入如下指令(没装vim先自行装上)
vim ～/.profile
export EDITOR=/usr/bin/vim
注意：此处个人注释掉了nano，看下面截图

vim ~/.bashrc
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
注意：此处在最后两行添加此处指令
```

```shell
# qq
yay -S icalingua++
```

```shell
# Mysql

sudo pacman -S mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mysqld
sudo mysqladmin -u root password 'sql'
sudo systmctl enable mysqld


```

#  路径

~/.config/dmenu-recent/
