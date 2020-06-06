#!/bin/bash
output="/dev/null"
function pro {
  echo -n "设定中"
  point="echo -n ."
  sleep 0.3
  $point
  sleep 0.3
  $point
  sleep 0.3
  $point
  sleep 0.3
}
echo "运行操作:修改Fish配置"
echo "┌────────────────────────┐"
echo "│ 脚本分发:Powerlean.top │"
echo "│ 脚本编写:Powerlean     │"
echo "└────────────────────────┘"
echo "注意:文件仅可在Termux中运行"
apt install fish -y 1>"$output" 2>&1 | pro
apt install ruby -y 1>"$output" 2>&1
curl https://powerlean.top/blob/setup.fish | fish
wget https://powerlean.top/blob/net-checker
chmod +x net-checker
mv net-checker /data/data/com.termux/files/usr/bin
chsh -s fish
omf install bobthefish 1>"$output" 2>&1 
gem install colorls 1>"$output" 2>&1
echo "net-checker" >>"/data/data/com.termux/files/home/.config/fish/conf.d/omf.fish"
echo "date" >>"/data/data/com.termux/files/home/.config/fish/conf.d/omf.fish"
echo "colorls" >>"/data/data/com.termux/files/home/.config/fish/conf.d/omf.fish"
echo "pwd" >>"/data/data/com.termux/files/home/.config/fish/conf.d/omf.fish"
wget https://powerlean.top/blob/TFont.ttf
mkdir -p ~/.termux
mkdir -p ~/.termux/fonts
mv TFont.ttf ~/.termux/fonts
curl https://powerlean.top/blob/termux.properties | bash
echo "操作完成"

