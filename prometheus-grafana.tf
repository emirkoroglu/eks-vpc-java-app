
resource "null_resource" "prometheus" {
  provisioner "local-exec" {
    command = "aws eks update-kubeconfig --name ${data.aws_eks_cluster.cluster.name} --region us-east-1 --kubeconfig temp_kubeconfig.yaml && kubectl apply -f prometheus.yaml --kubeconfig temp_kubeconfig.yaml && rm temp_kubeconfig.yaml"
  }

  depends_on = [data.aws_eks_cluster.cluster]
}

resource "null_resource" "grafana" {
  provisioner "local-exec" {
    command = "aws eks update-kubeconfig --name ${data.aws_eks_cluster.cluster.name} --region us-east-1 --kubeconfig temp_kubeconfig.yaml && kubectl apply -f grafana.yaml --kubeconfig temp_kubeconfig.yaml && rm temp_kubeconfig.yaml"
  }

  depends_on = [data.aws_eks_cluster.cluster]
}

# kubectl port-forward -n monitoring service/grafana 3000:3000
# http://localhost:3000


# kubectl port-forward -n monitoring service/prometheus 9090:9090
# http://localhost:9090