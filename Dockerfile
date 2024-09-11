FROM ubuntu:latest

RUN apt update && \
    apt full-upgrade --yes &&
    apt install --yes x11-apps

CMD xclock
