FROM ubuntu:devel

RUN apt update && \
    apt full-upgrade --yes && \
    apt install --yes x11-apps && \
    apt clean distclean autoclean autoremove

CMD echo Usage: && \
    echo 'xhost +local:docker' && \
    echo 'docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --rm -it deanturpin/xclock' && \
    xclock
