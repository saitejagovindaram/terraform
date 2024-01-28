resource "null_resource" "practice" {
  triggers = { 
    #No, the trigger block is not mandatory for a null_resource. The triggers block is used to define conditions under which the null_resource should be considered "changed" and trigger the associated actions. If the triggers block is not specified, the null_resource will be re-created and its provisioners re-run on every Terraform apply by default
    trigger = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "echo 'Hello, Terraform!'"
  }
}

# The triggers block uses the timestamp() function to generate a timestamp value. This timestamp value is used as the trigger for the null_resource. Since Terraform tracks changes based on the values in the triggers block, if the timestamp remains the same, Terraform will consider the null_resource unchanged and won't recreate it.

# So, the null_resource will only be recreated if the timestamp changes, causing the trigger to change. In each apply, the timestamp is calculated, and if it differs from the previous timestamp, the null_resource will be recreated, and the local-exec provisioner will be executed.

resource "null_resource" "practice2" {
  triggers = { 
    trigger = "constant value"
  }

  provisioner "local-exec" {
    command = "echo 'Hello, Terraform2!'"
  }
}