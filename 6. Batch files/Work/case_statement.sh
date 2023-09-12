#!/bin/bash
# Задание 3: Меню через ключевое слово 'case'

echo "Введите нужный пункт меню:"
echo "1. Операция 1"
echo "2. Операция 2"
read choice

variant=5

case $choice in
  1)
    echo "Производится поиск всех файлов, которые изменялись $variant дней назад."
    find ~/ -type f -mtime -$variant > "out$variant.$variant" 2> "err$variant.$variant"
    ;;
  2)
    echo "Введите имя пользователя: "
    read username
    ps aux | grep -v "$username" | sort > "${username}.txt"
    ;;
  *)
    echo "Invalid choice."
    ;;
esac
