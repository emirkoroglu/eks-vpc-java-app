

variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-2"
}

##### VPC ####
variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
  default     = "dev-vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  type        = list(string)
  description = "The availability zones to use for the VPC subnets"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_private_subnets" {
  type        = list(string)
  description = "The CIDR blocks for the private subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_public_subnets" {
  type        = list(string)
  description = "The CIDR blocks for the public subnets"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "vpc_enable_nat_gateway" {
  type        = bool
  description = "Whether to enable a NAT gateway for the private subnets"
  default     = true
}

variable "vpc_enable_vpn_gateway" {
  type        = bool
  description = "Whether to enable a VPN gateway for the VPC"
  default     = true
}

variable "vpc_tags" {
  type        = map(string)
  description = "Additional tags to apply to the VPC resources"
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}

############### EKS  ##############
variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Version of the EKS cluster"
  type        = string
}

variable "cluster_endpoint_private_access" {
  description = "Whether or not the EKS cluster has private access"
  type        = bool
}

variable "cluster_endpoint_public_access" {
  description = "Whether or not the EKS cluster has public access"
  type        = bool
}

variable "vpc_id" {
  description = "ID of the VPC in which the EKS cluster will be created"
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "IDs of the subnets in which the EKS cluster will be created"
  type        = list(string)
  default     = null
}


variable "enable_irsa" {
  description = "Whether or not to enable IAM roles for service accounts (IRSA) for the EKS cluster"
  type        = bool
}

variable "eks_managed_node_group_defaults" {
  description = "Default settings for EKS managed node groups"
  type        = map(string)
  default     = {
    disk_size = "50"
  }
}

variable "eks_managed_node_groups" {
  description = "Settings for EKS managed node groups"
  type        = map(object({
    desired_size    = number
    min_size        = number
    max_size        = number
    labels          = map(string)
    instance_types  = list(string)
    capacity_type   = string
    taints          = list(map(string))
  }))
}

variable "tags" {
  description = "Tags to apply to EKS resources"
  type        = map(string)
  default = {
    "Environment" = "dev"
    "Owner" = "Emir"
  }
}
