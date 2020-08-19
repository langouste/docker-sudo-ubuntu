# Ubuntu sudo image

This image add a `docker` user with no password to Ubuntu official docker image. Sudo command is installed and configured to be used with this user.

This image can be used for development and test but not in production.

## Supported tags and `Dockerfile` links

* [`20.04`,`latest`](https://github.com/langouste/docker-sudo-ubuntu/blob/master/Dockerfile)

## Usage

For example you can use this image to test a bash script who use sudo :

```bash
$ echo 'sudo apt-get update && sudo apt-get install -y htop' > htop_install.sh \
&& chmod +x htop_install.sh
$ docker run -it --rm -v $(pwd)/htop_install.sh:/home/docker/htop_install.sh \
langouste/ubuntu-sudo:latest /bin/sh -c "./htop_install.sh && htop"
```

Another use case example is with [Testinfra](https://testinfra.readthedocs.io/en/latest/examples.html#test-docker-images) for Test Driven Infrastructure (TDI) developments.

## Reference

**Github repository:** [langouste/docker-sudo-ubuntu](https://github.com/langouste/docker-sudo-ubuntu)
