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

SRC="$HOME/"
DEST="/tmp/backup/"
LOG="/tmp/backup.log"

rsync -a -v --delete "$SRC" "$DEST" >> "$LOG" 2>&1
```

Задача для crontab'а:
```
* 11 * * * /home/akim/scripts/daily_backup.sh
```

Результат копирования:

![Screen3](/img/hw2.png)

Логи результата резервного копирования:

![Screen4](/img/log.png)
