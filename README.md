# Удалить контейнер и образ по имени образа  


## Пример запущенных контейнеров

| CONTAINER ID  |     IMAGE     |        COMMAND       |       CREATED        |      STATUS     |     PORTS     |     NAMES    |
| :-------------: | :-------------: | :--------------------: | :--------------------: | :---------------: | :-------------: | :------------: |
| 32284b81fd7e  | selenium/hub  |"/opt/bin/entry_poin…"|    6 minutes ago     |  Up 6 minutes   | 4442-4443/tcp | selenium-hub |
| 521rt124t1e   | selen         |"/opt/bin/entry_poin…"|    6 minutes ago     |  Up 6 minutes   | 4442-4443/tcp | selenium-hub |

## Задача: Удалить контейнер и образ у которого образ selen

1) Скачиваем файл
2) Даем доступ файлу: chmod +x delete.sh
3) Запускаем файл: ./delete.sh имя image (Пример-> ./delete.sh selen)
