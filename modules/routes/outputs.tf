# newly created private route table id
output "private_route_table_id" {
  value = aws_route_table.private.id
}

# newly created public route table id
output "public_route_table_id" {
  value = aws_route_table.public.id
}
