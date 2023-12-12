terraform {
  backend "s3" {
    bucket = "usmanaws"
    key    = "09-state/terraform-tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "hello state file created"
}

output "state_file_executed" {
  value = var.test
}