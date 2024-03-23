#-------------------------------- private key ssh ---------------------
resource "tls_private_key" "mec_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "mec_ssh_key" {
  key_name   = "mec_test_key"
  public_key = tls_private_key.mec_key.public_key_openssh
}

