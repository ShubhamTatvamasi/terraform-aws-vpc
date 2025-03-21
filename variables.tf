variable "environment" {
  description = "Environment identifier (dev, uat, prod)"
  default     = "ca"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to resources."
  default = {
    Environment = "ca"
    Terraform   = "true"
  }
  type = map(string)
}
