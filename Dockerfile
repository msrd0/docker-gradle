FROM gradle:jdk8

USER root
RUN apk add --no-cache sudo \
 && echo 'gradle ALL=(ALL) NOPASSWD: ALL' >/etc/sudoers.d/gradle

USER gradle
