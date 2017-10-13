variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "aws_region" {
  default = ""
}

variable "amis" {
  type    = "map"
  default = {
    us-east-1 = "ami-a4c7edb2"
  }
}

variable "key_name" {
   default = "rdglinux-awskey-us"
}

variable "instance_type" {
  default = ""
}
