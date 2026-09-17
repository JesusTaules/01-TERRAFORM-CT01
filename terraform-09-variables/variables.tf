variable "vpc_cidr" {
  type    = string
  default = "10.10.0.0/16"
}

variable "nombre_vpc" {
  type    = string
  default = "vpc-aula"
}

variable "entorno" {
  type    = string
  default = "TEST"
}