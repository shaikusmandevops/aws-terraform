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
      }
}