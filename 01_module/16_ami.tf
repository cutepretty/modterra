resource "aws_ami_from_instance" "pch_ami" {
  name               = "pch-ami"
  source_instance_id = aws_instance.pch_weba.id
  depends_on = [
    aws_instance.pch_weba
  ]
}