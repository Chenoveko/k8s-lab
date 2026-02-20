## Get info svc
````bash
controlplane ~ ➜  kubectl get svc
NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
kubernetes   ClusterIP   10.43.0.1    <none>        443/TCP   6m31s
````
## Get detailed info
````bash
controlplane ~ ➜  kubectl describe svc kubernetes | grep TargetPort
TargetPort:               6443/TCP
````