## Get info about deploys
````bash
controlplane ~ ➜  kubectl get deploy
NAME                  READY   UP-TO-DATE   AVAILABLE   AGE
frontend-deployment   0/4     4            0           5s
````
## Get detailed info
````bash
controlplane ~ ➜  kubectl describe deploy frontend-deployment | grep Image
    Image:      busybox888
````
## Create from scratch
````bash
controlplane ~ ➜  kubectl create deploy httpd-frontend --replicas=3 --image=httpd:2.4-alpine --dry-run=client -o yaml > deploy.yaml
controlplane ~ ➜  kubectl apply -f deploy.yaml 
deployment.apps/httpd-frontend created
````