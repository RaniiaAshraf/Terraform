resource "aws_internet_gateway" "gateway" {
  vpc_id =  "vpc-0c24b610bb437390e"

  tags = {
    Name = "terraform-gateway"
  }
}