variable "aws_access_key" {
#  default = ""
}

variable "aws_secret_key" {
#  default = ""
}

variable "aws_region" {
  default = "us-east-1"
}

variable "amis" {
  type    = "map"
  default = {
    us-east-1 = "ami-8c1be5f6"
  }
}

variable "key_name" {
   default = "terraform-key-us"
}

variable "instance_type" {
  default = "t2.micro"
}
