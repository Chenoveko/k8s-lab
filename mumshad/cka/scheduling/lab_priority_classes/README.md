## Listing priority classes
```bash
root@controlplane ~ ✖ k get priorityclasses.scheduling.k8s.io 
NAME                      VALUE        GLOBAL-DEFAULT   AGE   PREEMPTIONPOLICY
system-cluster-critical   2000000000   false            19m   PreemptLowerPriority
system-node-critical      2000001000   false            19m   PreemptLowerPriority
```
## Get more info
```bash
root@controlplane ~ ➜  k describe priorityclasses system-node-critical 
Name:              system-node-critical
Value:             2000001000
GlobalDefault:     false
PreemptionPolicy:  PreemptLowerPriority
Description:       Used for system critical pods that must not be moved from their current node.
Annotations:       <none>
Events:            <none>
```
## Create priority clasess
```bash
root@controlplane ~ ➜  k create priorityclass high-priority --dry-run=client -o yaml > priority.yaml

root@controlplane ~ ➜  vim priority.yaml 

root@controlplane ~ ➜  kubectl create -f priority.yaml 
priorityclass.scheduling.k8s.io/high-priority created
```
## Get priority on pods
```bash
root@controlplane ~ ➜  kubectl get pods -o custom-columns="NAME:.metadata.name,PRIORITY:.spec.priorityClassName"
NAME            PRIORITY
high-prio-pod   high-priority
low-prio-pod    low-priority
```
## 
```bash

```
## 
```bash

```
## 
```bash

```
