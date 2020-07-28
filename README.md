# fly-wrapper

It's a wrapper arround fly that simplify target configuration and selection.


## Install

WIP


## Features

**Auto-configuration of targets**, you won't have to setup URL or be bothered by giving a name to a target:

```bash
# Switch to a zone with a specified team:
fly switch -z infra-stg -n cicd

# If you need to only change the team for your zone:
fly switch -n infra

# If you need to connect to concourse client:
fly switch -z ocb-corp -n caascad -k client
```

**Save your target**, you won't need to type that `-t <target>` in every single fly command:

```console
$ fly switch -z infra-stg -n cicd
$ fly ws
name                   containers  platform  tags  team  state    version  age
ci-worker-infra-stg-0  70          linux     none  none  running  2.2      5d
```
