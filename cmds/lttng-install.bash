#!/bin/bash
sudo apt-add-repository ppa:lttng/stable-2.13
sudo apt-get update

sudo apt-get install lttng-tools
sudo apt-get install lttng-modules-dkms
sudo apt-get install liblttng-ust-dev

sudo apt-get install python3-lttngust