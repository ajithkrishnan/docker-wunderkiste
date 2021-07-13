#!/bin/bash

docker run \
    --rm \
    --net=host \
    --env="DISPLAY" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --device=/dev/video0:/dev/video0 \
    --device=/dev/video1:/dev/video1 \
	-it \
	-p 8888:8888 \
	-v /home/akrishnan/gitclones/:/home/jovyan/gitclones \
    -w /home/jovyan/gitclones/docker-wunderkiste/opencv/ \
	--name aruco \
	jupyter:opencv

#	--entrypoint="jupyter notebook --notebook-dir /home/jovyan/gitclones" \
