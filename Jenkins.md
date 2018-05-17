# Jenkins lab

[](https://codeanywhere.com/editor)

[](https://fr.infobyip.com/sshservertest.php)

[](https://www.katacoda.com/courses/jenkins/build-docker-images)


``` sh
$ docker pull jenkins/jenkins:lts
```

``` sh
$ mkdir /wou && chmod a+rwx /wou
```

``` sh
$ docker run -d -p 8080:8080 -v /wou:/var/jenkins_home jenkins/jenkins:lts
```
