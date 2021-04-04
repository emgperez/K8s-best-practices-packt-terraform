# Locals block including the tags that will be assigned to the resources inside the VPC)
locals {
  common_tags = {
    ManagedBy = "terraform"
  }
}

# VPC module block (it creates an instance of the eks-vpc module)
module "vpc" {
  source = "../modules/eks-vpc" # Source code of the module
  clusters_name_prefix = var.clusters_name_prefix
  eks_vpc_block = var.vpc_block # CIDR block
  eks_public_subnets_prefix_list = var.public_subnets_prefix_list
  eks_private_subnets_prefix_list = var.private_subnets_prefix_list
  common_tags = local.common_tags
}
