output "tgw_attachment_id" {
  value       = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment.id
  description = "The ID of the transit gateway attachment."
}
output "tgw_attachment_subnet_ids" {
  value       = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment.subnet_ids
  description = "The IDs of the subnets used for the transit gateway attachment."
}
output "tgw_attachment_vpc_id" {
  value       = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment.vpc_id
  description = "The ID of the VPC that is attached to the transit gateway."
}
output "tgw_attachment_tgw_id" {
  value       = aws_ec2_transit_gateway_vpc_attachment.tgw_attachment.transit_gateway_id
  description = "The ID of the transit gateway attachment."
}

output "transit_gateway_id" {
  value       = data.aws_ec2_transit_gateway.tgw_id.id
  description = "The ID of the transit gateway."
}
