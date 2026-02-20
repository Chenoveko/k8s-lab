## Check updates on cluster
```bash
controlplane ~ ➜  kubeadm upgrade plan
...
```
## Upgrade kubeadm
```bash
controlplane ~ ➜  kubeadm upgrade plan v1.34.0 && kubeadm upgrade apply v1.34.0
...
```
## Upgrade kubelet
```bash
controlplane ~ ➜  apt-get install kubelet=1.34.0-1.1
``` 
# Restart
```bash
controlplane ~ ➜  systemctl daemon-reload && systemctl restart kubelet
``` 