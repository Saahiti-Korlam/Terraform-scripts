provider "aws" {
  region = var.region
}
resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type[1]
  tags = {
    Name = "MyInstance"
  }
}
