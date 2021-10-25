module "aws_vpc" {
  source = "../"

  region  = var.region
  aws_vpc = var.aws_vpc
}
