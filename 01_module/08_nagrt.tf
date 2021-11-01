resource "aws_route_table" "pch_ngart_a" {
    vpc_id = aws_vpc.pch_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id =  aws_nat_gateway.pch_nga_a.id
    }
    tags = {
      Name ="pch-nga-rta"
    }
}


resource "aws_route_table" "pch_ngart_c" {
    vpc_id = aws_vpc.pch_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id =  aws_nat_gateway.pch_nga_c.id
    }
    tags = {
      Name ="pch-nga-rtc"
    }
}