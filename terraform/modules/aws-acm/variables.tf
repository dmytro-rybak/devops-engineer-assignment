variable "domain_name" {
  type        = string
  description = "Domain name for the certificate"
}

variable "zone_id" {
  type        = string
  description = "Route 53 zone ID"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources"
  default     = {}
}
