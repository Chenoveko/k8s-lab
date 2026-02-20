## Deploy the Metrics Server in your Kubernetes cluster by applying the latest release
```bash
controlplane ~ ➜  kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
serviceaccount/metrics-server created
clusterrole.rbac.authorization.k8s.io/system:aggregated-metrics-reader created
clusterrole.rbac.authorization.k8s.io/system:metrics-server created
rolebinding.rbac.authorization.k8s.io/metrics-server-auth-reader created
clusterrolebinding.rbac.authorization.k8s.io/metrics-server:system:auth-delegator created
clusterrolebinding.rbac.authorization.k8s.io/system:metrics-server created
service/metrics-server created
deployment.apps/metrics-server created
apiservice.apiregistration.k8s.io/v1beta1.metrics.k8s.io created
```
## Metric of nodes
```bash
controlplane ~ ➜  kubectl top node
NAME           CPU(cores)   CPU(%)   MEMORY(bytes)   MEMORY(%)   
controlplane   177m         1%       849Mi           1%          
node01         22m          0%       153Mi           0%    
```
## Metric of pods
```bash
controlplane ~ ➜  kubectl top pods
NAME       CPU(cores)   MEMORY(bytes)   
elephant   12m          30Mi            
lion       1m           16Mi            
rabbit     93m          250Mi  
```