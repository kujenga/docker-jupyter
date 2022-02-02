# Base image frpm:
# https://github.com/jupyter/docker-stacks
# https://hub.docker.com/r/jupyter/datascience-notebook/tags
FROM jupyter/datascience-notebook:cf5a7ab55638

# Install Tensorflow
# Based on: https://github.com/jupyter/docker-stacks/blob/master/tensorflow-notebook/Dockerfile
RUN mamba install --quiet --yes \
    'tensorflow' \
    'tensorflow-datasets' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
