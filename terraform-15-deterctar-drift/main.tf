provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "vpc_aula" {
  cidr_block = "10.60.0.0/16"
  tags = { Name = "vpc-terraform" }
}