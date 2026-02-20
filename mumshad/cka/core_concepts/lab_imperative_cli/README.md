## Create pod
````bash
controlplane ~ ➜  kubectl run nginx-pod --image=nginx:alpine
pod/nginx-pod created
````
## Create pod with labels
````bash
controlplane ~ ➜  kubectl run redis --image=redis:alpine -l tier=db
pod/redis created
````
## Expose svc
````bash
controlplane ~ ➜  kubectl expose pod redis --port=6379 --type=ClusterIP --nam
e=redis-service
service/redis-service exposed
````
## Create deploy
````bash
controlplane ~ ➜  kubectl create deploy webapp --image=kodekloud/webapp-color --replicas=3 
deployment.apps/webapp created
````
## Run pod on certain port
````bash
controlplane ~ ➜  kubectl run custom-nginx --image=nginx --port=8080
pod/custom-nginx created
````
## Create ns
````bash
controlplane ~ ➜  kubectl create ns dev-ns
namespace/dev-ns created
````
## Create deploy
````bash
controlplane ~ ➜  kubectl create deploy redis-deploy -n dev-ns --replicas=2 --image=redis
deployment.apps/redis-deploy created
````