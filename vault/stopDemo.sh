#!/bin/sh

## go to the right spot
cd ~/work/jupyter/hc_demos-jupyter/vault
echo "===============STOPING VAULT=============="
pkill -9 vault
echo "===============STOPING VAULT=============="
pkill -9 consul
echo "===============DEMO STOPPED=============="
