region         = "ap-south-1"
instance_type  = ["t3.micro", "t3.small"]
ami_id         = "ami-0f559c3642608c138"
instance_count = 1
instance_tags = {
  Name        = "Web-server"
  Project     = "Terraform-EC2-demo"
  Environment = "web-environment"
}
