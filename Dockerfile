# Base image frpm:
# https://github.com/jupyter/docker-stacks
FROM jupyter/datascience-notebook:latest

# Install extras
RUN pip install \
      tensorflow \
      tensorflow-datasets \
