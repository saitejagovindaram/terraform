locals {
#   instance_type = var.roboshop_instances[count.index] == "mongodb" ? "t2.small" : "t3.micro" 

# if it give it like above i will get error, look at next excercise to undertand locals

# Error: Reference to "count" in non-counted context
# │
# │   on locals.tf line 2, in locals:
# │    2:   instance_type = var.roboshop_instances[count.index] == "mongodb" ? "t2.small" : "t3.micro"
# │
# │ The "count" object can only be used in "module", "resource", and "data" blocks, and only when the "count" argument is set.
}