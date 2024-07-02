# POKEMON COOL BLUE
Made by Nate and Sam for George
TOFIX:RIVAL



# To build:
```
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev -y && git clone --recursive https://github.com/GreatNateDev/CoolBlue/  && rm -rf agbcc && cd CoolBlue && rm -rf agbcc && wget https://github.com/mgba-emu/mgba/releases/download/0.10.3/mGBA-0.10.3-appimage-x64.appimage && mv "mGBA-0.10.3-appimage-x64.appimage" "mgba.appimage" && chmod +x mgba.appimage &&git clone https://github.com/pret/agbcc && cd agbcc && ./build.sh && ./install.sh ../../CoolBlue && cd .. && ./make.sh
```
Then whenever you want to build later run ```./make.sh```
# Optional
for porymap (BTW poryscript is already added to this project)
```
git clone --recursive https://github.com/huderlem/porymap && sudo apt-get install qt6-declarative-dev qtdeclarative5-dev -y && cd porymap && qmake && makevar=$(nproc) && make -j$makevar && mv porymap ../porymap1 && cd .. && rm -rf porymap && mv porymap1 porymap && ./porymap
```
Then whenever you want to run porymap just ```./porymap```
# Full Build With Porymap
This is for me because im lazy lol
```
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev -y && git clone --recursive https://github.com/GreatNateDev/CoolBlue/  && rm -rf agbcc && cd CoolBlue && rm -rf agbcc && wget https://github.com/mgba-emu/mgba/releases/download/0.10.3/mGBA-0.10.3-appimage-x64.appimage && mv "mGBA-0.10.3-appimage-x64.appimage" "mgba.appimage" && chmod +x mgba.appimage && git clone https://github.com/pret/agbcc && cd agbcc && ./build.sh && ./install.sh ../../CoolBlue && cd .. && git clone --recursive https://github.com/huderlem/porymap && sudo apt-get install qt6-declarative-dev qtdeclarative5-dev -y && cd porymap && qmake && makevar=$(nproc) && make -j$makevar && mv porymap ../porymap1 && cd .. && rm -rf porymap && mv porymap1 porymap
```
