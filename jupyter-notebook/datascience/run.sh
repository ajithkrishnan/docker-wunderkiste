#!/bin/bash

docker run --rm \
	-it \
	-p 8888:8888 \
	-v /home/akrishnan/gitclones/:/home/jovyan/gitclones \
	-w /home/jovyan/gitclones \
	--name ransac \
	jupyter:datascience

#	--entrypoint="jupyter notebook --notebook-dir /home/jovyan/gitclones" \
