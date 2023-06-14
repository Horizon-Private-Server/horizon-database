#!/bin/bash

docker container kill horizon-database
set -e

sudo rm -rf data
bash run.sh
