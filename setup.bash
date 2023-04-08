yay -S i3-gaps polybar alacritty blueman dunst picom network-manager-applet-git dmenu rofi pavucontrol
sudo systemctl start fstrim.timer 
yay -S ttf-adobe-source-code-pro-fonts ttf-font-awesome-5 ttf-font-awesome otf-font-awesome siji-ttf ttf-unifont
yay -S redshift
git clone https://gitlab.com/dwt1/dmenu-distrotube.git ~/.opt/demnu_dt
cd ~/.opt/dmenu_dt
sudo make clean install & rm config.h

# echo export LC_CTYPE="en_GB.utf8" >> .zshrc

# sudo locale-gen
# sudo localectl set-locale LC_CTYPE=en_US.UTF-8
#

yay -S pfetch


crontab -l > mycron
echo "0 * * * * ~/scripts/pushAll" >> mycron
crontab mycron
rm mycron


