## Create deployment
kubectl create deployment nginx --image=nginx --port 80
## Edit deployment
kubectl edit deployment nginx
## Describe deployment (a lot of information)
kubectl describe deployment nginx
## Get info about resources, like deploy
kubectl explain deploy
## Get info about deployments
kubectl get deployment -o wide
## Get info about deployments, replica set and pods
kubectl get pods -o wide
kubectl get all -o wide
kubectl get replicaset -o wide
## Scale number of replicas from a deploy
kubectl scale deployment/nginx --replicas=2
## 
kubectl rollout status deploy/nginx
## Aliases for deployments -> po, pod and pods 
## https://stackoverflow.com/questions/46204504/kubernetes-pod-naming-convention