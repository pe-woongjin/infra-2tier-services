resource "aws_launch_template" "api-lt" {
  name                    = "${var.resrc_prefix_nm}-api-lt"
  image_id                = var.api_lt.id
  key_name                = var.api_lt.key_name
  instance_type           = var.api_lt.type
  vpc_security_group_ids  = [ aws_security_group.api-sg.id ]

  // An instance profile is a container for an IAM role that you can use to pass role information to an EC2 instance when the instance starts.
  iam_instance_profile {
    name = var.ec2_role_name
  }

  user_data = base64encode(templatefile("./services/api/ud-startup-health.tpl", {}))

  tag_specifications {
    resource_type = "instance"
    tags = {
      "Name" = "${var.resrc_prefix_nm}-api-lt"
    }
  }
}