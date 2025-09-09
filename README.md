# Домашнее задание к занятию "`Резервное копирование`" - `Шереметьев Аким Русланович`

### Задание 1

Команда для резервного копирования:

```
sudo rsync -a --progress --delete --exclude="/.*" --checksum . /tmp/backup/
```

Скриншот выполнения команды:

![Screen1](/img/hw11.png)

Результат:

![Screen2](/img/hw12.png)

### Задание 2

Содержание скрипта:
```
#!/bin/sh
rsync -a --delete --progress --checksum . /tmp/backup/
```

Задача для crontab'а:
```
40 10 * * * /home/akim/scripts/daily_backup.sh
```

Результат копирования:

![Screen3](/img/hw2.png)
