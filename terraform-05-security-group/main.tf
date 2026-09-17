provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc_aula" {
  cidr_block = "10.10.0.0/16"
}

resource "aws_subnet" "subnet_a" {
  vpc_id     = aws_vpc.vpc_aula.id
  cidr_block = "10.10.1.0/24"
}

resource "aws_security_group" "web_sg" {
  name   = "terraform-web-sg"
  vpc_id = aws_vpc.vpc_aula.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["203.0.113.10/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}