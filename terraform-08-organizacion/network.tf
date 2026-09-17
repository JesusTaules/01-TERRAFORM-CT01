resource "aws_vpc" "vpc_aula" {
  cidr_block = "10.10.0.0/16"
}
resource "aws_subnet" "subnet_a" {
  vpc_id     = aws_vpc.vpc_aula.id
  cidr_block = "10.10.1.0/24"
}
resource "aws_security_group" "web" {
  name   = "terraform-web"
  vpc_id = aws_vpc.vpc_aula.id
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}