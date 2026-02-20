## Filter pods using labels and selectors
````bash
controlplane ~ ➜  kubectl get pods --selector env=dev
NAME          READY   STATUS    RESTARTS   AGE
app-1-8z9dg   1/1     Running   0          88s
app-1-c44df   1/1     Running   0          88s
app-1-jjt42   1/1     Running   0          88s
db-1-668wz    1/1     Running   0          88s
db-1-9p48f    1/1     Running   0          88s
db-1-mp7pz    1/1     Running   0          88s
db-1-ntnm8    1/1     Running   0          88s
````
## Filter all resources using lables and selectors
````bash
controlplane ~ ➜  kubectl get all --selector env=prod
NAME              READY   STATUS    RESTARTS   AGE
pod/app-1-zzxdf   1/1     Running   0          2m46s
pod/app-2-nbggl   1/1     Running   0          2m46s
pod/auth          1/1     Running   0          2m46s
pod/db-2-n8vs5    1/1     Running   0          2m46s

NAME            TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)    AGE
service/app-1   ClusterIP   10.43.48.87   <none>        3306/TCP   2m46s

NAME                    DESIRED   CURRENT   READY   AGE
replicaset.apps/app-2   1         1         1       2m46s
replicaset.apps/db-2    1         1         1       2m46s
````
## Filter using various labels
````bash
controlplane ~ ➜  kubectl get all --selector env=prod,bu=finance,tier=frontend
NAME              READY   STATUS    RESTARTS   AGE
pod/app-1-zzxdf   1/1     Running   0          4m20s
````