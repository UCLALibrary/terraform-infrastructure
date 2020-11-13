##########
# Tags
##########
variable "global_tag" {
  description = "Prefix tag to apply to all resources created"
  type = string
  default = ""
}

##########
# VPC
##########
variable "vpc_tag" {
  description = "Prefix tag to apply to all VPC related content"
  type = string
  default = ""
}

variable "vpc_cidr" {
  description = "VPC CIDR block to create"
  type = string
  default = "172.32.0.0/16"
}

variable "enable_create_vpc" {
  description = "Controls of VPC should be created"
  type = bool
  default = true
}

##########
# Subnets
##########
variable "public_subnets" {
  description = "A list of string CIDR blocks for general public subnets"
  type = list(string)
  default = []
}

variable "private_subnets" {
  description = "A list of string CIDR blocks for general private subnets"
  type = list(string)
  default = []
}

variable "prod_lambda_subnets" {
  description = "A list of string CIDR blocks for Lambda private subnets"
  type = list(string)
  default = []
}

variable "test_lambda_subnets" {
  description = "A list of string CIDR blocks for Lambda private subnets"
  type = list(string)
  default = []
}

variable "eks_control_subnets" {
  description = "A list of string CIDR blocks for EKS control plane subnets"
  type = list(string)
  default = []
}

variable "eks_rancher_subnets" {
  description = "A list of string CIDR blocks for Rancher EKS"
  type = list(string)
  default = []
}

variable "eks_nodegroup_subnets" {
  description = "A list of string CIDR blocks for EKS nodegroup subnets"
  type = list(string)
  default = []
}

variable "azs" {
  description = "A list of availability zones for subnet deployment"
  type = list(string)
  default = []
}

##########
# NAT
##########
variable "enable_nat" {
  description = "Controls if NAT gateway should be created"
  type = bool
  default = false
}

variable "nat_dest" {
  description = "A list of IP strings to match to use NAT gateway for egress traffic"
  type = list(string)
  default = []
}
