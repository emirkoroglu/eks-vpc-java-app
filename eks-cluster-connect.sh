#!/bin/bash

region="us-east-1"
cluster_name="my-eks"

aws eks get-token --region $region --cluster-name $cluster_name
aws eks update-kubeconfig --region $region --name $cluster_name
kubectl get svc

# kubectl port-forward -n monitoring service/grafana 3000:3000
# http://localhost:3000


# kubectl port-forward -n monitoring service/prometheus 9090:9090
# http://localhost:9090