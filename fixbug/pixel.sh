#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR
WORKSPACE=$LOCALDIR/../workspace
IMAGESDIR=$WORKSPACE/images
TARGETDIR=$WORKSPACE/out

systemdir="$TARGETDIR/system/system"
scirpt_name=$(echo ${0##*/})
src_dir=$LOCALDIR/$(echo ${scirpt_name%%.*}) 

echo "${scirpt_name%%.*} fixing..."

# 部分机型储存修复
if [ -d $systemdir/apex/com.google.android.mediaprovider ];then
  cp -frp $src_dir/system/apex/com.google.android.mediaprovider/* $systemdir/apex/com.google.android.mediaprovider/
fi
