## DNS
```bash
controlplane ~ ➜  k get pods -n kube-system 
NAME                                   READY   STATUS    RESTARTS   AGE
coredns-6678bcd974-5dtsg               1/1     Running   0          21m
coredns-6678bcd974-h8pbb               1/1     Running   0          21m
etcd-controlplane                      1/1     Running   0          21m
kube-apiserver-controlplane            1/1     Running   0          21m
kube-controller-manager-controlplane   1/1     Running   0          21m
kube-proxy-58jmg                       1/1     Running   0          21m
kube-scheduler-controlplane            1/1     Running   0          21m
```