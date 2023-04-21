# Docker Compose Volume Copy

A crude script to get rid of Docker Compose warning messages. You can also use it to make copies of Docker Compose volumes.  

## Requirements
The following versions work, maybe earlier minor versions will work too (testing needed). 
- Docker 20.10+
- Docker Compose 2.17+
- jq 1.6+

## `WARN[0000] volume "foo" already exists but was not created by Docker Compose. Use `external: true` to use an existing volume`
```bash
dcvc.sh foo
```

## `WARN[0000] volume "foo" already exists but was not created for project "bar". Use `external: true` to use an existing volume`
```bash
dcvc.sh foo bar
```

## Copy a volume "foo" to "bar"
```bash
docker-compose-volume-copy.sh foo bar
``` 

`bar` will use the same project name as `foo`. You can change it by adding a third argument.

```bash
docker-compose-volume-copy.sh foo bar baz
```

`bar` will have its project name set to `baz`.

## TODO
- Consolidate into a single script file (make `docker-compose-volume-copy.sh` a function in `dcvc.sh`)
- Use `getopts` to parse arguments
- Add `--help` option

Inspired by https://github.com/KOYU-Tech/docker-volume-copy.