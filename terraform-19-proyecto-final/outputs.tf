output "vpc_id" {
  value       = aws_vpc.vpc_proyecto.id
  description = "El ID de la VPC creada"
}

output "ec2_id" {
  value       = aws_instance.servidor_web.id
  description = "El ID de la instancia EC2"
}

output "ec2_public_ip" {
  value       = aws_instance.servidor_web.public_ip
  description = "La direccion IP publica de la instancia EC2"
}

