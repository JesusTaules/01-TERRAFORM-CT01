output "vpc_id" {
  value = aws_vpc.vpc_aula.id
}
output "vpc_cidr" {
  value = aws_vpc.vpc_aula.cidr_block
}