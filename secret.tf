#------------------------------------ Secret Manager ---------------------

resource "aws_secretsmanager_secret" "mec_ssh_private_key_secret" {
  name = "mec_ssh_private_key_secret"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "mec_ssh_private_key_secret_version" {
  secret_id     = aws_secretsmanager_secret.mec_ssh_private_key_secret.id
  secret_string = tls_private_key.mec_key.public_key_pem
  
}