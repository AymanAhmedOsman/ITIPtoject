

#-------------------------- ec2 in AZ-a ----------------------------

resource "aws_instance" "bastion-host" {
    #subnet_id = aws_subnet.public_1.id
    subnet_id = module.network.public1_subnet_id
    #instance_type = "t2.micro"
    instance_type = var.instance_type
    #ami           = "ami-08d70e59c07c61a3a"
    ami           = var.ami
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    #key_name = tls_private_key.mec_key.public_key_openssh
    key_name = aws_key_pair.mec_ssh_key.key_name
    associate_public_ip_address = true

}

resource "aws_instance" "APP" {
    subnet_id = module.network.private1_subnet_id
    instance_type = var.instance_type
    ami           = var.ami
    vpc_security_group_ids = [aws_security_group.allow_ssh_3000.id]
    #key_name = tls_private_key.mec_key.public_key_openssh
    key_name = aws_key_pair.mec_ssh_key.key_name
    associate_public_ip_address = true


}
#-------------------------- ec2 in AZ-b ----------------------------
resource "aws_instance" "bastion-host-2" {
    subnet_id = module.network.public2_subnet_id
    instance_type = var.instance_type
    ami           = var.ami
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    #key_name = tls_private_key.mec_key.public_key_openssh
    key_name = aws_key_pair.mec_ssh_key.key_name

  
}

resource "aws_instance" "APP-2" {
    subnet_id = module.network.private2_subnet_id
    instance_type = var.instance_type
    ami           = var.ami
    vpc_security_group_ids = [aws_security_group.allow_ssh_3000.id]
    #key_name = tls_private_key.mec_key.public_key_openssh
    key_name = aws_key_pair.mec_ssh_key.key_name
}