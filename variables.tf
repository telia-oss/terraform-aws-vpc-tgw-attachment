
variable "vpc_id" {
  description = "vpc id"
  type        = string
}

variable "tgw_subnets" {
  description = "subnets where TGW shoud be attached"
  type        = list(string)
  default     = []
}

variable "tgw_subnets_route_tables" {
  description = "The route tables of the tgw_subnets"
  type        = list(string)
  default     = []
}