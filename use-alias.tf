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
provider "aws" {
  region = "us-east-2"
  alias  = "ohio"
}
resource "aws_instance" "web2" {
  ami           = "ami-0b0b78dcacbab728f"
  instance_type = "t3.micro"
  provider      = "aws.ohio"
  tags = {
    Name = "webserver-ohio"
  }
}
