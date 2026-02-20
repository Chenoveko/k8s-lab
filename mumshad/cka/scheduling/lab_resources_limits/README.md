## Dont try to edit, use replace
```bash
controlplane ~ ➜  kubectl get po elephant -o yaml > elephant.yaml

controlplane ~ ➜  vim elephant.yaml 

controlplane ~ ➜  kubectl replace --force -f elephant.yaml 
pod "elephant" deleted from default namespace
pod/elephant replaced
```