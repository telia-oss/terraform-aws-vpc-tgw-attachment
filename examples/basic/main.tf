terraform {
  required_version = ">= 0.14"
}

provider "aws" {
  region = var.region
}


module "vpc" {
  source  = "telia-oss/vpc/aws"
  version = "5.0.1"

  name_prefix          = "my-vpc"
  cidr_block           = "10.0.0.0/16"
  public_subnet_cidrs  = []
  private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  create_nat_gateways  = false
  enable_dns_hostnames = true
  enable_vpc_endpoints = false
  tags = {
    Environment = "dev"
    Project     = "my-project"
  }
}


module "vpc_tgw_attachment" {
  source                   = "../.."
  vpc_id                   = module.vpc.vpc_id
  tgw_subnets              = module.vpc.private_subnet_ids
  tgw_subnets_route_tables = module.vpc.private_subnets_route_table_ids
}

resource "aws_route" "tgw" {
  count                  = length(module.vpc.private_subnets_route_table_ids)
  route_table_id         = module.vpc.private_subnets_route_table_ids[count.index]
  destination_cidr_block = "0.0.0.0/0"
  transit_gateway_id     = module.vpc_tgw_attachment.transit_gateway_id
}
