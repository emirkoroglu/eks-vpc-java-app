output "eks_cluster_name" {
  value = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "Update-K8-context-first-then-you-will-be-able-to-connect-to-cluster" {
  value = "aws eks update-kubeconfig --name clustername --region us-east-1"
}