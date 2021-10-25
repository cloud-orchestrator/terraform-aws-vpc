variable "region" {
  type        = string
  description = "AWS Region"
  default     = ""
}

variable "cidr_block" {
  default = "172.31.0.0/16"
}
variable "aws_vpc" {
  type = map(any)
  default = {
    "instance_tenancy"                 = "default"
    "enable_dns_support"               = true
    "enable_dns_hostnames"             = false
    "enable_classiclink"               = false
    "assign_generated_ipv6_cidr_block" = false
  }
}


variable "default_security_group_deny_all" {
  type    = bool
  default = true
}
variable "internet_gateway_enabled" {
  type    = bool
  default = true
}

variable "default_sg" {
  type    = bool
  default = true
}

########
# TAGS #
########

variable "tags" {
  type = map(any)
  default = {
    Name    = "Default"
    Project     = "CHANGEME"
    Environment = "CHANGEME"
    Owner       = "Cyber-Duck"
    Customer    = "CHANGEME"
  }
}
