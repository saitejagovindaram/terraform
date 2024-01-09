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
  default = ["mongodb", "catalogue", "user", "cart", "web", "shipping", "mysql", "rabbitmq", "redis", "payment"]
}


variable "instance_names" {
  type = map
  default = {
    mongodb = "t3.small"
    redis = "t2.micro"
    mysql = "t3.small"
    rabbitmq = "t2.micro"
    catalogue = "t2.micro"
    cart = "t2.micro"
    user = "t2.micro"
    shipping = "t3.small"
    payment = "t2.micro"
    dispatch = "t2.micro"
    web = "t2.micro"
  }
}
