# Base image frpm:
# https://github.com/jupyter/docker-stacks
FROM jupyter/datascience-notebook:latest

# Install Tensorflow
# Based on: https://github.com/jupyter/docker-stacks/blob/master/tensorflow-notebook/Dockerfile
RUN mamba install --quiet --yes \
    'tensorflow=2.4.1' \
    'tensorflow-datasets=4.*' && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
