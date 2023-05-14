#!/bin/bash

# Install GoHugo and Make
apt-get update && apt-get install -y hugo make

# Execute the 'make build' command
make build
