provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc_importada" {
  cidr_block = "10.70.0.0/16"
}