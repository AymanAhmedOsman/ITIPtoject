resource "aws_internet_gateway" "gw" {
    vpc_id = aws_vpc.ITI.id

    tags = {
        Name = "gw"
  }

  
}