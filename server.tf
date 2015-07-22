variable "ubuntu_ami" {
  default = "ami-d05e75b8"
  description = "ami for ubuntu image on Amazon"
}

resource "aws_instance" "funserver" {
    ami = "${var.ubuntu_ami}"
    instance_type = "t2.micro"
}
