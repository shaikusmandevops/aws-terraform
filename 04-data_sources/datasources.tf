data "aws_ami" "data" {
  most_recent      = true
  name_regex       = "RHEL-9.3.0_HVM-20231101-x86_64-5-Hourly2-GP2"
  owners           = ["309956199498	"]
}
output "aws_ami_data" {
  value = data.aws_ami.data
}