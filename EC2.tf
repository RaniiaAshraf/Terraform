resource "aws_instance" "ec2_instance" {
    tags = {
        Name = "terra-ec2"
    }
    ami = "ami-0b5eea76982371e91"
    subnet_id = "subnet-00ad35d7db8733f38"
    instance_type = "t2.micro"
    associate_public_ip_address = "true" 
    security_groups = ["sg-0d593c24db0a13025"]
  
    user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd.x86_64
    systemctl start httpd.service
    systemctl enable httpd.service
    EOF

}