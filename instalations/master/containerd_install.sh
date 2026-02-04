#!/bin/bash
sudo apt update && sudo apt upgrade -y
###############################################################################
#                                 CONTAINERD                                 #
###############################################################################
# Instalation via apt
sudo apt install containerd -y
# Start and enable the containerd service
sudo systemctl start containerd
sudo systemctl enable containerd
sudo systemctl restart containerd
# Verify containerd is running
sudo systemctl status containerd