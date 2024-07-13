variable "instance_names" {
  type = map(string)
  default = {
    db       = "t2.micro"
    frontend = "t3.micro"
    backend  = "t3.micro"
  }
}

variable "zone_id" {
  type    = string
  default = "Z08884492QFPW45HM4UQO"
}

variable "domain_name" {
  type    = string
  default = "praveen.online"
}

