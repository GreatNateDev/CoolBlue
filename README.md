# POKEMON COOL BLUE
Made by Nate and Sam for George
TOFIX:RIVAL



#To build:
```
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev -y
git clone --recursive https://github.com/GreatNateDev/CoolBlue/ 
rm -rf agbcc
cd CoolBlue
rm -rf agbcc
git clone https://github.com/pret/agbcc
cd agbcc
./build.sh
./install.sh ../../CoolBlue
cd ..
./make.sh
```
