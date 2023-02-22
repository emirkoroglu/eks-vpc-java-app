region = "us-east-1"

vpc_name               = "my-vpc"
vpc_cidr               = "10.0.0.0/16"
vpc_azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
vpc_private_subnets    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
vpc_public_subnets     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
vpc_enable_nat_gateway = true
vpc_enable_vpn_gateway = true
vpc_tags = {
  Terraform   = "true"
  Environment = "dev"
}

#########################EKS ###########
#########

cluster_name = "my-eks"
cluster_version = "1.23"
cluster_endpoint_private_access = true
cluster_endpoint_public_access = true

enable_irsa = true

eks_managed_node_group_defaults = {
  disk_size = 50
}

eks_managed_node_groups = {
  general = {
    desired_size     = 1
    min_size         = 1
    max_size         = 10
    labels           = {
      role = "general"
    }
    instance_types   = ["t3.small"]
    capacity_type    = "ON_DEMAND"
    taints = [
      {
        key    = "market"
        value  = "spot"
        effect = "NO_SCHEDULE"
      }
    ]
  }
  spot = {
    desired_size     = 1
    min_size         = 1
    max_size         = 10
    labels           = {
      role = "spot"
    }
    instance_types   = ["t3.micro"]
    capacity_type    = "SPOT"
    taints = [
      {
        key    = "market"
        value  = "spot"
        effect = "NO_SCHEDULE"
      }
    ]
  }
}



#Use the terraform apply -var-file=my-vars.tfvars  file like this for different tf.vars file.