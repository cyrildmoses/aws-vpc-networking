variable "stage" {
  description = "Application Stage enviroment name"
  type        = string
}

variable "subnet_id" {
  description = "NAT gateway will attach to this public subnet id"
  type        = string
}
