#!/bin/sh

LOG_DIRECTORY="../ai8x-training/logs/2024.11.09-011241"

python quantize.py $LOG_DIRECTORY/best.pth.tar $LOG_DIRECTORY/best-quantized.pth.tar --device MAX78000 -v "$@"
