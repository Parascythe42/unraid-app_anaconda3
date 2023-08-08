# Code

## tl;dr

Several images are being built and published, based on their folder-order. Thereby, dependencies e.g., for Keras, are maintained.

## How to Build

The images are build by running:

```sh
./build.sh
```

This script goes through each folder in an order, builds the image and publishes it to Dockerhub.
