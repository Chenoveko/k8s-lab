#!/bin/bash
sudo apt update && sudo apt upgrade -y
###############################################################################
#                                  NERDCTL                                    #
###############################################################################
# Install nerdctl with dependencies (CNI plugins,BuildKit and RootlessKit and slirp4netns )
NERDCTL_VERSION=$(curl -s https://api.github.com/repos/containerd/nerdctl/releases/latest | grep tag_name | cut -d '"' -f 4 | sed 's/v//')
wget https://github.com/containerd/nerdctl/releases/download/v${NERDCTL_VERSION}/nerdctl-full-${NERDCTL_VERSION}-linux-amd64.tar.gz
sudo tar -xzf nerdctl-full-${NERDCTL_VERSION}-linux-amd64.tar.gz -C /usr/local/
# Clean up the downloaded files
rm nerdctl-full-${NERDCTL_VERSION}-linux-amd64.tar.gz
# Create a systemd service for BuildKit
sudo tee /etc/systemd/system/buildkit.service > /dev/null << EOF
[Unit]
Description=BuildKit
Documentation=https://github.com/moby/buildkit

[Service]
ExecStart=/usr/local/bin/buildkitd --oci-worker=false --containerd-worker=true

[Install]
WantedBy=multi-user.target
EOF
# Start and enable the BuildKit service
sudo systemctl daemon-reload
sudo systemctl start buildkit
sudo systemctl enable buildkit
sudo systemctl restart buildkit
# Verify BuildKit is running
sudo systemctl status buildkit
# Check that buildctl can communicate with the daemon
sudo buildctl debug workers
# Rootless mode
# Configuring AppArmor is needed only on Ubuntu 24.04 or later, with RootlessKit installed under a non-standard path.
cat <<EOT | sudo tee "/etc/apparmor.d/usr.local.bin.rootlesskit"
abi <abi/4.0>,
include <tunables/global>

/usr/local/bin/rootlesskit flags=(unconfined) {
  userns,

  # Site-specific additions and overrides. See local/README for details.
  include if exists <local/usr.local.bin.rootlesskit>
}
EOT

sudo systemctl restart apparmor.service
sudo apt install -y uidmap
/usr/local/bin/containerd-rootless-setuptool.sh install