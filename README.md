# terraform-aws-vpc
VPC module for AWS.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_security_group.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_security_group) | resource |
| [aws_internet_gateway.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_vpc | n/a | `map(any)` | ```{ "assign_generated_ipv6_cidr_block": false, "enable_classiclink": false, "enable_dns_hostnames": false, "enable_dns_support": true, "instance_tenancy": "default" }``` | no |
| cidr\_block | n/a | `string` | `"172.31.0.0/16"` | no |
| default\_security\_group\_deny\_all | n/a | `bool` | `true` | no |
| default\_sg | n/a | `bool` | `true` | no |
| internet\_gateway\_enabled | n/a | `bool` | `true` | no |
| region | AWS Region | `string` | `""` | no |
| tags | n/a | `map(any)` | ```{ "Customer": "CHANGEME", "Environment": "CHANGEME", "Name": "Default", "Owner": "Cyber-Duck", "Project": "CHANGEME" }``` | no |

## Outputs

| Name | Description |
|------|-------------|
| default\_network\_acl\_id | n/a |
| default\_route\_table\_id | n/a |
| default\_security\_group\_id | n/a |
| igw\_id | n/a |
| nat\_arn | n/a |
| nat\_name | n/a |
| nat\_owner\_id | n/a |
| owner\_id | n/a |
| route\_table\_id | n/a |
| sg\_arn | n/a |
| sg\_description | n/a |
| sg\_id | n/a |
| sg\_name | n/a |
| sg\_owner\_id | n/a |
| vpc\_id | ### VPC |
| vpc\_name | n/a |
<!-- END_TF_DOCS -->