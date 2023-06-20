#!/bin/bash

region="us-east-1"
cluster_name="my-eks"

aws eks get-token --region $region --cluster-name $cluster_name
aws eks update-kubeconfig --region $region --name $cluster_name
kubectl get svc