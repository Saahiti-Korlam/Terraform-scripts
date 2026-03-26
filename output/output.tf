output "instance_id" {
  value       = aws_instance.my_instance.id
  description = "This is the ID for my instance"
}
output "public-ip" {
  value       = aws_instance.my_instance.public_ip
  description = "This is the public IP address for my instance"
}
output "private-ip" {
  value       = aws_instance.my_instance.private_ip
  description = "This is the private IP address for my instance"
}
