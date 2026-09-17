.provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc_aula" {
  cidr_block = "10.90.0.0/16"
}

locals {
  subnets = {
    publica = "10.90.1.0/24"
    privada = "10.90.2.0/24"
    administracion = "10.90.3.0/24"
  }
}

resource "aws_subnet" "subnets" {
  for_each = local.subnets

  vpc_id     = aws_vpc.vpc_aula.id
  cidr_block = each.value

  tags = {
    Name = each.key
  }
}