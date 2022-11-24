#!/usr/bin/env bash

DATA_DIR=$1

PARAM_NUM=$#

if [ $PARAM_NUM -ne 1 ]; then
	echo "Usage: run_xxx <path-to-TUM-MonoVODataset-sequence_xx>"
else
        ./bin/run_dso_tum_mono \
            preset=0 \
            files=$DATA_DIR/images.zip \
            vignette=$DATA_DIR/vignette.png \
            calib=$DATA_DIR/camera.txt \
            gamma=$DATA_DIR/pcalib.txt
fi
