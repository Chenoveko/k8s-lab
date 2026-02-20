# Taints (node level)
## Add taint to a node
```bash
controlplane ~ ➜  kubectl taint nodes node01 spray=mortein:NoSchedule
node/node01 tainted
```
## Remove taint (same as add)
```bash
controlplane ~ ➜  kubectl taint nodes controlplane node-role.kubernetes.io/control-plane:NoSchedule-
node/controlplane untainted
```
# Tolerations (pod level in yaml)