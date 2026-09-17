provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc_aula" {
  cidr_block = var.vpc_cidr
  tags = {
    Name    = var.nombre_vpc
    Entorno = var.entorno
  }
}