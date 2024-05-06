#!/bin/bash

FILE_PATH=$1

# tar打包
zip -r ${FILE_PATH}.zip ${FILE_PATH}

# 如果文件大于100M，分卷压缩
FILE_SIZE=$(ls -l ${FILE_PATH}.zip | awk '{print $5}')
echo "File size: ${FILE_SIZE}"

if [ $FILE_SIZE -gt 104857600 ]; then
    split -b 100M ${FILE_PATH}.zip "${FILE_PATH}.zip.part."
    rm ${FILE_PATH}.zip
fi

echo "Compression completed!"