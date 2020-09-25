#########
# Tags
#########
global_tag = "avuong-test-terraform"

#########
# VPC
#########
vpc_cidr = "172.20.0.0/16"

#########
# General subnet variables
#########
azs = [
	"us-west-2a",
	"us-west-2b",
	"us-west-2c"
]

#########
# Public subnets
#########
public_subnets = [
	"172.20.10.0/24",
	"172.20.11.0/24",
	"172.20.12.0/24"
]

#########
# Public subnets using NAT for specified NAT destinations
#########
enable_nat = true

nat_dest = [
  "52.24.198.56/32",
  "52.25.18.100/32",
  "164.67.40.107/32",
  "164.67.40.111/32"
]

eks_subnets = [
	"172.20.100.0/24",
	"172.20.101.0/24",
	"172.20.102.0/24"
]

lambda_subnets = [
	"172.20.200.0/24",
	"172.20.201.0/24",
	"172.20.202.0/24"
]
