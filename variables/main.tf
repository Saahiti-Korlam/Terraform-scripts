provider "aws" {
  region = var.region
}
resource "aws_instance" "variables-demo" {
  ami           = var.ami-id
  instance_type = var.instance_type[0]
  count         = var.size
  tags = merge(
    var.tags,
    {
      Name = "Server-${count.index + 1}"
    }
  )

}
