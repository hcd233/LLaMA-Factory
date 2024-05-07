#!/bin/bash

FILE_PATH=$1

# 检查是否有分卷压缩的文件
if [ -f "${FILE_PATH}.zip.part.aa" ]; then
    # 合并分卷文件
    cat "${FILE_PATH}.zip.part"* > "${FILE_PATH}.zip"
    rm "${FILE_PATH}.zip.part"*
fi

# 解压缩文件
unzip "${FILE_PATH}.zip"
rm "${FILE_PATH}.zip"

echo "Decompression completed!"
