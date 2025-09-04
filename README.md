# Домашнее задание к занятию "`Кластеризация и балансировка нагрузки`" - `Шереметьев Аким Русланович`

### Задание 1

Конфигурационный файл haproxy:

```
listen stats
        bind                    :888
        mode                    http
        stats                   enable
        stats uri               /stats
        stats refresh           5s
        stats realm             Haproxy\ Statistics

frontend example
        mode                    http
        bind                    :8088
        default_backend         web_servers

backend web_servers
        mode                    http
        balance                 roundrobin
        option                  httpchk
        http-check              send            meth            GET     uri     /index.html
        server          s1      127.0.0.1:8888  check
        server          s2      127.0.0.1:9999  check

listen web_tcp
        bind                    :1325
        server          s1      127.0.0.1:8888  check inter 3s
        server          s2      127.0.0.1:9999  check inter 3s

```

Результат обращения к HAProxy:

![Screen1](/img/curl.png)

### Задание 2

Конфигурационный файл haproxy с внесенными изменениями:

```
listen stats
        bind                    :888
        mode                    http
        stats                   enable
        stats uri               /stats
        stats refresh           5s
        stats realm             Haproxy\ Statistics

frontend example
        mode                    http
        bind                    :8088
#       default_backend         web_servers
        acl ACL_example         hdr(host) -i example.local      
        use_backend             web_servers     if      ACL_example

backend web_servers
        mode                    http
        balance                 roundrobin
        option                  httpchk
        http-check              send            meth            GET     uri     /index.html
        server          s1      127.0.0.1:8888  check weight 2
        server          s2      127.0.0.1:9999  check weight 3
        server          s3      127.0.0.1:7777  check weight 4

listen web_tcp
        bind                    :1325
        server          s1      127.0.0.1:8888  check inter 3s
        server          s2      127.0.0.1:9999  check inter 3s
        server          s3      127.0.0.1:7777  check inter 3s
```

Обращение к HAProxy c использованием домена example.local:

![Screen2](/img/drobin.png)

Обращение к HAProxy без использования домена example.local:

![Screen3](/img/robin.png)


