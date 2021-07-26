resource "aws_subnet" "public-a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.201.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public-A"
  }
}

resource "aws_subnet" "public-b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.202.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Public-B"
  }
}
