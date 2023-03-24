terraform {
  required_version = ">= 0.14"
}

provider "aws" {
  region = var.region
}

module "vpc_tgw_attachment" {

  source                   = "github.com/telia-oss/terraform-aws-vpc-tgw-attachment"
  vpc_id                   = module.vpc.vpc
  tgw_subnets              = module.vpc.private_subnets
  tgw_subnets_route_tables = module.vpc.private_subnets_rtb
}

