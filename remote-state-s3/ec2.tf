resource "aws_instance" "project_instance" {
  count                  = 1
  ami                    = "ami-041e2ea9402c46c32"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-04dae8a904672e07f"]

  tags = {
    Name        = "Db_instance"
    Environment = "Devlopment"
    CreatedBy   = "Praveen"
    Project     = "Cloud_Project"
    Module      = "DB_Module"
    Terraform   = "true"
  }
}
