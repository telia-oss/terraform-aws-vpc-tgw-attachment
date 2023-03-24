# terraform-aws-vpc-tgw-attachment

[![latest release](https://img.shields.io/github/v/release/telia-oss/terraform-aws-vpc-tgw-attachment?style=flat-square)](https://github.com/telia-oss/terraform-aws-vpc-tgw-attachment/releases/latest)
[![build status](https://img.shields.io/github/workflow/status/telia-oss/terraform-aws-vpc-tgw-attachment/workflow?label=build&logo=github&style=flat-square)](https://github.com/telia-oss/terraform-aws-vpc-tgw-attachment/actions?query=workflow%3Atest)

This Terraform module creates an AWS Transit Gateway VPC attachment between a VPC and a Transit Gateway. The Transit Gateway VPC attachment allows you to connect your VPC to a Transit Gateway, which enables you to route traffic between your VPC and other networks, such as on-premises networks or other VPCs.

To create a Transit Gateway VPC attachment, you need to specify the subnets to use for the attachment, as well as the Transit Gateway and VPC IDs. This module simplifies the process of creating a Transit Gateway VPC attachment by providing a reusable, configurable Terraform module.

The module supports the following features:

- Customizable subnets for the attachment
- Customizable Transit Gateway and VPC IDs
- Automatic determination of the ASN based on the current region

Use this module if you need to connect your VPC to a Transit Gateway and want to avoid the manual configuration and potential errors that can arise from it.

## Usage

```hcl
module "tgw_attachment" {
  source = "telia-oss/terraform-aws-vpc-tgw-attachment"

  vpc_id = "vpc-0123456789abcdef0"

  tgw_subnets = [
    "subnet-0123456789abcdef0",
    "subnet-0123456789abcdef1"
  ]

  tgw_subnets_route_tables = [
    "rtb-0123456789abcdef0",
    "rtb-0123456789abcdef1"
  ]
}

```

## Authors

Currently maintained by [these contributors](../../graphs/contributors).

## License

MIT License. See [LICENSE](LICENSE) for full details.
