provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web1" {
  ami           = "ami-0f559c3642608c138"
  instance_type = "t3.micro"
  tags = {
    Name = "webserver-mumbai"
  }
}
--> creates Linux server
--> changed to ubuntu server (change ami id to ubuntu's ami id )
provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web1" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "t3.micro"
  tags = {
    Name = "Ubuntu-1"
  }
  lifecycle {
    create_before_destroy = true
  }
}
