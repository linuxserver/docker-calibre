# Docker-Calibre

<<<<<<< HEAD
[![Blog](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Blog)](https://blog.linuxserver.io "all the things you can do with our containers including How-To guides, opinions and much more!")
[![Discord](https://img.shields.io/discord/354974912613449730.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Discord&logo=discord)](https://discord.gg/YWrKVTn "realtime support / chat with the community and the team.")
[![Discourse](https://img.shields.io/discourse/https/discourse.linuxserver.io/topics.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=discourse)](https://discourse.linuxserver.io "post on our community forum.")
[![Fleet](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Fleet)](https://fleet.linuxserver.io "an online web interface which displays all of our maintained images.")
[![GitHub](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub&logo=github)](https://github.com/linuxserver "view the source for all of our repositories.")
[![Open Collective](https://img.shields.io/opencollective/all/linuxserver.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=Supporters&logo=open%20collective)](https://opencollective.com/linuxserver "please consider helping us by either donating or contributing to our budget")

The [LinuxServer.io](https://linuxserver.io) team brings you another container release featuring:

* regular and timely application updates
* easy user mappings (PGID, PUID)
* custom base image with s6 overlay
* weekly base OS updates with common layers across the entire LinuxServer.io ecosystem to minimise space usage, down time and bandwidth
* regular security updates

Find us at:

* [Blog](https://blog.linuxserver.io) - all the things you can do with our containers including How-To guides, opinions and much more!
* [Discord](https://discord.gg/YWrKVTn) - realtime support / chat with the community and the team.
* [Discourse](https://discourse.linuxserver.io) - post on our community forum.
* [Fleet](https://fleet.linuxserver.io) - an online web interface which displays all of our maintained images.
* [GitHub](https://github.com/linuxserver) - view the source for all of our repositories.
* [Open Collective](https://opencollective.com/linuxserver) - please consider helping us by either donating or contributing to our budget

# [linuxserver/calibre](https://github.com/linuxserver/docker-calibre)

[![Scarf.io pulls](https://scarf.sh/installs-badge/linuxserver-ci/linuxserver%2Fcalibre?color=94398d&label-color=555555&logo-color=ffffff&style=for-the-badge&package-type=docker)](https://scarf.sh)
[![GitHub Stars](https://img.shields.io/github/stars/linuxserver/docker-calibre.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-calibre)
[![GitHub Release](https://img.shields.io/github/release/linuxserver/docker-calibre.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&logo=github)](https://github.com/linuxserver/docker-calibre/releases)
[![GitHub Package Repository](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitHub%20Package&logo=github)](https://github.com/linuxserver/docker-calibre/packages)
[![GitLab Container Registry](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=GitLab%20Registry&logo=gitlab)](https://gitlab.com/linuxserver.io/docker-calibre/container_registry)
[![Quay.io](https://img.shields.io/static/v1.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=linuxserver.io&message=Quay.io)](https://quay.io/repository/linuxserver.io/calibre)
[![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/calibre.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=pulls&logo=docker)](https://hub.docker.com/r/linuxserver/calibre)
[![Docker Stars](https://img.shields.io/docker/stars/linuxserver/calibre.svg?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=stars&logo=docker)](https://hub.docker.com/r/linuxserver/calibre)
[![Jenkins Build](https://img.shields.io/jenkins/build?labelColor=555555&logoColor=ffffff&style=for-the-badge&jobUrl=https%3A%2F%2Fci.linuxserver.io%2Fjob%2FDocker-Pipeline-Builders%2Fjob%2Fdocker-calibre%2Fjob%2Fmaster%2F&logo=jenkins)](https://ci.linuxserver.io/job/Docker-Pipeline-Builders/job/docker-calibre/job/master/)
[![LSIO CI](https://img.shields.io/badge/dynamic/yaml?color=94398d&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=CI&query=CI&url=https%3A%2F%2Fci-tests.linuxserver.io%2Flinuxserver%2Fcalibre%2Flatest%2Fci-status.yml)](https://ci-tests.linuxserver.io/linuxserver/calibre/latest/index.html)

[Calibre](https://calibre-ebook.com/) is a powerful and easy to use e-book manager. Users say it's outstanding and a must-have. It'll allow you to do nearly everything and it takes things a step beyond normal e-book software. It's also completely free and open source and great for both casual users and computer experts.

[![calibre](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/calibre-logo.png)](https://calibre-ebook.com/)

## Supported Architectures

We utilise the docker manifest for multi-platform awareness. More information is available from docker [here](https://distribution.github.io/distribution/spec/manifest-v2-2/#manifest-list) and our announcement [here](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/).

Simply pulling `lscr.io/linuxserver/calibre:latest` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Available | Tag |
| :----: | :----: | ---- |
| x86-64 | ✅ | amd64-\<version tag\> |
| arm64 | ✅ | arm64v8-\<version tag\> |
| armhf | ❌ | |

## Version Tags

This image provides various versions that are available via tags. Please read the descriptions carefully and exercise caution when using unstable or development tags.

| Tag | Available | Description |
| :----: | :----: |--- |
| latest | ✅ | Latest Calibre releases |
| v4 | ✅ | Calibre v4 releases (x86_64 only) |

## Application Setup

This image sets up the calibre desktop app and makes its interface available via KasmVNC server in the browser. The interface is available at `http://your-ip:8080` or `https://your-ip:8181`.

By default, there is no password set for the main gui. Optional environment variable `PASSWORD` will allow setting a password for the user `abc`, via http auth.

Port 8081 is reserved for Calibre's built-in webserver, which can be enabled within the desktop app settings, and the internal port _must be_ set to `8081` although it will then be available at the host mapped port for external access.

### Options in all KasmVNC based GUI containers

This container is based on [Docker Baseimage KasmVNC](https://github.com/linuxserver/docker-baseimage-kasmvnc) which means there are additional environment variables and run configurations to enable or disable specific functionality.

#### Optional environment variables

| Variable | Description |
| :----: | --- |
| CUSTOM_PORT | Internal port the container listens on for http if it needs to be swapped from the default 8080. |
| CUSTOM_HTTPS_PORT | Internal port the container listens on for https if it needs to be swapped from the default 8181. |
| CUSTOM_USER | HTTP Basic auth username, abc is default. |
| PASSWORD | HTTP Basic auth password, abc is default. If unset there will be no auth |
| SUBFOLDER | Subfolder for the application if running a subfolder reverse proxy, need both slashes IE `/subfolder/` |
| TITLE | The page title displayed on the web browser, default "KasmVNC Client". |
| FM_HOME | This is the home directory (landing) for the file manager, default "/config". |
| START_DOCKER | If set to false a container with privilege will not automatically start the DinD Docker setup. |
| DRINODE | If mounting in /dev/dri for [DRI3 GPU Acceleration](https://www.kasmweb.com/kasmvnc/docs/master/gpu_acceleration.html) allows you to specify the device to use IE `/dev/dri/renderD128` |
| LC_ALL | Set the Language for the container to run as IE `fr_FR.UTF-8` `ar_AE.UTF-8` |
| NO_DECOR | If set the application will run without window borders for use as a PWA. |
| NO_FULL | Do not autmatically fullscreen applications when using openbox. |

#### Optional run configurations

| Variable | Description |
| :----: | --- |
| `--privileged` | Will start a Docker in Docker (DinD) setup inside the container to use docker in an isolated environment. For increased performance mount the Docker directory inside the container to the host IE `-v /home/user/docker-data:/var/lib/docker`. |
| `-v /var/run/docker.sock:/var/run/docker.sock` | Mount in the host level Docker socket to either interact with it via CLI or use Docker enabled applications. |
| `--device /dev/dri:/dev/dri` | Mount a GPU into the container, this can be used in conjunction with the `DRINODE` environment variable to leverage a host video card for GPU accelerated appplications. Only **Open Source** drivers are supported IE (Intel,AMDGPU,Radeon,ATI,Nouveau) |

### Language Support - Internationalization

The environment variable `LC_ALL` can be used to start this image in a different language than English simply pass for example to launch the Desktop session in French `LC_ALL=fr_FR.UTF-8`. Some languages like Chinese, Japanese, or Korean will be missing fonts needed to render properly known as cjk fonts, but others may exist and not be installed. We only ensure fonts for Latin characters are present. Fonts can be installed with a mod on startup.

To install cjk fonts on startup as an example pass the environment variables:

```
-e DOCKER_MODS=linuxserver/mods:universal-package-install
-e INSTALL_PACKAGES=fonts-noto-cjk
-e LC_ALL=zh_CN.UTF-8
```

The web interface has the option for "IME Input Mode" in Settings which will allow non english characters to be used from a non en_US keyboard on the client. Once enabled it will perform the same as a local Linux installation set to your locale.

### Lossless mode

This container is capable of delivering a true lossless image at a high framerate to your web browser by changing the Stream Quality preset to "Lossless", more information [here](https://www.kasmweb.com/docs/latest/how_to/lossless.html#technical-background). In order to use this mode from a non localhost endpoint the HTTPS port on 8181 needs to be used. If using a reverse proxy to port 8080 specific headers will need to be set as outlined [here](https://github.com/linuxserver/docker-baseimage-kasmvnc#lossless).

## Usage

To help you get started creating a container from this image you can either use docker-compose or the docker cli.

### docker-compose (recommended, [click here for more info](https://docs.linuxserver.io/general/docker-compose))

```yaml
---
services:
  calibre:
    image: lscr.io/linuxserver/calibre:latest
    container_name: calibre
    security_opt:
      - seccomp:unconfined #optional
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - PASSWORD= #optional
      - CLI_ARGS= #optional
    volumes:
      - /path/to/data:/config
    ports:
      - 8080:8080
      - 8181:8181
      - 8081:8081
    restart: unless-stopped
```

### docker cli ([click here for more info](https://docs.docker.com/engine/reference/commandline/cli/))
=======
## docker cli
>>>>>>> c156771 (:tada: Put in my custom config, README, and Github Action)

```bash
docker run -d \
  --name=calibre \
  --security-opt seccomp=unconfined \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=America/New_York \
  -p 8080:8080 \
  -p 8081:8081 \
  -v config:/config \
  --restart unless-stopped \
  thegreatestgiant/calibre
```

## docker-compose

```yaml
---
version: "2.1"
services:
  calibre:
    image: thegreatestgiant/calibre
    container_name: calibre
    security_opt:
      - seccomp:unconfined
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=America/New_york
    volumes:
      - ./config:/config
    ports:
      - 8080:8080
      - 8081:8081
    restart: unless-stopped
```

## Links To Heal Epubs

```
https://kindle-epub-fix.netlify.app/
```
```
https://draft2digital.com/book/epubcheck/upload
```

# Updating
```
git clone https://github.com/thegreatestgiant/docker-calibre.git
```
<<<<<<< HEAD

The ARM variants can be built on x86_64 hardware using `multiarch/qemu-user-static`

```bash
docker run --rm --privileged multiarch/qemu-user-static:register --reset
```

Once registered you can define the dockerfile to use with `-f Dockerfile.aarch64`.

## Versions

* **10.02.24:** - Update Readme with new env vars and ingest proper PWA icon.
* **31.01.24:** - Fix fullscreen on start.
* **17.11.23:** - Install libxcb-cursor0 for v7 support.
* **18.03.23:** - Rebase to KasmVNC base image.
* **19.10.22:** - Set the window title to `Calibre`. Remove websocat as it is now handled properly in the baseimage.
* **18.10.22:** - Deprecate Arch branch.
* **07.10.22:** - Start calibre window maximized.
* **16.09.22:** - Rebase to jammy.
* **24.07.22:** - Add arm64 build for master branch.
* **11.07.22:** - Update dependencies for Calibre 6.
* **28.05.22:** - Rebase to focal.
* **31.03.22:** - Fix umask.
* **28.02.22:** - Add speech support to bionic image.
* **05.01.22:** - Add arch branch for arm platforms.
* **20.04.21:** - Fix the HOME folder.
* **19.04.21:** - Add libnss3 back in. Make sure Calibre can access environment variables.
* **18.04.21:** - Start calibre on container start rather than gui connect.
* **15.04.21:** - Rebase to rdesktop-web baseimage. Deprecate `GUAC_USER` and `GUAC_PASS` env vars. Existing users can set the new var `PASSWORD` for the user `abc`.
* **25.09.20:** - Switch to python3, add various new dependencies for calibre 5.0.
* **10.05.19:** - Add new env var `CLI_ARGS` to pass start arguments to calibre.
* **18.03.19:** - Let Calibre access environment variables, add optional umask setting.
* **23.10.19:** - Remove reccomended deps and zenity for character compatibility.
* **18.10.19:** - Add python-xdg.
* **08.10.19:** - Add fonts-wqy-microhei ttf-wqy-zenhei fcitx-rime dependency to resolve issue with Chinese encoding.
* **04.10.19:** - Add libxkbcommon-x11-0 dependency to resolve issue with Calibre 4.
* **08.08.19:** - Add zenity for international character support in dialog boxes.
* **12.07.19:** - Download binary from calibre website instead of github.
* **29.04.19:** - Initial release.
=======
do that into home linux and then upload the files again
also add rsync to dockerfile
>>>>>>> c156771 (:tada: Put in my custom config, README, and Github Action)
