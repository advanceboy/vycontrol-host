VyControl-host
==============

VyControl Docker image that specifies ALLOWED_HOSTS with environment variable.

The original image is here: https://github.com/vycontrol/vycontrol

----

latest VyControl is being autobuilt at dockerhub https://hub.docker.com/r/advanceboy/vycontrol-host

run docker w/o ALLOWED_HOSTS env:

```
docker run -p 8000:8000 -t advanceboy/vycontrol-host
```

you can access only http://127.0.0.1:8000

run docke w/ ALLOWED_HOSTS env:

```
docker run -p 8000:8000 -e "ALLOWED_HOSTS=localhost, 192.0.2.1" -t advanceboy/vycontrol-host
```
or
```
docker run -p 8000:8000 -e "ALLOWED_HOSTS=*" -t advanceboy/vycontrol-host
```

now you can access http://loalhost:8000
