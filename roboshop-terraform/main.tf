terraform {
  backend "s3" {
  }
}

variable "test" {}

output "run_state_file" {
  value = var.test
}