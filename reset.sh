#!/bin/bash
set -e

docker container kill horizon-database
sudo rm -rf data
bash run.sh
