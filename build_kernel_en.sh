#!/bin/bash

#cubebone kernel compile script : SHW-M250S (english)
#Copyright (C) 2012  Young-Bin Han

#sukso96100@gmail.com

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>
#--------------------------------------------------------------------------------
#Please edit root of toolchain on line 35 before excute this script

echo "------------------------------------------------"
echo "LANUGUAGE : English"
echo "cubebone kernel compile script"
echo "SHW-M250S - UG26"
sleep 5
echo "------------------------------------------------"
echo "excuting some commands"
echo "------------------------------------------------"
sleep 5

export ARCH=arm

export CROSS_COMPILE=/home/youngbin/arm-2009q3/bin/arm-none-linux-gnueabi-

export USE_SEC_FIPS_MODE=true

echo "excuting command : make cubebone_shw-m250s_defconfig" 
echo "------------------------------------------------"
sleep 5

make cubebone_shw-m250s_defconfig

echo "excuting command : make menuconfig" 
echo "------------------------------------------------"
echo "Kernel configuration screen will appear shortly" 
echo "When you are done configuring kernel, save your kernel configuration" 
echo "This script will compile the kernel automatically after you exit kernel configuration" 
echo "------------------------------------------------"
sleep 10

make menuconfig

sleep 5
echo "------------------------------------------------"
echo "This script will compile the kernel automatically after 5 sec"
echo "Take some rest while compiling kernel"
echo "------------------------------------------------"
sleep 5

make
