// public subnet #1, #2
resource "aws_subnet" "public_subnet1" {
  vpc_id = "${aws_vpc.three_tier_vpc.id}"
  cidr_block = "30.0.1.0/24"
  availability_zone = "ap-northeast-2a"
  //map_public_ip_on_launch = true      // 서브넷에 생성된 인스턴스에 Public ip 주소 할당, default : false
  tags = {
    "Name" = "public_subnet1"
  }
}



resource "aws_subnet" "public_subnet2" {
  vpc_id = "${aws_vpc.three_tier_vpc.id}"
  cidr_block = "30.0.2.0/24"
  availability_zone = "ap-northeast-2c"
  //map_public_ip_on_launch = true      // 서브넷에 생성된 인스턴스에 Public ip 주소 할당, default : false
  tags = {
    "Name" = "public_subnet2"
  }
}

// private subnet #1, #2, #3, #4
resource "aws_subnet" "private_subnet1" {
  vpc_id = "${aws_vpc.three_tier_vpc.id}"
  cidr_block = "30.0.3.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "private_subnet1"
  }
}


resource "aws_subnet" "private_subnet2" {
  vpc_id = "${aws_vpc.three_tier_vpc.id}"
  cidr_block = "30.0.4.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "private_subnet2"
  }
}


resource "aws_subnet" "private_subnet3" {
  vpc_id = "${aws_vpc.three_tier_vpc.id}"
  cidr_block = "30.0.5.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "private_subnet3"
  }
}

resource "aws_subnet" "private_subnet4" {
  vpc_id = "${aws_vpc.three_tier_vpc.id}"
  cidr_block = "30.0.6.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "private_subnet4"
  }
}