#!/bin/bash
helm upgrade prometheus-stack prometheus-community/kube-prometheus-stack -n monitoring --values values.yaml