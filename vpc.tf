resource "aws_vpc" "my_vpc" {
  cidr_block           = var.vpcCIDRBlock
  instance_tenancy     = var.instanceTenancy
  tags = {
    Name = var.vpc_name
  }
}

output "vpc-id" {
  description = "vpc id"
  value = aws_vpc.my_vpc.id
}