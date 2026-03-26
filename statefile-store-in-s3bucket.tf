provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "s3" {
    region = "ap-south-1"
    bucket = "mahi-tf-statefile-bucket"
    key    = "s3statefile.tfstate"
    use_lock= true
  }
}
resource "aws_instance" "stores3" {
  instance_type = "t3.micro"
  ami           = "ami-0f559c3642608c138"
  tags = {
    Name = "storage2"
  }
}
