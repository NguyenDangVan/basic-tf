resource "aws_vpc" "base_tf_vpc" {
  cidr_block = var.vpc.cidr_block

  enable_dns_hostnames = true

  tags = {
    Name = var.vpc.name
  }
}
