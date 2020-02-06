# Builder image
FROM jupyter/datascience-notebook:latest

# Install extras
RUN pip install \
      tensorflow \
      tensorflow-datasets \
