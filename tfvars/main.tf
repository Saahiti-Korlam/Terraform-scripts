provider "aws" {
  region = var.region
}
resource "aws_instance" "tfvar-demo" {
  ami           = var.ami_id
  instance_type = var.instance_type[0]
  count         = var.instance_count
  tags          = var.instance_tags
}
