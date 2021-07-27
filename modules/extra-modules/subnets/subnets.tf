resource "aws_subnet" "extra-1a" {
  vpc_id            = var.vpc-id
  cidr_block        = "${var.cidr-prefix}.171.0/24"
  availability_zone = var.az1

  tags = {
    Name = "${var.name-tag}-Extra-${var.az1}-Subnet"
  }
}

resource "aws_subnet" "extra-1b" {
  vpc_id            = var.vpc-id
  cidr_block        = "${var.cidr-prefix}.172.0/24"
  availability_zone = var.az2

  tags = {
    Name = "${var.name-tag}-Extra-${var.az2}-Subnet"
  }
}

resource "aws_subnet" "extra-2a" {
  vpc_id            = var.vpc-id
  cidr_block        = "${var.cidr-prefix}.173.0/24"
  availability_zone = var.az1

  tags = {
    Name = "${var.name-tag}-Extra-${var.az1}-Subnet"
  }
}

resource "aws_subnet" "extra-2b" {
  vpc_id            = var.vpc-id
  cidr_block        = "${var.cidr-prefix}.174.0/24"
  availability_zone = var.az2

  tags = {
    Name = "${var.name-tag}-Extra-${var.az2}-Subnet"
  }
}
