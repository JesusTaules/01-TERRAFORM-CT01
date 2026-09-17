provider "aws" {
  region = "us-east-1"
}
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}
output "ami_id" {
  value = data.aws_ami.amazon_linux.id
  output "ami_jesus" { value = data.aws_ami.amazon_linux.jesus }
}