data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "RHEL-9.3.0_HVM-20231101-x86_64-5-Hourly2-GP2"
  owners           = ["309956199498"]
}
output "aws_ami_data" {
  value = data.aws_ami.ami
}

resource "aws_instance" "instacne_ec2" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}