## Run single pod container
kubectl run nginx
## Get info about pods
kubectl get pods -o wide
## Run alpine pod container and delete when get out
kubectl run alpine --image=alpine --restart=Never --rm -it -- /bin/sh
## Run alpine with env variable
kubectl run alpine --image=alpine --restart=Never --env=MY_VARIABLE="Hello, Kubernetes!" --rm -it -- /bin/sh
## Delete pod
kubectl delete pod alpine
## Aliases for pods -> po, pod and pods 
