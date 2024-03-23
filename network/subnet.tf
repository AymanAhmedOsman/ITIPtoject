#------------------------------------ public subnet az1 ----------------------------------
resource "aws_subnet" "public_1" {

    vpc_id = aws_vpc.ITI.id
    availability_zone = "${var.region}a"
    cidr_block =  var.public_subnet1_cidr
    #map_public_ip_on_launch = true

    tags = {
      name = "public_subnet"
    }
    
 
}
############################### public Subnet az2 ########################################

resource "aws_subnet" "public_2" {

    vpc_id = aws_vpc.ITI.id
    availability_zone = "${var.region}b"
    cidr_block =  var.public_subnet2_cidr
    #map_public_ip_on_launch = true

    tags = {
      name = "public_subnet"
    }
    
}

############################### private Subnet az1 ########################################
resource "aws_subnet" "private_1" {
    vpc_id = aws_vpc.ITI.id
    availability_zone = "${var.region}a"
    cidr_block =  var.privat_subnet1_cidr
    
    tags = {
      name = "private_subnet"
    }
    
 
}

############################### private Subnet az2 ########################################

resource "aws_subnet" "private_2" {
    vpc_id = aws_vpc.ITI.id
    availability_zone = "${var.region}b"
    cidr_block =  var.privat_subnet2_cidr 

    tags = {
      name = "private_subnet"
    }
 
}
