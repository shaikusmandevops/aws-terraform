module "components" {
  source = "git::https://github.com/shaikusmandevops/tf-module-roboshop.git"
  for_each = var.components
  instance_type =each.value["instance_type"]
  vpc_security_group_ids =var.vpc_security_group_ids
  zone_id=var.zone_id
  name=each.value["name"]
}
