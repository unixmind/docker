# GitLab CE

[GitLab CE on Docker Hub](https://hub.docker.com/r/gitlab/gitlab-ce)

## Create required directories
``` sh
$ mkdir -p /root/gitlab/{config,logs,data}
```

## Pull Docker CE
``` sh
$ docker pull gitlab/gitlab-ce
```

## Create and start the GitLab CE container
``` sh
$ docker run -d -p 433:443 -p 80:80 -p 22000:22 -v /root/gitlab/config:/etc/gitlab -v /root/gitlab/logs:/var/log/gitlab -v /root/gitlab/data:/var/opt/gitlab --name gitlab gitlab/gitlab-ce:latest
```


