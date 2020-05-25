#!/bin/bash
#
# Скрипт _рекурсивно_ копирует содержимое директории $SOURCE_PATH в $TARGET_PATH


SOURCE_PATH="tmpsrc"
# В качестве TARGET_PATH можно указать путь на удаленном сервере
# в формате: <username>@<target_IP_address>:<path_to_target_dir>
TARGET_PATH="root@10.128.0.3:/root/hw_bash_backup/tmpdst"

rsync -avz $SOURCE_PATH/ $TARGET_PATH
