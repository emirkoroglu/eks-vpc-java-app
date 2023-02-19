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
  default     = {
    Terraform   = "true"
    Environment = "dev"
  }
}

variable "eks_cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
  default     = "emirs-cluster"
}

variable "eks_cluster_version" {
  type        = string
  description = "The Kubernetes version to use for the EKS cluster"
  default     = "1.24"
}

variable "eks_cluster_endpoint_public_access" {
  type        = bool
  description = "Whether the EKS cluster endpoint is accessible from the public internet"
  default     = true
}

variable "eks_vpc_id" {
  type        = string
  description = "The ID of the VPC to use for the EKS cluster"
  default     = "vpc-070fc52963b339328"
}

variable "eks_subnet_ids" {
  type        = list(string)
  description = "The IDs of the subnets to use for the EKS cluster"
  default     = ["subnet-0a7687f4b18561684", "subnet-0059f7b01e092a33b", "subnet-0c43373c16548a6a1"]
}

variable "eks_control_plane_subnet_ids" {
  type        = list(string)
  description = "The IDs of the subnets to use for the EKS control plane"
  default     = ["subnet-0a7687f4b18561684", "subnet-0059f7b01e092a33b", "subnet-0c43373c16548a6a1"]
}
