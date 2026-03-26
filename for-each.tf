provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "test1" {
  for_each      = toset(["one", "two", "three"])
  ami           = "ami-0f559c3642608c138"
  instance_type = "t3.micro"
  tags = {
  Name = each.key }
}
