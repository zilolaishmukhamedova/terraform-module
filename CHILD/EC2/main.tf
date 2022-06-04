resource "aws_instance" "child_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  tags = {
      "Name" = "${var.server_tag}"
  }
}