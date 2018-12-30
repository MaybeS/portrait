#/bin/bash

PIP=pip
PYTHON=python
WEIGHTS=./weights

git submodule init
git submodule update

cd Mask_RCNN

$PIP install -r requirements.txt
$PYTHON setup.py install

wget "https://github.com/matterport/Mask_RCNN/releases/download/v2.0/mask_rcnn_coco.h5" -P $WEIGHTS

