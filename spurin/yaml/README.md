## Create pod yaml
kubectl run nginx --image=nginx --dry-run=client -o yaml
## Create or update resources (does not validate a resource before applying)
kubectl apply -f resource.yaml 
## Create new resource (validates a resource before applying)
kubectl create -f resource.yaml
## Delete resource
kubectl delete --grace-period=0 -f resource.yaml