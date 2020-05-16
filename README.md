# jenkins-dod

# How to build

```
$ docker build --pull -t raanglada/jenkins-dod:0.0.1 .
```

note: use always --pull option to use always the latest jenkins image and avoid security issues and the warning in jenkins dashboard

## How to use

Create a folder for jenkins home 
```
$ mkdir jenkins_home
```

run jenkins docker
```
$ docker run --name jenkins-dod \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(pwd)/jenkins_home:/var/jenkins_home \
-v $(which docker):/usr/bin/docker \
-p 8080:8080 -p 50000:50000  \
-d raanglada/jenkins-dod:0.0.1
```

## Get installed plugins suggested by jenkins

```
sudo apt install jq
curl -s -k "http://user:password@localhost:8080/pluginManager/api/json?depth=1"  | jq -r '.plugins[].shortName' | tee plugins
```
