#ARG BASE_IMAGE=jupyter/scipy-notebook
ARG BASE_IMAGE=tensorflow/tensorflow:latest-gpu-jupyter

FROM $BASE_IMAGE

LABEL maintainer="Ajith Krishnan"

USER root

RUN apt update && \
    apt install -y --no-install-recommends \
    git \
    ffmpeg \
    libgl1-mesa-dev \
    vim && \
    apt clean && rm -rf /var/lib/apt/lists/*

# By copying over requirements first, we make sure that Docker will "cache"
# our installed requirements in a dedicated FS layer rather than reinstall
# them on every build
COPY requirements.txt requirements.txt

# Install the requirements
RUN python3 -m pip install -r requirements.txt

#
#RUN conda install --quiet --yes \
#    'filterpy' && \
#    conda clean --all -f -y && \
#    fix-permissions "${CONDA_DIR}" && \
#    fix-permissions "/home/${NB_USER}" 
#
#USER root

# Only needed for Jupyter
EXPOSE 8888

#COPY jupyter_notebook_config.py /etc/jupyter/

WORKDIR /home/jovyan 
#RUN git clone --depth=1 https://github.com/rlabbe/Kalman-and-Bayesian-Filters-in-Python.git

ENTRYPOINT ["jupyter", "notebook", "--allow-root"]
CMD ["--ip", "0.0.0.0", "--port", "8890", "--notebook-dir", "/home/jovyan/gitclones"]

