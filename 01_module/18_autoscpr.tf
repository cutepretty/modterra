resource "aws_placement_group" "pch_pg" {
  name     = "pch-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "pch_atsg" {
  name                      = "pch-atsg"
  min_size                  = 2
  max_size                  = 8
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.pch_lacf.name
  vpc_zone_identifier       = [aws_subnet.pch_puba.id,aws_subnet.pch_pubc.id]
}

