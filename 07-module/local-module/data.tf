data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "RHEL-9.3.0_HVM-20231101-x86_64-5-Hourly2-GP2"
  owners           = ["309956199498"]
}
output "aws_ami_data" {
  value = data.aws_ami.ami
}

resource "aws_instance" "instacne_ec2" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}

variable "instance_type" {}