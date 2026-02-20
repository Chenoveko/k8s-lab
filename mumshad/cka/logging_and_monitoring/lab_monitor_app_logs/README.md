## View logs of container in pod
```bash
trolplane ~ ➜  kubectl logs webapp-2 -c simple-webapp
[2026-02-11 21:27:33,818] INFO in event-simulator: USER1 logged in
[2026-02-11 21:27:34,819] INFO in event-simulator: USER2 is viewing page2
```