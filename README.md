# DOCKER NGROK IMAGE

## BUILD IMAGE

```linux
git clone https://github.com/toby1991/docker-ngrok.git
cd docker-ngrok
docker build -t toby1991/ngrok:latest .
```

## RUN
* you must mount your folder (E.g `/data/ngrok`) to container `/ngrok_data`
* if it is the first run, it will generate the binaries file and CA in your floder `/data/ngrok`

```linux
docker run -idt --name ngrok-server \
-v /data/ngrok:/ngrok_data \
-e DOMAIN='headfile.net' toby1991/ngrok:latest /bin/sh /server.sh
```
