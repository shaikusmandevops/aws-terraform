variable "ami" {
  default = "ami-023c11a32b0207432"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-0f7763ae0b14dcafe"]
}
variable "zone_id" {
  default = "Z00157522ZJVN353O1F1V"
}

variable "components" {
  default = {
    frontend={name="frontend_dev"}
    mongodb={name="mongodb_dev"}
    catalogue={name="catalogue_dev"}
    cart={name="cart_dev"}
    redis={name="redis_dev"}
    user={name="user_dev"}
    mysql={name="mysql_dev"}
    shipping={name="shipping_dev"}
    payment={name="payment_dev"}

  }
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(each.value,"name",null)
  }
}
resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value,"name",null)}.usmandevops.online"
  type    = "A"
  ttl     = 30
  records =  [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
}

#output "aws_ami_data" {
#  value = aws_instance.instance
#}