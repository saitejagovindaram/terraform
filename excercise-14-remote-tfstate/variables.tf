variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "fromPort" {
  type = number
  default = 0
}

variable "toPort" {
  type = number
  default = 0
}

variable "internetTraffic" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "tags" {
  type = map
  default = {
    Project = "Roboshop"
    Terraform = true
    Environment = "Dev"
  }
}

variable "roboshop_instances" {
  type = list(string)
  default = ["mongodb", "catalogue"] #"user", "cart", "web", "shipping", "mysql", "rabbitmq", "redis", "payments"]
}


variable "domain-name" {
  type = string
  default = "saitejag.site"
}

variable "route53_zone_id" {
  type = string
  default = "Z0126075383L1GOMB15Q6"
}

variable "ingress_rules" {
  type = list(object({
    description      = string
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
  }))
  default = [
    {
      description      = "Inboud Traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    },
    {
      description      = "Inboud Traffic"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    },
    {
      description      = "Inboud Traffic"
      from_port        = 8080
      to_port          = 8080
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }
  ]
}
