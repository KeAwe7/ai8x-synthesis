#!/bin/sh
DEVICE="MAX78000"
TARGET="C:/MaximSDK/Examples/$DEVICE/CNN"
COMMON_ARGS="--device $DEVICE --timer 0 --display-checkpoint --verbose"
LOG_DIRECTORY="../ai8x-training/logs/2024.11.09-011241"

python ai8xize.py --test-dir $TARGET --prefix cats-dogs-gen --checkpoint-file $LOG_DIRECTORY/best-quantized.pth.tar --config-file networks/cats-dogs-hwc.yaml --fifo --softmax $COMMON_ARGS "$@"
