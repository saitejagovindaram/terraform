resource "aws_security_group" "roboshop_sg" {
  name = "PermitAllSG"
  description = "PermitAllSG"
  # vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Inboud Traffic"
    from_port        = var.fromPort
    to_port          = var.toPort
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

  tags = merge(var.tags, {Name = "roboshop-sg"})
}