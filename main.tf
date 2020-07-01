
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "example" {
  ami           = "ami-005af4c3162f495fa"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0a3926b82321277e7"
  tags = {
    Name = "eagle_landed"
  }
}
