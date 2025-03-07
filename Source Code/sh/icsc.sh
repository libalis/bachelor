#!/bin/bash
rm -rfv ~/sc_tools

export ICSC_HOME=~/sc_tools
git clone https://github.com/intel/systemc-compiler $ICSC_HOME/icsc
cd $ICSC_HOME
icsc/install.sh
source setenv.sh

git clone https://github.com/libalis/bachelor.git designs/bachelor
echo -e "\nadd_subdirectory(designs/bachelor)" >> CMakeLists.txt

mkdir -p build
cd build
cmake ..
make bachelor
./designs/bachelor/bachelor
ctest -R bachelor
cat designs/bachelor/sv_out/bachelor.sv
