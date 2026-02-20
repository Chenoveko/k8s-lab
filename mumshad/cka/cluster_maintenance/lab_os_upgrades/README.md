## Drain node in preparation for maintenance
```bash
controlplane ~ ➜  kubectl drain node01 --ignore-daemonsets
node/node01 already cordoned
Warning: ignoring DaemonSet-managed Pods: kube-flannel/kube-flannel-ds-69wql, kube-system/kube-proxy-ddsmm
evicting pod default/blue-759779556-sgf4b
evicting pod default/blue-759779556-2ws24
pod/blue-759779556-2ws24 evicted
pod/blue-759779556-sgf4b evicted
node/node01 drained
```
## Mark node as schedulable.
```bash
controlplane ~ ➜  k uncordon node01
node/node01 uncordoned
```
## Mark node as anschedulable.
```bash
controlplane ~ ➜  k cordon node01
node/node01 cordoned
```