variable "stage" {
  description = "Application Stage enviroment name"
  type        = string
}

variable "vpc_id" {
  description = "Application Stage enviroment name"
  type        = string
}

variable "public_subnets" {
  description = "list of public subnet ids"
  type        = list(string)
}

variable "private_subnets" {
  description = "list of private subnet ids"
  type        = list(string)
}

variable "igw_id" {
  description = "internet gateway id"
  type        = string
}

variable "nat_gateway_id" {
  description = "nat gateway id"
  type        = string
}

