provider "aws" {
  region = var.region
}

# Registers your local public key with AWS
resource "aws_key_pair" "dev" {
  key_name   = "dev-key"
  public_key = file(var.public_key_path)
}

module "ec2" {
  source = "../../modules/ec2"

  name          = "dev-app"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.dev.key_name
  allowed_cidr  = var.my_ip
  app_port      = 5000
}
