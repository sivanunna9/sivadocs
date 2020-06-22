Dockerfiles
------------

Instructions
.dockerignore

FROM:- Sets the Base Image for subsequent instructions.

MAINTAINER:-(deprecated - use LABEL instead) Set the Author field of the generated images.

RUN:- execute any commands in a new layer on top of the current image and commit the results.

CMD:- provide defaults for an executing container.

EXPOSE:- informs Docker that the container listens on the specified network ports at runtime. NOTE: does not actually make ports accessible.

ENV:- sets environment variable.

ADD:- copies new files, directories or remote file to container. Invalidates caches. Avoid ADD and use COPY instead.

COPY:- copies new files or directories to container. By default this copies as root regardless of the USER/WORKDIR settings. Use --
chown=<user>:<group> to give ownership to another user/group. (Same for ADD.)

ENTRYPOINT :-configures a container that will run as an executable.

VOLUME:- creates a mount point for externally mounted volumes or other containers.

USER:- sets the user name for following RUN / CMD / ENTRYPOINT commands.

WORKDIR:- sets the working directory.

ARG:- defines a build-time variable.

ONBUILD:- adds a trigger instruction when the image is used as the base for another build.

STOPSIGNAL:- sets the system call signal that will be sent to the container to exit.

LABEL:- apply key/value metadata to your images, containers, or daemons.

SHELL:- override default shell is used by docker to run commands.

HEALTHCHECK:- tells docker how to test a container to check that it is still working.
Tutorial
