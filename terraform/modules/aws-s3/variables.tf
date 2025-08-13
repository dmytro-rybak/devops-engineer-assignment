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
