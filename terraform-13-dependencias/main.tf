provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "vpc_aula" {
  cidr_block = "10.40.0.0/16"
}
resource "aws_subnet" "subnet_a" {
  vpc_id     = aws_vpc.vpc_aula.id
  cidr_block = "10.40.1.0/24"
}