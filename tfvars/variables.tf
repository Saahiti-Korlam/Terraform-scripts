variable "region" {
  type = string
}
variable "instance_count" {
  type = number
}
variable "instance_type" {
  type = list(string)
}
variable "ami_id" {
  type = string
}
variable "instance_tags" {
  type = map(string)
}
