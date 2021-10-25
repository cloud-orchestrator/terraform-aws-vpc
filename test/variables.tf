variable "aws_vpc" {
  type        = map(any)
  description = "vpc config 1"
  default = {
    cidr_block = "10.0.0.0/16"
  }
}

variable "region" {
  default = "eu-west-2"
}
