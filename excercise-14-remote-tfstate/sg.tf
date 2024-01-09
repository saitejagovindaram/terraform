resource "aws_security_group" "roboshop_sg" {
  name = "PermitAllSG"
  description = "PermitAllSG"
  # vpc_id      = aws_vpc.main.id

  dynamic ingress {
    for_each = var.ingress_rules
    content {
      description      = ingress.value["description"]
      from_port        = ingress.value["from_port"]
      to_port          = ingress.value["to_port"]
      protocol         = ingress.value["protocol"]
      cidr_blocks      = ingress.value["cidr_blocks"]
    }
  }

  # ingress {
  #   description      = "Inboud Traffic"
  #   from_port        = 80
  #   to_port          = 80
  #   protocol         = "tcp"
  #   cidr_blocks      = ["0.0.0.0/0"]
  #   # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  # }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(var.tags, {Name = "roboshop-sg"})
}