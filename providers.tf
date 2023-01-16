provider "aws" { 
  shared_config_files      = ["/home/os/.aws/config"] 
  shared_credentials_files = ["/home/os/.aws/credentials"] 
  profile = "" 
}

resource "aws_subnet" "subnet" {
  cidr_block = "10.0.0.0/24"
  vpc_id ="vpc-0c24b610bb437390e"
   tags = {
    Name = "terra-subnet"
  }
}

