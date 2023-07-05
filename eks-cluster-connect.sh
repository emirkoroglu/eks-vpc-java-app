#!/bin/bash

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

region="us-east-1"
cluster_name="my-eks"

aws eks get-token --region $region --cluster-name $cluster_name
aws eks update-kubeconfig --region $region --name $cluster_name

if [ $? -eq 0 ]; then
  echo -e "${GREEN}Connection to Cluster successful..${NC}"
else
  echo -e "${RED}An error occurred${NC}"
fi

kubectl get svc

# kubectl port-forward -n monitoring service/grafana 3000:3000
# http://localhost:3000


# kubectl port-forward -n monitoring service/prometheus 9090:9090
# http://localhost:9090