# Includes the values we need to get after creating the VPC. These values will be used as inputs when creating the Kubernetes cluster
output "vpc_id" {
  value = module.vpc.eks_cluster_vpc_id
}

output "private_subnet_ids" {
  value = module.vpc.eks_private_subnet_ids
}

output "public_subnet_ids" {
  value = module.vpc.eks_public_subnet_ids
}
