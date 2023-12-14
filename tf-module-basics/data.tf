data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "usman-ami-centos"
  owners           = ["967111156533"]
}
#output "aws_ami_data" {
#  value = data.aws_ami.ami
#}