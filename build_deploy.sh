#!/bin/sh

make && openocd -f interface/stlink-v2.cfg -f target/stm32f1x.cfg -c init -c "reset halt" -c "flash write_image erase build/hover.bin 0x8000000" -c "reset"

