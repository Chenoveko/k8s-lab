## Runtime
```bash
controlplane ~ ➜  cat /var/lib/kubelet/config.yaml | grep containerRuntimeEndpoint
containerRuntimeEndpoint: unix:///var/run/containerd/containerd.sock
```
## CNI bin
```bash
controlplane ~ ➜  ls /opt/cni/bin/
bandwidth  dummy     host-device  LICENSE   portmap    sbr     tuning
bridge     firewall  host-local   loopback  ptp        static  vlan
dhcp       flannel   ipvlan       macvlan   README.md  tap     vrf
```
## CNI used
```bash
controlplane ~ ➜  cat /etc/cni/net.d/10-flannel.conflist 
{
  "name": "cbr0",
  "cniVersion": "0.3.1",
  "plugins": [
    {
      "type": "flannel",
      "delegate": {
        "hairpinMode": true,
        "isDefaultGateway": true
      }
    },
    {
      "type": "portmap",
      "capabilities": {
        "portMappings": true
      }
    }
  ]
}
```
