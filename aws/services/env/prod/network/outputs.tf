output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "rancher_eks_subnet_ids" {
  value = module.vpc.rancher_eks_subnet_ids
}

output "eks_subnet_ids" {
  value = module.vpc.public_eks_control_subnet_ids
}

output "eks_nodegroup_subnet_ids" {
  value = module.vpc.private_eks_nodegroup_subnet_ids
}

output "prod_lambda_subnet_ids" {
  value = module.vpc.private_prod_lambda_subnet_ids
}

output "test_lambda_subnet_ids" {
  value = module.vpc.private_test_lambda_subnet_ids
}
