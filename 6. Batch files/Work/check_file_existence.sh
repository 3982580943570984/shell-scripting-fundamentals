#!/bin/bash
# Задание 4: Проверить существование файла в каталогах, переданных как параметры 

echo "Введите имя файла: "
read filename

for dir in "$@"; do
  if [ -e "$dir/$filename" ]; then
    echo "Файл $filename существует в директории $dir"
  else
    echo "Файл $filename не существует в директории $dir"
  fi
done
