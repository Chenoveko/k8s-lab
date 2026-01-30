#!/bin/bash
sudo apt update && sudo apt upgrade -y
###############################################################################
#                                    HELM                                     #
###############################################################################
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-4 | /bin/bash