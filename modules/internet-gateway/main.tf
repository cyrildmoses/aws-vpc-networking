terraform {
  required_version = ">= 1.8.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

#Internet gateway
resource "aws_internet_gateway" "ig" {
  vpc_id = var.vpc_id
  tags = {
    "Name" = "${var.stage}-igw"
  }
}
