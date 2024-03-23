resource "aws_route_table" "rout_public" {
    vpc_id = aws_vpc.ITI.id

    
    tags = {
        Name = "mec_public_rt"
    }

}
resource "aws_route" "public" {
      
        route_table_id = aws_route_table.rout_public.id
        destination_cidr_block ="0.0.0.0/0"
        gateway_id = aws_internet_gateway.gw.id
     

}


resource "aws_route_table_association" "public_association1" {
    subnet_id = aws_subnet.public_1.id
    route_table_id = aws_route_table.rout_public.id
  
}
resource "aws_route_table_association" "public_association2" {
    subnet_id = aws_subnet.public_2.id
    route_table_id = aws_route_table.rout_public.id
  
}

############################### private rout table ################################

resource "aws_route_table" "rout_private" {
    vpc_id = aws_vpc.ITI.id

    
    tags = {
        Name = "mec_private_rt"
    }

}
resource "aws_route" "private" {
      
        route_table_id = aws_route_table.rout_private.id
        destination_cidr_block ="0.0.0.0/0"
        gateway_id = aws_nat_gateway.mec.id
     

}


resource "aws_route_table_association" "private_association1" {
    subnet_id = aws_subnet.private_1.id
    route_table_id = aws_route_table.rout_private.id
  
}
resource "aws_route_table_association" "private_association2" {
    subnet_id = aws_subnet.private_1.id
    route_table_id = aws_route_table.rout_private.id
  
}
