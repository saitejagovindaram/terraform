# resource "aws_instance" "roboshop-instance" {
#     count = length(var.roboshop_instances)
#     ami = var.ami_id
#     instance_type = (var.roboshop_instances[count.index] == "mongodb") ? "t2.small" : "t3.micro" 
#     vpc_security_group_ids = [ aws_security_group.roboshop_sg.id ]  
#     tags = merge(var.tags, {Name = var.roboshop_instances[count.index]})
# }

resource "aws_instance" "roboshop-instance" {
    for_each = toset(var.roboshop_instances)
    ami = var.ami_id
    instance_type = (each.key == "mongodb") ? "t2.small" : "t3.micro" 
    vpc_security_group_ids = [ aws_security_group.roboshop_sg.id ]  
    tags = merge(var.tags, {Name = each.key})
}

resource "aws_instance" "roboshop-instance-v2" {
    for_each = var.instance_names
    ami = var.ami_id
    instance_type = (each.key == "mongodb") ? each.value : each.value 
    vpc_security_group_ids = [ aws_security_group.roboshop_sg.id ]  
    tags = merge(var.tags, {Name = each.key})
}
