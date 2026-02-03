## Create a pod with the "Always" restart policy (default behaviour)
kubectl run nginx-always --image=nginx --restart=Always
## Create a pod with the "OnFailure" restart policy
kubectl run nginx-onfailure --image=nginx --restart=OnFailure
## Create a pod with the "Never" restart policy
kubectl run nginx-never --image=nginx --restart=Never