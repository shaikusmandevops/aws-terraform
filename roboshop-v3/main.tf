module "test" {
  source = "./module"
  for_each = var.components
  instance_type =each.value["instance_type"]
  vpc_security_group_ids =var.vpc_security_group_ids
  zone_id=var.zone_id
  name=each.value["name"]

}
