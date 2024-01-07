terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.31.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "firstInstance1" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t3.micro"

    tags = {
      Name = "myFirstInstanceusingTF"
    }
}