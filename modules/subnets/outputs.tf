output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public_subnet[*].id # This will return a list of subnet IDs
}

output "private_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.private_subnet[*].id # This will return a list of subnet IDs
}
