provider "aws" {
  region = "ap-south-1"
}
locals {
  ingress-rules = [
    { port = 80 },
    { port = 443 },
    { port = 22 },
    { port = 8080 },
    { port = 3306 }
  ]
}

resource "aws_security_group" "dynamic-sg" {
  name   = "dynamic-security-group"
  vpc_id = "vpc-01b7d34226b9a8be8"
  dynamic "ingress" {
    for_each = local.ingress-rules
    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
