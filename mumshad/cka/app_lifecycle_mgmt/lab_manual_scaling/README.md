## Horizontal scale
```bash
controlplane ~ ➜  k scale deployment flask-web-app --replicas=3
deployment.apps/flask-web-app scaled
```
When you scale a deployment to a higher number of replicas than the cluster can support due to resource constraints, Kubernetes will create as many replicas as possible within the available resources. The remaining replicas will be in a pending state until sufficient resources are freed up or added to the cluster. This behavior allows Kubernetes to manage resources dynamically while maintaining the desired state as closely as possible.