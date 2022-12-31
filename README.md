# Updated debian-base images

Debian (base) images:

- based on Debian slim images
- with `ca-certificates` and `tzdata` installed
- with the timezone set to `Europe/Amsterdam`
- and all packages upgraded to their latest versions (`apt-get upgrade`)

Available tags:

- `10` --> [Debian buster (base) image](https://hub.docker.com/r/ubuntubase/debianbase?tab=tags&page=1&name=10)
- `11` --> [Debian bullseye (base) image](https://hub.docker.com/r/ubuntubase/debianbase?tab=tags&page=1&name=11)

Use it like this:

```sh
$ docker run -it --rm ubuntubase/debianbase:11 date
Sat Oct 29 22:15:08 CEST 2022
```

You can override the timezone by overriding the TZ variable during container startup, like this:

```sh
$ docker run -it --rm -e 'TZ=Europe/London' ubuntubase/debianbase:11 date
Sat Oct 29 21:15:08 BST 2022
```
