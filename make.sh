clear
rm "Cool Blue.gba"
rmdir "/build/" --ignore-fail-on-non-empty
make -j8
rm pokefirered.elf
mv pokefirered.gba "Cool Blue.gba"
./mgba.appimage "Cool Blue.gba"
clear
