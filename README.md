# Домашнее задание к занятию "`Система мониторинга Zabbix`" - `Шереметьев Аким Русланович`



### Задание 1

Скриншот авторизации:

![Screen1](/img/admin.png)

Скриншот рабочей области Zabbix:

![Screen2](/img/screen.png)

Перечень используемых команд:

```

wget https://repo.zabbix.com/zabbix/7.0/debian/pool/main/z/zabbix-release/zabbix-release_latest_7.0+debian12_all.deb
dpkg -i zabbix-release_latest_7.0+debian12_all.deb
apt update

apt install zabbix-server-pgsql zabbix-frontend-php php8.2-pgsql zabbix-apache-conf zabbix-sql-scripts zabbix-agent

sudo -u postgres createuser --pwprompt zabbix
sudo -u postgres createdb -O zabbix zabbix

zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix

```

### Задание 2

Агенты, подключенные к серверу:

![Screen3](/img/hosts.png)

Скриншот лога zabbix-agent:

![Screen4](/img/logs.png)

Поступающие от агентов данные:

![Screen5](/img/mon.png)

