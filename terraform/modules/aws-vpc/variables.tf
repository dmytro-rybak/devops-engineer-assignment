###########################################################################
# Global
###########################################################################

variable "project" {
  description = "The name of the project"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

###########################################################################
# AWS VPC
###########################################################################

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "The availability zones for the VPC"
  type        = list(string)
}

variable "private_subnets" {
  description = "The private subnets for the VPC"
  type        = list(string)
}

variable "public_subnets" {
  description = "The public subnets for the VPC"
  type        = list(string)
}

variable "enable_dns_hostnames" {
  description = "Whether to enable DNS hostnames for the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Whether to enable DNS support for the VPC"
  type        = bool
  default     = true
}

variable "enable_nat_gateway" {
  description = "Whether to enable NAT gateway for private subnets"
  type        = bool
  default     = false
}

variable "single_nat_gateway" {
  description = "Whether to enable a single NAT gateway for all private subnets"
  type        = bool
  default     = true
}

variable "enable_vpn_gateway" {
  description = "Whether to enable VPN gateway for the VPC"
  type        = bool
  default     = false
}
