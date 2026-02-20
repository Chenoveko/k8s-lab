## Range of IP addresses configured for PODs on this cluster
```bash
controlplane ~ ➜  cat /etc/kubernetes/manifests/kube-controller-manager.yaml   | grep cluster-cidr
    - --cluster-cidr=172.17.0.0/16
```
## IP Range configured for the services within the cluster
```bash
controlplane ~ ➜  cat /etc/kubernetes/manifests/kube-apiserver.yaml   | grep cluster-ip-range
    - --service-cluster-ip-range=172.20.0.0/16
```