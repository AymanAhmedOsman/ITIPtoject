resource "aws_vpc" "ITI" {    

    cidr_block =  var.cidr
    enable_dns_support = true

    tags = {
      name = "ITI"
    }

    provisioner "local-exec" {
      command = "echo ${self.arn}"
    }
  
}

#resource "aws_vpc" "pop" {    

   # cidr_block =  var.vpc_cidr
   # enable_dns_support = true

   # tags = {
   #   name = "pop"
    #}

    #provisioner "local-exec" {
   #   command = "echo ${self.arn}"
  #  }
 # 
#}

#------------ null resource -----------------------
#resource "null_resource" "pop" {

   #   provisioner "local-exec" {
  #    command = "date > date.txt"
 #     }
#}




