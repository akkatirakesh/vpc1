module "vpc-us-east-2" {
  source = "../"
  vpcCIDRBlock = "10.0.0.0/16"
  instanceTenancy = "default"
  vpc_name = "rakesh-us-east-2"
}

output "vpc-us-east-2" {
  value = module.vpc-us-east-2.vpc-id
}


provider "aws" {
  access_key="provide access key"
  secret_key="provide secret key"
  region = "us-east-2"
}

