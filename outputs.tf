/* 
	Series of outputs you can use from this module to reference to other modules and resources. 
*/
#### VPC
output "vpc_id" {
  value = aws_vpc.default[0].id
}

output "vpc_name" {
  value = aws_vpc.default[0].arn
}

output "igw_id" {
  value = aws_internet_gateway.default[0].id
}

output "route_table_id" {
  value = aws_vpc.default[0].main_route_table_id
}

output "default_route_table_id" {
  value = aws_vpc.default[0].default_route_table_id
}
output "default_network_acl_id" {
  value = aws_vpc.default[0].default_network_acl_id
}

output "default_security_group_id" {
  value = aws_vpc.default[0].default_security_group_id
}

output "owner_id" {
  value = aws_vpc.default[0].owner_id
}

### Security Group

output "sg_arn" {
  value = aws_default_security_group.default[0].arn
}
output "sg_description" {
  value = aws_default_security_group.default[0].description
}
output "sg_id" {
  value = aws_default_security_group.default[0].id
}
output "sg_name" {
  value = aws_default_security_group.default[0].name
}
output "sg_owner_id" {
  value = aws_default_security_group.default[0].owner_id
}

### NGW

output "nat_owner_id" {
  value = aws_internet_gateway.default[0].id
}

output "nat_arn" {
  value = aws_internet_gateway.default[0].arn
}
output "nat_name" {
  value = aws_internet_gateway.default[0].owner_id
}
