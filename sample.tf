provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "my_instance" {
  ami           = "ami-0f559c3642608c138"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-instance"
  }
  lifecycle {
    prevent_destroy = true
  }
}
resource "aws_instance" "my_instance-two" {
  ami           = "ami-0f559c3642608c138"
  instance_type = "t3.micro"
  tags = {
    Name = "my-instance-second"
  }
}
