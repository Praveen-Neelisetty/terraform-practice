# ec2 variables
variable "instance_names" {
  type    = list(any)
  default = ["db", "backend", "frontend"]
}
variable "image_id" {
  type        = string                  #optional
  default     = "ami-041e2ea9402c46c32" #optional 
  description = "RHEL-9 AMI ID"         #optional
}

variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "common_tags" {
  default = {
    Project     = "Expense"
    Environment = "Dev"
    Terraform   = "true"
  }
}

#sg variables
variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_description" {
  default = "allowing port 22"
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allowed_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

#r53 variables
variable "zone_id" {
  type    = string
  default = "Z00919132R52PAI68SR11"
}

variable "domain_name" {
  type    = string
  default = "praveen.store"
}

variable "instance_name" {
  default     = "backend"
}
