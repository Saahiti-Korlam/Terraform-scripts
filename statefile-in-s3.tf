provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "local" {
    path = "D:/aws-tests/store-statefile/localstore.tfstate"
  }
}
resource "aws_instance" "store" {
  instance_type = "t3.micro"
  ami           = "ami-0f559c3642608c138"
  tags = {
    Name = "storage1"
  }
}
