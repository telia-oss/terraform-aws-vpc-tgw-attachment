output "tgw_attachment_id" {
  value = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment.id
}

output "tgw_attachment_subnet_ids" {
  value = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment.subnet_ids
}

output "tgw_attachment_vpc_id" {
  value = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment.vpc_id
}

output "tgw_attachment_tgw_id" {
  value = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment.transit_gateway_id
}
