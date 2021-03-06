resource "aws_security_group" "api-sg" {
  name    = "${var.resrc_prefix_nm}-api-sg"
  vpc_id  = var.vpc_id

  ingress {
    from_port     = 22
    to_port       = 22
    protocol      = "TCP"
    cidr_blocks   = ["58.151.93.17/32"]
    
  }

  ingress {
    from_port     = 8080
    to_port       = 8080
    protocol      = "TCP"
    cidr_blocks   = ["0.0.0.0/0"]
  }

  egress {
    from_port     = 0
    to_port       = 0
    protocol      = "-1"
    cidr_blocks   = ["0.0.0.0/0"]
  }

  lifecycle { create_before_destroy = true }

  tags = {
    Name          = "${var.resrc_prefix_nm}-api-sg"
    Environment   = var.environment
  }
}
