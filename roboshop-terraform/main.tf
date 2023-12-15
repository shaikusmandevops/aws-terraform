module "test" {
  source = "git::https://github.com/shaikusmandevops/aws-terraform/tree/b21afa870a1e4c394c262882f784e0034e74afcb/tf-module-basics"
  for_each = var.components
  instance_type =each.value["instance_type"]
  vpc_security_group_ids =var.vpc_security_group_ids
  zone_id=var.zone_id
  name=each.value["name"]
}
