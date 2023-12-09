resource "aws_instance" "instacne_ec2" {
  ami           = ami-023c11a32b0207432
  instance_type = "t3.micro"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}