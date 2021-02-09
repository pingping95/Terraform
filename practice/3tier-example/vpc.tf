resource "aws_vpc" "three_tier_vpc" {
	cidr_block = "30.0.0.0/20"
	instance_tenancy = "default"
	tags = {
		Name = "three_tier_vpc"
	}
}