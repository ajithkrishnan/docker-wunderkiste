FROM ubuntu:16.04

RUN apt update && \
	apt install -y --no-install-recommends\
	vim \
	x11-apps \
	firefox && \
	apt clean && rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/xeyes"]
