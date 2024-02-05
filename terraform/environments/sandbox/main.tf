locals {
  env = "sandbox"
}

module "network" {
  source = "../../modules/network"

  vpc = {
    name = "vpc-sandbox"
    cidr_block = "10.10.0.0/16"
  }

  public_subnets = {
    cidr = ["10.10.1.0/24", "10.10.2.0/24"]
    azs = ["ap-northeast-1a", "ap-northeast-1c"]
    names = [format("%s-public-a", local.env), format("%s-public-c", local.env)]
  }

  private_subnets = {
    cidr = ["10.10.3.0/24", "10.10.4.0/24"]
    azs = ["ap-northeast-1a", "ap-northeast-1c"]
    names = [format("%s-private-a", local.env), format("%s-private-c", local.env)]
  }
}
