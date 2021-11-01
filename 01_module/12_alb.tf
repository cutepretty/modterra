resource "aws_lb" "pch_lb" {
  name                = "pch-alb"
  internal            = false
  load_balancer_type  = "application"
  security_groups     =  [aws_security_group.pch_websg.id]
  subnets             =  [aws_subnet.pch_puba.id,aws_subnet.pch_pubc.id]

  tags= {
    Name  = "pch-alb"

  }
}