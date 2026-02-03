#!/bin/bash
kubectl port-forward -n monitoring svc/prometheus-stack-grafana 9090:80
