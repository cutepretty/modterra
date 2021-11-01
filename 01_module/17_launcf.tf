resource "aws_launch_configuration" "pch_lacf" {
    name = "pch-web"
    image_id = aws_ami_from_instance.pch_ami.id
    instance_type = "t2.micro"
    iam_instance_profile = "admin_role"
    security_groups = [aws_security_group.pch_websg.id]
    key_name = "pch-key"
    user_data = <<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
    lifecycle {
        create_before_destroy = true
    }
}