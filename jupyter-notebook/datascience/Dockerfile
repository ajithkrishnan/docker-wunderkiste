ARG BASE_IMAGE=jupyter/scipy-notebook

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

# Only needed for Jupyter
EXPOSE 8888

#COPY jupyter_notebook_config.py /etc/jupyter/

WORKDIR /home/jovyan 

ENTRYPOINT ["jupyter", "notebook", "--allow-root"]
CMD ["--ip", "0.0.0.0", "--port", "8888", "--notebook-dir", "/home/jovyan/gitclones"]

