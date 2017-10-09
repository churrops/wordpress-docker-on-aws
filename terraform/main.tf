resource "aws_instance" "wp-churrops" {
  ami             = "${lookup(var.amis, var.aws_region)}"
  instance_type   = "${var.instance_type}"
  security_groups = ["sg_DefaultWebserver"]
  key_name        = "${var.key_name}"
  user_data       = "${file("script.sh")}"

    tags {
    Name            = "wp-churrops"
    Provider        = "terraform"
    Role            = "prd"
  }
}
