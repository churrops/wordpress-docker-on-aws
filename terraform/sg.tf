resource "aws_security_group" "sg_wp_churrops_blog" {
  name        = "sg_wp_churrops_blog"
  description = "Allow all outbound traffic and inbound 80"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


   egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags {
    Name        = "wp_churrops_blog"
    iac         = "terraform"
    container   = "docker"
    Role        = "production"
    admin_user  = "Rodrigo Floriano de Souza"
    admin_email = "florianocomercial@gmail.com"
  }
}
