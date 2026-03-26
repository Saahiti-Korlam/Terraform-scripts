provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "userD" {
  ami                    = "ami-0f559c3642608c138"
  instance_type          = "t3.micro"
  key_name               = "sahi-ec2"
  vpc_security_group_ids = ["sg-0d3f1b14b2a27f021"]
  user_data              = file("D:/aws-tests/terraform-wk/userdata.txt")

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("D:/aws-tests/key-pairs/sahi-ec2.pem")
    host        = self.public_ip
  }
  tags = {
    Name = "userdata1-instance"
  }
} 
