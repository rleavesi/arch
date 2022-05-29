sudo pacman -Sy fcitx fcitx-im fcitx-ui-light fcitx-libpinyin fcitx-sunpinyin
sudo pacman -Sy ttf-dejavu adobe-source-han-sans-otc-fonts
echo "# fcitx" | tee -a ~/.xprofile 
echo "export GTK_IM_MODULE=fcitx" | tee -a  ~/.xprofile
echo "export QT_IM_MODULE=fcitx" | tee -a  ~/.xprofile
echo "export XMODIFIERS="@im=fcitx"" | tee -a ~/.xprofile

