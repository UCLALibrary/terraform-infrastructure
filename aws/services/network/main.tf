module "vpc" {
  #source = "git::https://github.com/UCLALibrary/terraform-aws-vpc.git?ref=revamp"
  source = "/external/avuong/github/terraform-aws-vpc"

  ### Tags
  name = var.global_tag

  ### VPC
  create_vpc = true
  vpc_cidr = var.vpc_cidr

  ### Global subnet settings
  azs = var.azs

  ### Public Subnets
  public_subnets = var.public_subnets

  ### Public subnets that route through NAT when traversing to NAT destination
  private_subnets = concat(var.eks_subnets, var.lambda_subnets)
  single_nat_gateway = var.enable_nat

  ##############################################################################
  # WARNING: Any IPs matching the CIDR notation will NOT be able to establish
  #          a connection with services attached to the subnets with
  #          the associated route table. Subnets should only associate
  #          this route if it's purely used for egress.
  #          This will break the TCP handshake.
  ##############################################################################
  nat_destinations = concat(var.nat_dest)
}
