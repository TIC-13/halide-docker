FROM ubuntu:22.04

ENV TZ=America/Recife
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install -y neovim nano wget curl tar
RUN apt-get install -y build-essential g++ libjpeg-dev libpng-dev libz-dev libtinfo-dev libopencv-dev
RUN apt install -y python3-pip python3-opencv
RUN pip install numpy opencv-python pytest

RUN mkdir -p /Halide
RUN wget -O /Halide/Halide.tar.gz https://github.com/halide/Halide/releases/download/v17.0.1/Halide-17.0.1-x86-64-linux-52541176253e74467dabc42eeee63d9a62c199f6.tar.gz
RUN tar -xvf /Halide/Halide.tar.gz -C /Halide/ --strip-components=1
RUN ln -s /Halide/share/Halide/tools/ /Halide/tools

ENV HALIDE_ROOT /Halide
ENV LD_LIBRARY_PATH /Halide/lib/

CMD ["/bin/bash"]


