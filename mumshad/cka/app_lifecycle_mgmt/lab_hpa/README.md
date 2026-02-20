# Horizontal Pod Autoscaling
## CLI autoscale
```bash
controlplane ~ ➜  kubectl autoscale deployment nginx-deployment --max=3 --cpu=80%
horizontalpodautoscaler.autoscaling/nginx-deployment autoscaled
```
## Gte info HPA
```bash
controlplane ~ ➜  k get hpa
NAME               REFERENCE                     TARGETS       MINPODS   MAXPODS   REPLICAS   AGE
nginx-deployment   Deployment/nginx-deployment   cpu: 0%/80%   1         3         1          6m7s
```
## Get events
```bash
controlplane ~ ➜  kubectl events hpa nginx-deployment | grep -i "FailedGetResourceMetric"
5m12s (x3 over 6m57s)    Warning   FailedGetResourceMetric        HorizontalPodAutoscaler/nginx-deployment   failed to get cpu utilization: missing request for cpu in container nginx of Pod nginx-deployment-bf744486c-bxbb6
3m57s (x10 over 6m42s)   Warning   FailedGetResourceMetric        HorizontalPodAutoscaler/nginx-deployment   failed to get cpu utilization: missing request for cpu in container nginx of Pod nginx-deployment-bf744486c-lqqv8
```
