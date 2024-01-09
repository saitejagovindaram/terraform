output "centos8_info" {
    value = data.aws_ami.centos8
}


output "ubuntu18_info" {
    value = data.aws_ami.ubuntu18
}

output "amazonlinux_info" {
    value = data.aws_ami.amazon-linux
}

output "default_vpc_info" {
  value = data.aws_vpc.default_vpc_info
}