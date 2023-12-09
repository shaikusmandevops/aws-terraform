resource "aws_instance" "frontend" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

tags = {
    Name = "red_hat_linux_os_emi"
  }
}
resource "aws_instance" "mongodb" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}
resource "aws_instance" "catalogue" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}
resource "aws_instance" "cart" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}
resource "aws_instance" "redis" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}
resource "aws_instance" "user" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}
resource "aws_instance" "mysql" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}
resource "aws_instance" "shipping" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}
resource "aws_instance" "payment" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = "sg-0f7763ae0b14dcafe"

  tags = {
    Name = "red_hat_linux_os_emi"
  }
}
