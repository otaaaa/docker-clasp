# docker-clasp

## clasp login

```
docker run -it --rm \
  -e HOME=/usr/src/app \
  -v $(pwd)/src:/usr/src/app \
  -w /usr/src/app ghcr.io/otaaaa/clasp:latest /bin/bash
```

When logging in for the first time (If you don't have .clasprc.json), execute the following command in the docker container.

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/otaaaa/docker-clasp/main/clasp-login.sh)"
```

## update .gitignore_global

> [!CAUTION]
> Be sure to add the following to .gitignore_global or .gitignore. Otherwise it will lead to security incidents.

```
# Linux user files
.bash_history

# google/clasp
.clasprc.json
```
