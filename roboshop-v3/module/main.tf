resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }
}
resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}.usmandevops.online"
  type    = "A"
  ttl     = 30
  records =  [aws_instance.instance.private_ip]
}

resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = <<EOF
        cd /root/ansible/roboshop-ansible/
        git pull
        ansible-playbook main.yml -e "ansible_ssh_user=centos" -e "ansible_ssh_private_key_file=/root/auth_file/usmanppk.pem" -e "component=${var.name}" -i "${var.name}-dev.usmandevops.online"
    EOF
  }
}



