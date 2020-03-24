FROM nvidia/cudagl:10.2-base-ubuntu18.04


RUN mkdir /usr/app
COPY blender-2.82a-linux64 /usr/app/blender-2.82a-linux64

RUN rm /etc/apt/sources.list
RUN rm /etc/apt/sources.list.d/*	
COPY ./sources.list /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y --no-install-recommends llvm-6.0 \
		bzip2 \
		libfreetype6 \
		libgl1-mesa-dev \
		libglu1-mesa \
		libxi6 \
		libxrender1 && \
	apt-get -y autoremove && \
	rm -rf /var/lib/apt/lists/*

# WORKDIR /tmp/blender

# CMD [ "blender" ]
WORKDIR /usr/app/blender-2.82a-linux64

RUN chmod +x blender
# CMD ["/bin/bash"]
CMD [ "/usr/app/blender-2.82a-linux64/blender" ]
