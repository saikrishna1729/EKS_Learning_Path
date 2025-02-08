output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "public_subnets_az" {
  value = { for subnet in aws_subnet.public : subnet.id => subnet.availability_zone }
}

output "private_subnets_az" {
  value = { for subnet in aws_subnet.private : subnet.id => subnet.availability_zone }
}
