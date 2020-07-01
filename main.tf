

resource "aws_instance" "example" {
  ami           = "ami-005af4c3162f495fa"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0a3926b82321277e7"
  tags = {
    Name = "eagle_landed"
  }
}
