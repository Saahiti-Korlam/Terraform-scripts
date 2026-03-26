variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "size" {
  type    = number
  default = 2
}
variable "instance_type" {
  type    = list(string)
  default = ["t3.micro", "t3.small"]
}
variable "ami-id" {
  type    = string
  default = "ami-0f559c3642608c138"
}
variable "tags" {
  type = map(string)
  default = {
    Project     = "Terraform-EC2-demo"
    Environment = "Prod"
  }
}
