## Get info ns
````bash
controlplane ~ ➜  kubectl get ns
NAME              STATUS   AGE
default           Active   5m3s
dev               Active   55s
finance           Active   55s
kube-node-lease   Active   5m3s
kube-public       Active   5m3s
kube-system       Active   5m3s
````
## Gte pods in a ns
````bash
controlplane ~ ➜  kubectl get pods -n research
NAME    READY   STATUS      RESTARTS      AGE
dna-1   0/1     Completed   5 (99s ago)   3m6s
dna-2   0/1     Completed   5 (91s ago)   3m6s
````
## Create pod in ns
````bash
controlplane ~ ➜  kubectl run redis --image=redis -n finance
pod/redis created
````
## Filter pod in ns
````bash
controlplane ~ ➜  kubectl get pods -A | grep blue
marketing       blue                                      1/1     Running            0             7m3s
````
## Same NS -> shortest DNS name is redis-service

## Different NS -> shortest DNS name is redis-service.dev.svc.cluster.local