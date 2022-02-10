#!/bin/bash
STR=`which nasm`

if [ "$STR" = "" ]; then
    sudo apt install nasm
fi           

nasm -f elf64 -o $1.o $1.asm
ld $1.o -o $1
echo "OUTPUT :"
./$1
echo "END OF OUTPUT"
