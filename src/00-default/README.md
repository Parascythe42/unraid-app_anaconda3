# Default

Builds an image based on the latest [continuumio/anaconda3](https://hub.docker.com/r/continuumio/anaconda3) such that no post arguments need to be passed when running in Unraid. It gets published as [muxelmann/anaconda3:default](https://hub.docker.com/r/muxelmann/anaconda3/tags).

The default directory `/opt/notebooks` and port of `8888` are the same as for the original/official image on Dockerhub; they should be mapped to the host system as required.
