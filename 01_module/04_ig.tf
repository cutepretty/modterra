resource "aws_internet_gateway" "pch_ig" {
 vpc_id = aws_vpc.pch_vpc.id

 tags = {
   Name = "pch-ig"
 } 
}