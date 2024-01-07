resource "aws_instance" "firstInstance1" {
    ami = var.amiID
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.permitAll.id]

    tags = {
      Name = "myFirstInstanceusingTF"
    }
}

resource "aws_security_group" "permitAll" {
  name = "PermitAllSG"
  description = "PermitAllSG"
  # vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Inboud Traffic"
    from_port        = var.fromPort
    to_port          = var.toport
    protocol         = "tcp"
    cidr_blocks      = var.internetTraffic
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "PermitAllSGTag"
  }
}