provider "aws" {
  region = "ap-south-1"

}
resource "aws_instance" "example-depends" {
  ami           = "ami-0f559c3642608c138"
  instance_type = "t3.micro"
  tags = {
    Name = "web-server"
  }
}
resource "aws_s3_bucket" "my-bucket" {
  bucket     = "johar-bucket"
  depends_on = [aws_instance.example-depends]
}

