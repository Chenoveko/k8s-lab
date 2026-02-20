## Create pod
````bash
controlplane ~ ➜  kubectl run nginx --image=nginx
pod/nginx created
````
## Get info about pods
````bash
controlplane ~ ➜  kubectl get pods
NAME            READY   STATUS    RESTARTS   AGE
newpods-kdjdw   1/1     Running   0          88s
newpods-rscnh   1/1     Running   0          88s
newpods-xx5dh   1/1     Running   0          88s
nginx           1/1     Running   0          43s
````
## Gte detailed info
````bash
controlplane ~ ➜  kubectl describe pod newpods-xx5dh | grep Image
    Image:         busybox
    Image ID:      docker.io/library/busybox@sha256:b3255e7dfbcd10cb367af0d409747d511aeb66dfac98cf30e97e87e4207dd76f
````
## Delete pod
````bash
controlplane ~ ➜  kubectl delete pod webapp 
pod "webapp" deleted from default namespace
````
## Create pod yaml
````bash
kubectl run pod --image=redis123 --dry-run=client -o yaml > mypod.yaml
````
## Create resource from yaml
````bash
controlplane ~ ➜  kubectl apply -f mypod.yaml 
pod/redis created
````
