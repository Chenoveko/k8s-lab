#!/bin/bash
sudo apt update && sudo apt upgrade -y
###############################################################################
#                                  KUBECTL                                    #
###############################################################################
# 1) Update the apt package index and install packages needed to use the Kubernetes apt repository
sudo apt-get update
# apt-transport-https may be a dummy package; if so, you can skip that package
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg
# 2) Download the public signing key for the Kubernetes package repositories
# If the folder `/etc/apt/keyrings` does not exist, it should be created before the curl command, read the note below.
# sudo mkdir -p -m 755 /etc/apt/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.35/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
sudo chmod 644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg # allow unprivileged APT programs to read this keyring
# 3) Add the appropriate Kubernetes apt repository
# This overwrites any existing configuration in /etc/apt/sources.list.d/kubernetes.list
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.35/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo chmod 644 /etc/apt/sources.list.d/kubernetes.list   # helps tools such as command-not-found to work correctly
# 4) Update apt package index, then install kubectl
sudo apt-get update
sudo apt-get install -y kubectl
# 5) Enable shell autocompletion
sudo apt-get install bash-completion -y
type _init_completion
echo 'source /usr/share/bash-completion/bash_completion' >> ~/.bashrc
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null
sudo chmod a+r /etc/bash_completion.d/kubectl
source ~/.bashrc
# In order for kubectl to find and access a Kubernetes cluster, it needs a kubeconfig file,
# which is created automatically when you create a cluster using kube-up.sh
# By default, kubectl configuration is located at ~/.kube/config
# Check that kubectl is properly configured by getting the cluster state: kubectl cluster-info
