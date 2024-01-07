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
  default = ["mongodb", "catalogue", "user", "cart", "web", "shipping", "mysql", "rabbitmq", "redis", "payments"]
}


variable "domain-name" {
  type = string
  default = "saitejag.site"
}

variable "route53_zone_id" {
  type = string
  default = "Z0126075383L1GOMB15Q6"
}
