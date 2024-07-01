# POKEMON COOL BLUE
Made by Nate and Sam for George
TOFIX:RIVAL



# To build:
```
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev -y
git clone --recursive https://github.com/GreatNateDev/CoolBlue/ 
rm -rf agbcc
cd CoolBlue
rm -rf agbcc
wget https://github.com/mgba-emu/mgba/releases/download/0.10.3/mGBA-0.10.3-appimage-x64.appimage
mv "mGBA-0.10.3-appimage-x64.appimage" "mgba.appimage"
git clone https://github.com/pret/agbcc
cd agbcc
./build.sh
./install.sh ../../CoolBlue
cd ..
./make.sh
```
Then whenever you want to build later run ```./make.sh```
