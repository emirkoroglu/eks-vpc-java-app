output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "eks_cluster_name" {
  value = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_node_group_instance_profile_arns" {
  value = module.eks.node_group_instance_profile_arns
}

output "eks_node_group_role_arns" {
  value = module.eks.node_group_role_arns
}

output "eks_node_group_security_group_ids" {
  value = module.eks.node_group_security_group_ids
}

output "eks_node_group_subnet_ids" {
  value = module.eks.node_group_subnet_ids
}

output "eks_node_group_launch_template_ids" {
  value = module.eks.node_group_launch_template_ids
}

output "eks_node_group_launch_template_latest_versions" {
  value = module.eks.node_group_launch_template_latest_versions
}

output "eks_node_group_user_data" {
  value = module.eks.node_group_user_data
}

output "eks_node_group_capacity_types" {
  value = module.eks.node_group_capacity_types
}

output "eks_node_group_instance_types" {
  value = module.eks.node_group_instance_types
}

output "eks_node_group_desired_capacity" {
  value = module.eks.node_group_desired_capacity
}

output "eks_node_group_max_capacity" {
  value = module.eks.node_group_max_capacity
}

output "eks_node_group_min_capacity" {
  value = module.eks.node_group_min_capacity
}

output "eks_node_group_mixed_instances_policy_on_demand_base_capacity" {
  value = module.eks.node_group_mixed_instances_policy_on_demand_base_capacity
}

output "eks_node_group_mixed_instances_policy_on_demand_percentage_above_base_capacity" {
  value = module.eks.node_group_mixed_instances_policy_on_demand_percentage_above_base_capacity
}

output "eks_node_group_mixed_instances_policy_spot_allocation_strategy" {
  value = module.eks.node_group_mixed_instances_policy_spot_allocation_strategy
}

output "eks_node_group_mixed_instances_policy_override" {
  value = module.eks.node_group_mixed_instances_policy_override
}
