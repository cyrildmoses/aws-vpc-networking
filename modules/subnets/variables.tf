
variable "aws_region" {
  description = "AWS Region Name"
  type        = string
}

variable "stage" {
  description = "Application Stage enviroment name"
  type        = string
}

variable "vpc_id" {
  description = "Application Stage enviroment name"
  type        = string
}

variable "public_subnets_cidr" {
  description = "CIDR block for Public Subnet"
  type        = list(any)
}

variable "private_subnets_cidr" {
  description = "CIDR block for Private Subnet"
  type        = list(any)
}
