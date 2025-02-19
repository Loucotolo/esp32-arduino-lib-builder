#!/bin/bash

IDF_TARGET=$1
FLASH_MODE="$2"
FLASH_FREQ="$3"
BOOTCONF=$FLASH_MODE"_$FLASH_FREQ"

source ./tools/config.sh

echo "Copying bootloader: $AR_SDK/bin/bootloader_$BOOTCONF.bin"

mkdir -p "$AR_SDK/bin"
cp "build/bootloader/bootloader.bin" "$AR_SDK/bin/bootloader_$BOOTCONF.bin"
