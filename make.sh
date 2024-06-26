clear
rm "Cool Blue.gba"
rm -rf build
make -j8
rm pokefirered.elf
mv pokefirered.gba "Cool Blue.gba"
./mgba.appimage "Cool Blue.gba"
clear
