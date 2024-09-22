#terraform configs
aws_region           = "us-west-1"
stage                = "network-dev"
vpc_cidr             = "172.16.0.0/16"
public_subnets_cidr  = ["172.16.0.0/18", "172.16.64.0/18"]
private_subnets_cidr = ["172.16.128.0/18", "172.16.192.0/18"]