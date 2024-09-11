# x11 container example

Example of running a GUI application in a container and displayed it on the host.

```bash
xhost +local:docker
docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --rm -it deanturpin/xclock
```
