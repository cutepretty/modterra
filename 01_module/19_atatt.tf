resource "aws_autoscaling_attachment" "pch_atatt" {
autoscaling_group_name = aws_autoscaling_group.pch_atsg.id
alb_target_group_arn = aws_lb_target_group.pch_lbtg.arn
  
}