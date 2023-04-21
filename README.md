# Docker Compose Volume Copy

A crude script to get rid of Docker Compose warning messages.

## `WARN[0000] volume "foo" already exists but was not created by Docker Compose. Use `external: true` to use an existing volume`
```bash
dcvc.sh foo
```

## `WARN[0000] volume "foo" already exists but was not created for project "bar". Use `external: true` to use an existing volume`
```bash
dcvc.sh foo bar
```

## TODO
- Consolidate into a single script file (make `docker-compose-volume-copy.sh` a function in `dcvc.sh`)
- Use `getopts` to parse arguments
- Add `--help` option

Inspired by https://github.com/KOYU-Tech/docker-volume-copy.