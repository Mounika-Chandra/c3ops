resource "aws_instance" "web" {
  ami           = "ami-007020fd9c84e18c7"
  instance_type = "t3.micro"
  key_name = "mumkeys"
  security_groups = "sg-0dc273c872d59bd36"
  subnet_id = "subnet-03b0148b62362c55a"
  iam_instance_profile = "cloudbinoary_ssm"

  tags = {
    Name = "HelloWorld"
  }
}