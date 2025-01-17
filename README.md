# X11 container example

Example of running a GUI application in a container and displaying it on the host. See the [Dockerfile](https://github.com/deanturpin/xclock/blob/main/Dockerfile).

```bash
xhost +local:docker
docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --rm -it deanturpin/xclock
```
