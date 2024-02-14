# Docker-Calibre
### docker cli 

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
do that into home linux and then upload the files again
also add rsync to dockerfile
