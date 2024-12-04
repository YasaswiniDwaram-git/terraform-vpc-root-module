output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet_IDs" {
    value = aws_subnet.public[*].id
}

output "private_subnet_IDs" {
    value = aws_subnet.private[*].id
}

output "database_subnet_IDs" {
    value = aws_subnet.public[*].id
}
# output "az_info" {
#     value = data.aws_availability_zones.available
# }

# output "default_vpc_info" {
#     value = data.aws_vpc.default
# }

# output "default_route_table_info" {
#     value = data.aws_route_table.default
# }