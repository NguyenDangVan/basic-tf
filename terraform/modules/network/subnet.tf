resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnets.cidr)

  vpc_id = aws_vpc.base_tf_vpc.id
  cidr_block = element(var.public_subnets.cidr, count.index)
  availability_zone = element(var.public_subnets.azs, count.index)

  tags = {
    Name = element(var.public_subnets.names, count.index)
  }
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnets.cidr)

  vpc_id = aws_vpc.base_tf_vpc.id
  cidr_block = element(var.private_subnets.cidr, count.index)
  availability_zone = element(var.public_subnets.azs, count.index)

  tags = {
    Name = element(var.private_subnets.names, count.index)
  }
}
