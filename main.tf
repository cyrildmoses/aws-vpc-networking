
module "vpc" {
  source   = "./modules/vpc"
  stage    = var.stage
  vpc_cidr = var.vpc_cidr
}

module "subnets" {
  source               = "./modules/subnets"
  aws_region           = var.aws_region
  stage                = var.stage
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  vpc_id               = module.vpc.vpc_id
}

module "internet-gateway" {
  source = "./modules/internet-gateway"
  stage  = var.stage
  vpc_id = module.vpc.vpc_id
}

module "nat-gw" {
  source    = "./modules/nat-gateway"
  stage     = var.stage
  subnet_id = element(module.subnets.public_subnet_ids, 0)
}

module "routes" {
  source          = "./modules/routes"
  stage           = var.stage
  vpc_id          = module.vpc.vpc_id
  public_subnets  = module.subnets.public_subnet_ids
  private_subnets = module.subnets.private_subnet_ids
  nat_gateway_id  = module.nat-gw.nat_gw_id
  igw_id          = module.internet-gateway.igw_id

}
