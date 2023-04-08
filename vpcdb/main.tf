resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "app1" {
  cidr_block        = var.main-app1-cidr
  availability_zone = "${var.region}a"
  vpc_id            = aws_vpc.main.id
  tags = {
    "Name" = "app1"
  }

}

resource "aws_subnet" "db1" {
  cidr_block        = var.main-db1-cidr
  availability_zone = "${var.region}b"
  vpc_id            = aws_vpc.main.id
  tags = {
    "Name" = "db1"
  }

}

resource "aws_subnet" "app2" {
  cidr_block        = var.main-app2-cidr
  availability_zone = "${var.region}a"
  vpc_id            = aws_vpc.main.id
  tags = {
    "Name" = "app2"
  }

}

resource "aws_subnet" "db2" {
  cidr_block        = var.main-db2-cidr
  availability_zone = "${var.region}b"
  vpc_id            = aws_vpc.main.id
  tags = {
    "Name" = "db2"
  }

}

