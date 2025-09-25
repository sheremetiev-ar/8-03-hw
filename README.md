# Домашнее задание к занятию "`Очереди RabbitMQ`" - `Шереметьев Аким Русланович`

### Задание 1

Скриншот веб-интерфейса RabbitMQ:

![Screen1](/img/web.png)

### Задание 2

Выполнение скрипта producer.py:

![Screen2](/img/prod.png)

Выполнение скрипта consumer.py:

![Screen3](/img/cons.png)

### Задание 3

Информация о доступных нодах:

![Screen4](/img/nodes.png)

Включенная политика ha-all в кластере:

![Screen5](/img/queue.png)

[Вывод команды rabbitmqctl cluster_status с двух нод](status)

Скриншоты выполнения команды rabbitmqadmin get queue:

![Screen6](/img/adm1.png)

![Screen7](/img/adm2.png)

Результат после отключения одного из нод и перенастройки подключения в скрипте consumer.py на вторую ноду:

![Screen8](/img/1node.png)
