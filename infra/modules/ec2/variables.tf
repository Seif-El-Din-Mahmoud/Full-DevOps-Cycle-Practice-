variable "name" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  description = "Name of the AWS key pair to attach"
  type        = string
}

variable "allowed_cidr" {
  description = "Your IP in CIDR form, e.g. 1.2.3.4/32"
  type        = string
}

variable "app_port" {
  type    = number
  default = 5000
}
