module "vpc" {
  source = "git::https://github.com/DShankarGoud/tf-module-vpc.git"
  VPC_CIDR_BLOCK = var.VPC_CIDR_BLOCK
  COMPONENT = var.COMPONENT
  ENV = var.ENV
}

