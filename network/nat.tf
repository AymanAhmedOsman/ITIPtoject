resource "aws_eip" "nat_ip" {

    tags = {
    Name = "nat_ip"
  }
}
resource "aws_nat_gateway" "mec" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.public_1.id
    tags = {
    Name = "mec_nat_gatway"
  }
}
 
