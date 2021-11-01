resource "aws_route_table_association" "pch_ngartas_a" {
  subnet_id      = aws_subnet.pch_pria.id
  route_table_id = aws_route_table.pch_ngart_a.id
}

resource "aws_route_table_association" "pch_ngartas_c" {
  subnet_id      = aws_subnet.pch_pric.id
  route_table_id = aws_route_table.pch_ngart_c.id
}