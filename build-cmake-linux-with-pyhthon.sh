#!/bin/sh
git clean -dxf

./bootstrap-cmake-linux-with-pyhthon.sh
cd build_python_module || exit
make -j4 > ../dev/logs/build_python_module/make.log 2>&1
cd - || exit
