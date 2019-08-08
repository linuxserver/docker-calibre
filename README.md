[![linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)](https://linuxserver.io)

The [LinuxServer.io](https://linuxserver.io) team brings you another container release featuring :-

 * regular and timely application updates
 * easy user mappings (PGID, PUID)
 * custom base image with s6 overlay
 * weekly base OS updates with common layers across the entire LinuxServer.io ecosystem to minimise space usage, down time and bandwidth
 * regular security updates

Find us at:
* [Discord](https://discord.gg/YWrKVTn) - realtime support / chat with the community and the team.
* [IRC](https://irc.linuxserver.io) - on freenode at `#linuxserver.io`. Our primary support channel is Discord.
* [Blog](https://blog.linuxserver.io) - all the things you can do with our containers including How-To guides, opinions and much more!

# [linuxserver/calibre](https://github.com/linuxserver/docker-calibre)
[![](https://img.shields.io/discord/354974912613449730.svg?logo=discord&label=LSIO%20Discord&style=flat-square)](https://discord.gg/YWrKVTn)
[![](https://images.microbadger.com/badges/version/linuxserver/calibre.svg)](https://microbadger.com/images/linuxserver/calibre "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/linuxserver/calibre.svg)](https://microbadger.com/images/linuxserver/calibre "Get your own version badge on microbadger.com")
![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/calibre.svg)
![Docker Stars](https://img.shields.io/docker/stars/linuxserver/calibre.svg)
[![Build Status](https://ci.linuxserver.io/buildStatus/icon?job=Docker-Pipeline-Builders/docker-calibre/master)](https://ci.linuxserver.io/job/Docker-Pipeline-Builders/job/docker-calibre/job/master/)
[![](https://lsio-ci.ams3.digitaloceanspaces.com/linuxserver/calibre/latest/badge.svg)](https://lsio-ci.ams3.digitaloceanspaces.com/linuxserver/calibre/latest/index.html)

[Calibre](https://calibre-ebook.com/) is a powerful and easy to use e-book manager. Users say it’s outstanding and a must-have. It’ll allow you to do nearly everything and it takes things a step beyond normal e-book software. It’s also completely free and open source and great for both casual users and computer experts.

[![calibre](https://github.com/kovidgoyal/calibre/raw/master/resources/images/lt.png)](https://calibre-ebook.com/)

## Supported Architectures

Our images support multiple architectures such as `x86-64`, `arm64` and `armhf`. We utilise the docker manifest for multi-platform awareness. More information is available from docker [here](https://github.com/docker/distribution/blob/master/docs/spec/manifest-v2-2.md#manifest-list) and our announcement [here](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/). 

Simply pulling `linuxserver/calibre` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Tag |
| :----: | --- |
| x86-64 | latest |


## Usage

Here are some example snippets to help you get started creating a container.

### docker

```
docker create \
  --name=calibre \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e GUAC_USER=abc `#optional` \
  -e GUAC_PASS=900150983cd24fb0d6963f7d28e17f72 `#optional` \
  -p 8080:8080 \
  -p 8081:8081 \
  -v /path/to/data:/config \
  --restart unless-stopped \
  linuxserver/calibre
```


### docker-compose

Compatible with docker-compose v2 schemas.

```
---
version: "2"
services:
  calibre:
    image: linuxserver/calibre
    container_name: calibre
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
      - GUAC_USER=abc #optional
      - GUAC_PASS=900150983cd24fb0d6963f7d28e17f72 #optional
    volumes:
      - /path/to/data:/config
    ports:
      - 8080:8080
      - 8081:8081
    restart: unless-stopped
```

## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `-p 8080` | Calibre desktop gui. |
| `-p 8081` | Calibre webserver gui. |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Europe/London` | Specify a timezone to use EG Europe/London. |
| `-e GUAC_USER=abc` | Username for the calibre desktop gui. |
| `-e GUAC_PASS=900150983cd24fb0d6963f7d28e17f72` | Password's md5 hash for the calibre desktop gui. |
| `-v /config` | Where calibre should store its database and library. |

## User / Group Identifiers

When using volumes (`-v` flags) permissions issues can arise between the host OS and the container, we avoid this issue by allowing you to specify the user `PUID` and group `PGID`.

Ensure any volume directories on the host are owned by the same user you specify and any permissions issues will vanish like magic.

In this instance `PUID=1000` and `PGID=1000`, to find yours use `id user` as below:

```
  $ id username
    uid=1000(dockeruser) gid=1000(dockergroup) groups=1000(dockergroup)
```


&nbsp;
## Application Setup

This image sets up the calibre desktop app and makes its interface available via Guacamole server in the browser. The interface is available at `http://your-ip:8080`.

By default, there is no username or password set. Custom usernames and passwords can be set via optional docker environment variables. Keep in mind that the `GUACPASS` variable accepts the `md5 hash` of the desired password (the sample above is the hash for `abc`). The md5 hash can be generated by either of the following commands:

```
echo -n password | openssl md5
```

```
printf '%s' password | md5sum
```

Port 8081 is reserved for Calibre's built-in webserver, which can be enabled within the desktop app settings, and the internal port must be set to `8081` although it will then be available at the host mapped port for external access.

You can access advanced features of the Guacamole remote desktop using `ctrl`+`alt`+`shift` enabling you to use remote copy/paste and different languages.



## Support Info

* Shell access whilst the container is running: `docker exec -it calibre /bin/bash`
* To monitor the logs of the container in realtime: `docker logs -f calibre`
* container version number 
  * `docker inspect -f '{{ index .Config.Labels "build_version" }}' calibre`
* image version number
  * `docker inspect -f '{{ index .Config.Labels "build_version" }}' linuxserver/calibre`

## Updating Info

Most of our images are static, versioned, and require an image update and container recreation to update the app inside. With some exceptions (ie. nextcloud, plex), we do not recommend or support updating apps inside the container. Please consult the [Application Setup](#application-setup) section above to see if it is recommended for the image.  
  
Below are the instructions for updating containers:  
  
### Via Docker Run/Create
* Update the image: `docker pull linuxserver/calibre`
* Stop the running container: `docker stop calibre`
* Delete the container: `docker rm calibre`
* Recreate a new container with the same docker create parameters as instructed above (if mapped correctly to a host folder, your `/config` folder and settings will be preserved)
* Start the new container: `docker start calibre`
* You can also remove the old dangling images: `docker image prune`

### Via Docker Compose
* Update all images: `docker-compose pull`
  * or update a single image: `docker-compose pull calibre`
* Let compose update all containers as necessary: `docker-compose up -d`
  * or update a single container: `docker-compose up -d calibre`
* You can also remove the old dangling images: `docker image prune`

### Via Watchtower auto-updater (especially useful if you don't remember the original parameters)
* Pull the latest image at its tag and replace it with the same env variables in one run:
  ```
  docker run --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  containrrr/watchtower \
  --run-once calibre
  ```

**Note:** We do not endorse the use of Watchtower as a solution to automated updates of existing Docker containers. In fact we generally discourage automated updates. However, this is a useful tool for one-time manual updates of containers where you have forgotten the original parameters. In the long term, we highly recommend using Docker Compose.

* You can also remove the old dangling images: `docker image prune`

## Building locally

If you want to make local modifications to these images for development purposes or just to customize the logic: 
```
git clone https://github.com/linuxserver/docker-calibre.git
cd docker-calibre
docker build \
  --no-cache \
  --pull \
  -t linuxserver/calibre:latest .
```

The ARM variants can be built on x86_64 hardware using `multiarch/qemu-user-static`
```
docker run --rm --privileged multiarch/qemu-user-static:register --reset
```

Once registered you can define the dockerfile to use with `-f Dockerfile.aarch64`.

## Versions

* **08.08.19:** - Add zenity for international character support in dialog boxes.
* **12.07.19:** - Download binary from calibre website instead of github.
* **29.04.19:** - Initial release.
