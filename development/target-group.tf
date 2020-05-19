resource "aws_alb_target_group" "api-ming1-tg8080"  {
  name          = "${local.resrc_prefix_nm}-api-ming1-tg8080"
  protocol      = "HTTP"
  port          = 8080
  target_type   = "instance"
  vpc_id        = var.vpc_id

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    matcher             = "200"
    path                = "/health"
  }

  tags = {
    Name          = "${local.resrc_prefix_nm}-api-ming1-tg8080"
    Environment   = var.environment
  }
}

resource "aws_alb_target_group" "api-ming2-tg8080"  {
  name          = "${local.resrc_prefix_nm}-api-ming2-tg8080"
  protocol      = "HTTP"
  port          = 8080
  target_type   = "instance"
  vpc_id        = var.vpc_id

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    matcher             = "200"
    path                = "/health"
  }

  tags = {
    Name          = "${local.resrc_prefix_nm}-api-ming2-tg8080"
    Environment   = var.environment
  }
}