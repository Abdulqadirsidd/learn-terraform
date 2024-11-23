resource "aws_instance" "test" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0880ecf773230947b"]
  tags = {
    Name = "test"
  }
}

data "aws_ami" "ami" {
  most_recent = true
  name_regex = "RHEL-9-DevOps-Practice"
  owners = ["973714476881"]
}

data "aws_security_group" "sg" {
  name = "allow-all"
}
