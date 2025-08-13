###########################################################################
# Global
###########################################################################

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "eu-central-1"
}

variable "project" {
  description = "The name of the project"
  type        = string
}

variable "domain_name" {
  description = "The domain name of the project"
  type        = string
}

###########################################################################
# AWS VPC
###########################################################################

variable "azs" {
  description = "The availability zones to use"
  type        = list(string)
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "The public subnets to use"
  type        = list(string)
}

variable "private_subnets" {
  description = "The private subnets to use"
  type        = list(string)
}
