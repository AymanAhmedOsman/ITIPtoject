
#------------------------- secutity group ssh only -----------------------------
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic and "
  vpc_id      = module.network.vpc_id

  tags = {
    Name = "ssh"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

#--------------------------- Security group ssh and port 30000

resource "aws_security_group" "allow_ssh_3000" {
  name        = "allow_ssh_3000"
  description = "Allow ssh and port 3000 inbound traffic and "
  vpc_id      = module.network.vpc_id

  tags = {
    Name = "ssh"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_ssh_vpc" {
  security_group_id = aws_security_group.allow_ssh_3000.id
  cidr_ipv4         = var.vpc_cidr
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
resource "aws_vpc_security_group_ingress_rule" "allow_3000_vpc" {
  security_group_id = aws_security_group.allow_ssh_3000.id
  cidr_ipv4         = var.vpc_cidr
  from_port         = 3000
  ip_protocol       = "tcp"
  to_port           = 3000
}