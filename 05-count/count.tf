variable "components" {

  default = ["shipping","frontend","catalogue"]
}


resource "aws_instance" "services" {
  count = length(var.components)
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"

  tags = {
    Name = element(var.components, count.index)
  }
}