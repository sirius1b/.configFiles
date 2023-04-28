yay -S i3-gaps polybar alacritty blueman dunst picom network-manager-applet-git dmenu rofi pavucontrol pywal i3lock sublime-text-4 cli-visualizer tty-clock tty-countdown-git
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

python -m pip install pywalfox
chmod +x -R .local/lib/python3.10/site-packages/pywalfox/bin


crontab -l > mycron
echo "0 * * * * ~/scripts/pushAll" >> mycron
crontab mycron
rm mycron

yay -S conky dmenu


