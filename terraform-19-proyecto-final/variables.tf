variable "region" {
  type        = string
  description = "Región de AWS donde se desplegarán los recursos"
}

variable "vpc_cidr" {
  type        = string
  description = "Bloque CIDR principal para la VPC"
}

variable "subnet_publica_cidr" {
  type        = string
  description = "Bloque CIDR para la subred pública"
}

variable "subnet_privada_cidr" {
  type        = string
  description = "Bloque CIDR para la subred privada"
}

variable "nombre_proyecto" {
  type        = string
  description = "Nombre identificador del proyecto para las etiquetas"
}
