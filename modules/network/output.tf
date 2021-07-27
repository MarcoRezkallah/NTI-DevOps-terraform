output "public-route-table-id" {
  value = aws_route_table.public.id
}

output "vpc-id" {
  value = aws_vpc.main.id
}
