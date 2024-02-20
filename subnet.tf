#define subnet (pls check existing subnet cidr block to overlap exising subnet) (aws ec2 describe-subnets --filters "Name=vpc-id,Values=vpc-id")
resource "aws_subnet" "public" {
  vpc_id            = var.existing_vpc_id
  cidr_block        = "172.31.96.0/20"
  availability_zone = var.region
}