resource "aws_instance" "ec2_wp_churrops_blog" {
  ami             = "${lookup(var.amis, var.aws_region)}"
  instance_type   = "${var.instance_type}"
  security_groups = ["sg_wp_churrops_blog"]
  key_name        = "${var.key_name}"
  user_data       = "${file("userdata_script.sh")}"

  tags {
    Name 	= "wp_churrops_blog"
    iac		= "terraform"
    container	= "docker"
    role        = "production"
    admin_user	= "Rodrigo Floriano de Souza"
    admin_email	= "florianocomercial@gmail.com"
  }
}
