# ROS2 Slam Toolbox in Docker [![](https://img.shields.io/docker/pulls/frankjoshua/ros2-slam-toolbox)](https://hub.docker.com/r/frankjoshua/ros2-slam-toolbox) [![CI](https://github.com/frankjoshua/docker-ros2-slam-toolbox/workflows/CI/badge.svg)](https://github.com/frankjoshua/docker-ros2-slam-toolbox/actions)

## Description

Runs ros2 slam toolbox in a Docker container. Probably need --network="host" because ROS uses ephemeral ports.

## Example

```
docker run -it \
    --network="host" \
    frankjoshua/ros2-slam-toolbox
```

## Building

Use [build.sh](build.sh) to build the docker containers.

<br>Local builds are as follows:

```
./build.sh -t frankjoshua/ros2-slam-toolbox -l
```

## Template

This repo is a GitHub template. Just change the repo name in [.github/workflows/ci.yml](.github/workflows/ci.yml) and edit [Dockerfile](Dockerfile) and [README.md](README.md) to taste.

## Testing

Github Actions expects the DOCKERHUB_USERNAME and DOCKERHUB_TOKEN variables to be set in your environment.

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)
