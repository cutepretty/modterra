resource "aws_lb_target_group_attachment" "pch_lbtg_att" {
    target_group_arn     = aws_lb_target_group.pch_lbtg.arn
    target_id            = aws_instance.pch_weba.id
    port                 = 80
  }