resource "aws_instance" "name" {
  ami                    = data.aws_ami.ami_id
  instance_type          = t2.micro
  vpc_security_group_ids = ["sg-0fea5e49e962e81c9"]

  tags {
    Name = "data-source-practice"
  }
}
