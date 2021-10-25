/* Using lookup function so it can dynamically change values if required. */
resource "aws_vpc" "default" {
  for_each                         = var.aws_vpc
  cidr_block                       = var.cidr_block
  instance_tenancy                 = lookup(each.value.instance_tenancy, "instance_tenacy", "default")
  enable_dns_support               = lookup(each.value.dns_support, "dns_support", true)
  enable_dns_hostnames             = lookup(each.value.dns_hostname, "dns_hostname", false)
  enable_classiclink               = lookup(each.value.classiclink, "classiclink", false) # Only enabled in regions with EC2 classic Support
  assign_generated_ipv6_cidr_block = lookup(each.value.assign_generated_ipv6_cidr_block, "assign_generated_ipv6_cidr_block", null)

  # Tags will show CHANGEME in plan if you have not replaced values.
  tags = merge(var.tags, { vpc_name = "Default VPC" })
}

resource "aws_default_security_group" "default" {
  # Use count with the variable so it only creates a single instance if variable value is true.
  count = var.default_sg ? 1 : 0
  # Uses the first vpc instaces ID 
  ingress = []
  egress  = []
  vpc_id  = aws_vpc.default[0].id

  # Default tags are CHANGEME other than Owner being "Cyber-duck". replace each valur within the merge like shown.
  tags = merge(var.tags, { Name = "Default Security Group" })
}

resource "aws_internet_gateway" "default" {
  count = var.internet_gateway_enabled ? 1 : 0
  # Uses the first vpc instaces ID 
  vpc_id = aws_vpc.default[0].id
  tags   = merge(var.tags, { Name = "Default IGW" })
}
