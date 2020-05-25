#!/bin/bash
#
# Скрипт удаляет в $TARGET_DIR файлы, которые не обновлялись более $NUM_DAYS дней.

NUM_DAYS=7
TARGET_DIR="/root/hw_bash_backup/tmpdst"

find $TARGET_DIR -type f -mtime +$NUM_DAYS -exec rm {} \;
