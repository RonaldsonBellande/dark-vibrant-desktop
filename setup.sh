sudo apt-get install -y xbacklight feh &&
sudo apt-get install x11-xserver-utils &&
sudo apt install build-essential libx11-dev libxinerama-dev sharutils libxft-dev &&
sudo apt-get install libimlib2-dev &&

rm -rf ~/.config/dark-vibrant-desktop/ &&
cp -r ../dark-vibrant-desktop ~/.config/ &&
mv ~/.config/dark-vibrant-desktop/eww ~/.config/
rm -rf ~/.config/dark-vibrant-desktop/.git/ &&
cd ~/.config/dark-vibrant-desktop/scripts/ &&
./dark-vibrant-desktop.sh &&
sudo cp ~/.config/dark-vibrant-desktop/scripts/dark-vibrant-desktop.desktop /usr/share/xsessions/ &&
cp -r ~/.config/dark-vibrant-desktop/fonts/ ~/.local/share/fonts &&
cd ~/.config/dark-vibrant-desktop/dwm &&
sudo make install
