variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "my_ip" {
  description = "Your public IP in CIDR form, e.g. 1.2.3.4/32"
  type        = string
}

variable "public_key_path" {
  type = string
}
