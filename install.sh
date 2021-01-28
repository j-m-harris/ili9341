#!/bin/sh

rmmod ili9341
make all
insmod ili9341.ko

# Demonstrate LCD is initialised.
cat /dev/urandom > /dev/fb1

