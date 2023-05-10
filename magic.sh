#!/bin/bash
# Скрипт должен конвертировать формат картинок в указанной папке
# ./art.sh file1


if [[ ! -n $1 ]]; then 
    echo "Wrong argument!"
    echo "Use: $0 folder_1"
    exit 1
fi

folder1=$1

count=0
for file in $(ls $1)
do 
    image="$1/$file"
    if [[ $image == *.png ]]
    then
        echo "Convert $image"
        convert "$image" "${image%.png}.jpg"
    else
        echo "File $image is not image, skip"
    fi
    count=$(($count+1))
done

echo "All $count images have been converted!"
