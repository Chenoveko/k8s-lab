# Ways to change the image
## With set image (Recommended Approach)
```bash
controlplane ~ ➜  kubectl set image deploy frontend simple-webapp=kodekloud/webapp-color:v2
deployment.apps/frontend image updated
```
## Editing yaml
```bash
kubectl edit deployment frontend
```
# Strategies -> RollingUpdate or Recreate