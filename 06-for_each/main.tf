variable "security_groups_for_services" {
  default = {
    frontend ={
      name=frontend_sg
    }
    catalogue={
      name=catalogue_sg
    }
  }
}

resource "aws_security_group" "allow_tls" {
  for_each = var.security_groups_for_services
  name     = lookup(var.security_groups_for_services, each.value["name"], null)
}