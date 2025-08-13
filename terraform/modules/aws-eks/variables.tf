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
# AWS EKS
###########################################################################

variable "kubernetes_version" {
  description = "The Kubernetes version to use"
  type        = string
  default     = "1.33"
}

variable "vpc_id" {
  description = "The ID of the VPC to use"
  type        = string
}

variable "subnet_ids" {
  description = "The IDs of the subnets to use"
  type        = list(string)
}

variable "cloudwatch_log_group_retention_in_days" {
  description = "The retention period for CloudWatch log groups"
  type        = number
  default     = 3
}
