resource "aws_route_table" "table" {
  vpc_id =  "vpc-0c24b610bb437390e"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-090787a59bdae6caa"
  }

tags = {
    Name = "terra-table"
  }
}

resource "aws_route_table_association" "terra-subnet" {
  subnet_id = "subnet-00ad35d7db8733f38"
  route_table_id = "rtb-080d13940781a91ef"
}
