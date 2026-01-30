#!/bin/bash
# Aliases for CLI with k8s
cat << 'EOF' >> ~/.bashrc
alias k='kubectl'
alias k9s='/home/linuxbrew/.linuxbrew/bin/k9s'
# kubectl get
alias kgd='kubectl get deploy'
alias kgp='k get pods'
alias kgr='kubectl get replicasets'
alias kgn="kubectl get namespaces"
# kubectl create
alias kcn="kubectl create namespace"
alias kcd="kubectl create deploy"
EOF
source ~/.bashrc