#!/bin/bash

FILE_PATH=$1

# tar打包
tar -cvf ${FILE_PATH}.tar ${FILE_PATH}

# split分卷
split -b 100M ${FILE_PATH}.tar "${FILE_PATH}.tar.part."

echo "分卷压缩完成"