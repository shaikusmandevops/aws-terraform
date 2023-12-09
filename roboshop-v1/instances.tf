resource "aws_instance" "frontend" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "frontend.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mongodb" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "mongodb.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "catalogue" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "catalogue.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "cart" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "cart.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "redis" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "redis.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "user" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "user.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "mysql" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "mysql.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "shipping" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "shipping.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "rabbitmq.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "payment" {
  ami           = "ami-023c11a32b0207432"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f7763ae0b14dcafe"]

  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z00157522ZJVN353O1F1V"
  name    = "payment.usmandevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
