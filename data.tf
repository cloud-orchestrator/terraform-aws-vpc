data "aws_vpc" "main" {
  id = aws_vpc.default[0].id
}
