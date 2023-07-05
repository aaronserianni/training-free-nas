FROM sonoisa/deep-learning-coding:pytorch1.12.0_tensorflow2.9.1 

USER root

RUN apt-get update && apt-get install -y \ 
    vim \
    wget \
    libpng-dev \
    libjpeg-dev \
    graphviz \
    python3-tk

RUN pip install notebook ipywidgets jupyterlab jupyterlab_materialdarker \
    lckr-jupyterlab-variableinspector \ jupyterlab-code-formatter \
    isort \ black[jupyter] \ transformers \ seaborn

WORKDIR "/home/jovyan/work" 

ENV SHELL=/bin/bash

USER $NB_UID 
