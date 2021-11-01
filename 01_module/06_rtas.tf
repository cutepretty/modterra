resource "aws_route_table_association" "pch_rtas_a" {
  subnet_id = aws_subnet.pch_puba.id
  route_table_id = aws_route_table.pch_rt.id
}

resource "aws_route_table_association" "pch_rtas_c" {
  subnet_id = aws_subnet.pch_puba.id
  route_table_id = aws_route_table.pch_rt.id
}