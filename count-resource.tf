provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "Web" {
  ami           = "ami-0f559c3642608c138"
  count        = 3
  instance_type = "t3.micro"
  tags = {
    Name = "Web-Instance-${count.index + 1}"
  }
}
