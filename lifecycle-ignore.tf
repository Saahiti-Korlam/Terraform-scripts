provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web1" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "t3.small"
  tags = {
    Name = "Ubuntu-1"
  }
  lifecycle {
    ignore_changes = [instance_type]
  }
}
