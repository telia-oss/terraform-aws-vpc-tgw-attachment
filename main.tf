
locals {

 asn  = "${data.aws_region.current.id == "eu-north-1" ? "64517" : (data.aws_region.current.id == "eu-west-1" ? "64513" : false)}"
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_attachment" { #how to choose between ireland and stockholm
  subnet_ids         = var.tgw_subnets
  transit_gateway_id = data.aws_ec2_transit_gateway.tgw_id.id
  vpc_id             = var.vpc_id
}

/*
resource "aws_route" "tgw" {
  count                     = length(var.tgw_subnets_route_tables)
  route_table_id            = var.tgw_subnets_route_tables[count.index]
  destination_cidr_block    = "0.0.0.0/0"
  transit_gateway_id        = data.aws_ec2_transit_gateway.tgw_id.id
}*/


