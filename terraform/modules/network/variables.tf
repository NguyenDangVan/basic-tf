variable "vpc" {
  type = object({
    cidr_block = string
    name = string
  })
}

variable "public_subnets" {
  type = object({
    cidr = list(string)
    names = list(string)
    azs = list(string)
  })
}

variable "private_subnets" {
  type = object({
    cidr = list(string)
    names = list(string)
    azs = list(string)
  })
}
