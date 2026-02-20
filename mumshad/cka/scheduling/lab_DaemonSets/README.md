## Gte info about ds
```bash
controlplane ~ ➜  kubectl get ds -A
NAMESPACE      NAME              DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR            AGE
kube-flannel   kube-flannel-ds   1         1         1       1            1           <none>                   9m34s
kube-system    kube-proxy        1         1         1       1            1           kubernetes.io/os=linux   9m35s
```
## Create a yaml ds. Use a deploy and remove replicas, strategy and status
```bash
controlplane ~ ➜  kubectl create deploy elasticsearch --image=registry.k8s.io/fluentd-elasticsearch:1.20 -n kube-system --dry-run=client -o yaml > ds.yaml

controlplane ~ ➜  vim ds.yaml 

controlplane ~ ➜  kubectl create -f ds.yaml 
daemonset.apps/elasticsearch created

controlplane ~ ➜  kubectl get ds -n kube-system
NAME            DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR            AGE
elasticsearch   1         1         0       1            0           <none>                   14s
kube-proxy      1         1         1       1            1           kubernetes.io/os=linux   19m
```