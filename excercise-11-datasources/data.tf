data "aws_ami" "centos8" {
  most_recent      = true  # based on created date
  owners = [ "973714476881" ]

  filter {
    name   = "name"
    values = ["*Centos-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
}

data "aws_ami" "ubuntu18" {
  most_recent      = true  # based on created date
  owners = [ "679593333241" ]

  filter {
    name   = "name"
    values = ["SupportedImages OpenJDK 11 on Ubuntu 18.04*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
}

data "aws_ami" "amazon-linux" {
  most_recent      = true  # based on created date
#   owners = [ "137112412989" ]
  owners = [ "amazon" ]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
}

data "aws_vpc" "default_vpc_info" {
  default = true
}