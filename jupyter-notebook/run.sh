#!/bin/bash

docker run --rm \
	-it \
	-p 8890:8890 \
	-v /home/akrishnan/gitclones/:/home/jovyan/gitclones \
	-w /home/jovyan/gitclones \
	--name kalman \
	tensorflow-gpu-jupyter:bayesian

#	--entrypoint="jupyter notebook --notebook-dir /home/jovyan/gitclones" \
