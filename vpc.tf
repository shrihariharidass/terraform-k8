resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

# If desired_vpc_id is not empty, use it, otherwise use default_vpc_id
#