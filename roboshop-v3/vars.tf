variable "vpc_security_group_ids" {
  default = ["sg-0f7763ae0b14dcafe"]
}
variable "zone_id" {
  default = "Z00157522ZJVN353O1F1V"
}
variable "components" {
      default = {
        frontend={
          name="frontend"
          instance_type="t3.micro"
        }
        cart={
          name="cart"
          instance_type="t3.micro"
        }
        mongodb={
          name="mongodb"
          instance_type="t3.micro"
        }
        catalogue={
          name="catalogue"
          instance_type="t3.micro"
        }
        user={
          name="user"
          instance_type="t3.micro"
        }
        redis={
          name="redis"
          instance_type="t3.micro"
        }
        payment={
          name="payment"
          instance_type="t3.micro"
        }
        mysql={
          name="mysql"
          instance_type="t3.micro"
        }
        shipping={
          name="shipping"
          instance_type="t3.micro"
        }
        rabbitmq={
          name="rabbitmq"
          instance_type="t3.micro"
        }
      }
}