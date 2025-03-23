variable "vpc_azs" {
  description = "Availability zones for VPC"
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
  type        = list(string)
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.3.0.0/16"
  type        = string
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  default     = ["10.3.1.0/24", "10.3.2.0/24", "10.3.3.0/24"]
  type        = list(string)
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  default     = ["10.3.101.0/24", "10.3.102.0/24", "10.3.103.0/24"]
  type        = list(string)
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  default     = true
  type        = bool
}
