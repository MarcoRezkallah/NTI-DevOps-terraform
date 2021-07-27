resource "aws_vpc" "main" {
  cidr_block = "${var.cidr-prefix}.0.0/16"

  tags = {
    Name = "${var.name-tag}-${var.env}-main-VPC"
  }
}
