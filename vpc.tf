module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"

  name = "${var.environment}-vpc"
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  default_security_group_ingress = [
    {
      cidr_blocks = var.vpc_cidr
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Allow all traffic within VPC"
    }
  ]

  default_security_group_egress = [
    {
      cidr_blocks = "0.0.0.0/0"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Allow all outbound traffic"
    }
  ]

  enable_nat_gateway     = var.vpc_enable_nat_gateway
  single_nat_gateway     = false
  one_nat_gateway_per_az = true
  enable_dns_hostnames   = true
  enable_dns_support     = true

  tags = var.tags
}
