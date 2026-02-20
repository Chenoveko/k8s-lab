## Gte info about static pods -> those with -<Node-Name> appended in the name
```bash
controlplane ~ ➜  kubectl get pods -A
NAMESPACE      NAME                                   READY   STATUS    RESTARTS   AGE
kube-flannel   kube-flannel-ds-bvvqb                  1/1     Running   0          5m32s
kube-flannel   kube-flannel-ds-rc76h                  1/1     Running   0          5m58s
kube-system    coredns-6678bcd974-phkn6               1/1     Running   0          5m58s
kube-system    coredns-6678bcd974-z2cwh               1/1     Running   0          5m58s
kube-system    etcd-controlplane                      1/1     Running   0          6m6s
kube-system    kube-apiserver-controlplane            1/1     Running   0          6m6s
kube-system    kube-controller-manager-controlplane   1/1     Running   0          6m7s
kube-system    kube-proxy-j28j5                       1/1     Running   0          5m58s
kube-system    kube-proxy-mbt7c                       1/1     Running   0          5m32s
kube-system    kube-scheduler-controlplane            1/1     Running   0          6m6s
```
## Identify kubelet config file
```bash
controlplane ~ ➜  ps -aux | grep /usr/bin/kubelet
bad data in /proc/uptime
root        3501  0.0  0.1 2988192 89684 ?       Ssl  12:24   0:08 /usr/bin/kubelet --bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml --pod-infra-container-image=registry.k8s.io/pause:3.10.1
root       12774  0.0  0.0   6936  2432 pts/2    S+   12:36   0:00 grep --color=auto /usr/bin/kubelet
```
## Path of the directory holding the static pod definition files
```bash
controlplane ~ ➜  grep -i staticpod /var/lib/kubelet/config.yaml
staticPodPath: /etc/kubernetes/manifests
```
## List static pods yamls
```bash
controlplane ~ ➜  ls /etc/kubernetes/manifests
etcd.yaml  kube-apiserver.yaml  kube-controller-manager.yaml  kube-scheduler.yaml
```
## Create static pod
```bash
controlplane ~ ➜  kubectl run static-busybox --image=busybox -n default --dry-run=client -o yaml --command -- sleep 1000 > /etc/kubern
etes/manifests/static-busybox.yaml

controlplane ~ ➜  kubectl get pods 
NAME                          READY   STATUS    RESTARTS   AGE
static-busybox-controlplane   1/1     Running   0          6s
```
## To delete a static pod on certain node, ssh to that node and delete the manifest of the static pod and wait for 30 seconds

