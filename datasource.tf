data "aws_ec2_transit_gateway" "tgw_id" {


  filter {
    name   = "options.amazon-side-asn"
    values = [local.asn]
  }
}

data "aws_region" "current" {}