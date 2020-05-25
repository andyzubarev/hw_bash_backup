#!/bin/bash
#
# Скрипт генерирует в директории $TARGET_DIR заданное количество $FILE_COUNT файлов
# с именем $BASE_FILE_NAME{0..$FILE_COUNT-1}$FILE_EXTENSION, размером 10 Мб каждый,
# заполненных случайным содержимым.

# Базовое имя генерируемых файлов.
# ВНИМАНИЕ! Если файл существует, его содержимое будет перезаписано.
BASE_FILE_NAME="file"
FILE_EXTENSION=".log"
# Путь к директории, куда сохранять генерируемые файлы. Конечная директория уже должна
# существовать.
TARGET_DIR="tmpsrc"
# Количество генерируемых файлов.
FILE_COUNT=15

# Нумерация файлов начинается с нуля.
file_num=0

while [ $file_num -lt $FILE_COUNT ]
do
  dd if=/dev/urandom \
     of=$TARGET_DIR/$BASE_FILE_NAME$file_num$FILE_EXTENSION bs=1m count=10
  (( file_num++ ))
done
