#!/bin/bash

# Install GoHugo and Make
apt-get update && apt-get install -y hugo make

# Generate the website
make build

# Create dist directory if it doesn't exist
mkdir -p dist

# Generate the website into dist directory
hugo -d dist/
