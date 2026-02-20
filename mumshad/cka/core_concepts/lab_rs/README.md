## Get info about rs
````bash
controlplane ~ ➜  kubectl get rs
NAME              DESIRED   CURRENT   READY   AGE
new-replica-set   4         4         0       7s
````
## Get detailed info
````bash
controlplane ~ ➜  kubectl describe rs new-replica-set | grep Image
    Image:      busybox777
````
## Get apiVersion for resources
````bash
controlplane ~ ➜  kubectl api-resources | grep replicaset
replicasets                         rs           apps/v1                             true         ReplicaSet
````
## Create rs
````bash
controlplane ~ ➜  kubectl create -f replicaset-definition-1.yaml 
replicaset.apps/replicaset-1 created
````
## Delete rs
````bash
controlplane ~ ➜  kubectl delete rs replicaset-1 replicaset-2 
replicaset.apps "replicaset-1" deleted from default namespace
replicaset.apps "replicaset-2" deleted from default namespace
````
## Edit rs
````bash
controlplane ~ ➜  kubectl edit rs new-replica-set 
replicaset.apps/new-replica-set edited
````
## Force replacement (delete and create)
````bash
controlplane ~ ➜  kubectl replace --force  -f /root/new-replica-set.yaml 
replicaset.apps "new-replica-set" deleted from default namespace
replicaset.apps/new-replica-set replaced
````
## Scale
````bash
controlplane ~ ➜  kubectl scale rs --replicas=5 new-replica-set 
replicaset.apps/new-replica-set scaled
````