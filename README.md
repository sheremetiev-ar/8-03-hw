# Домашнее задание к занятию "`GitLab`" - `Шереметьев Аким Русланович`



### Задание 1

Скриншоты локально развернутого GitLab и запущенного gitlab-runner:

![Screen1](/img/img1.png)
![Screen2](https://github.com/sheremetiev-ar/8-03-hw/tree/main/img/img2.png)

Конфигурация раннера:

```

concurrent = 1
check_interval = 0
shutdown_timeout = 0

[session_server]
  session_timeout = 1800

[[runners]]
  name = "test_runner"
  url = "http://gitlab.localdomain/"
  id = 1
  token = "glrtr-YDALspxLMVymLFe5K7WII286MQpwOjMKdDozCw.01.120a84b0j"
  token_obtained_at = 2025-08-27T11:07:46Z
  token_expires_at = 0001-01-01T00:00:00Z
  executor = "docker"
  [runners.cache]
    MaxUploadedArchiveSize = 0
    [runners.cache.s3]
    [runners.cache.gcs]
    [runners.cache.azure]
  [runners.docker]
    tls_verify = false
    image = "ruby:3.3"
    privileged = false
    disable_entrypoint_overwrite = false
    oom_kill_disable = false
    disable_cache = false
    volumes = ["/cache", "/var/run/docker.sock:/var/run/docker.sock"]
    extra_hosts = ["gitlab.localdomain:192.168.123.2"]
    shm_size = 0
    network_mtu = 0

```

### Задание 2

Конфигурационный файл gitlab-ci.yml:

```

stages:
  - test
  - build

test-job1:
  stage: test
  script:
    - echo "This job is just for tests"
  tags:
    - homework

build-job1:
  stage: build
  script:
    - echo "Welcome, $GITLAB_USER_LOGIN!"
  tags:
    - homework

build-job2:
  stage: build
  image: docker:latest
  script:
    - docker build .
  tags:
    - homework


```

Скриншоты сборок:

![Screen3](https://github.com/sheremetiev-ar/8-03-hw/tree/main/img/test1.png)
![Screen4](https://github.com/sheremetiev-ar/8-03-hw/tree/main/img/build1.png)
![Screen5](https://github.com/sheremetiev-ar/8-03-hw/tree/main/img/build2.png)
