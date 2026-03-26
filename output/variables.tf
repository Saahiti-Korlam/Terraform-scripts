variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "ami_id" {
  type    = string
  default = "ami-0f559c3642608c138"
}
variable "instance_type" {
  type    = list(string)
  default = ["t2.micro", "t3.micro", "t3.small"]
}
