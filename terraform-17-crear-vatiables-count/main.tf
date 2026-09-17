provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc_aula" {
  cidr_block = "10.80.0.0/16"
}

resource "aws_subnet" "subnets" {
  count = 4

  vpc_id     = aws_vpc.vpc_aula.id
  cidr_block = cidrsubnet(aws_vpc.vpc_aula.cidr_block, 8, count.index + 1)

  tags = {
    Name = "subnet-${count.index + 1}"
  }
}