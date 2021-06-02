#!/bin/bash

docker run \
	--rm="true" \
	--net=host \
	--env="DISPLAY" \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	--entrypoint="firefox" \
	--name gui-container \
	gui-app
