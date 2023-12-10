output "fruit_name" {
  value = var.name_of_the_fruit
}
variable "name_of_the_fruit" {
  default = "mango"
}
variable "fruit_name_list" {
  default = ["apple","banana","mango"]
}
output "fruit_name_first" {
  value = var.fruit_name_list[0]
}
output "fruit_name_second" {
  value = var.fruit_name_list[1]
}
output "fruit_name_third" {
  value = var.fruit_name_list[2]
}
variable "fruit_name_maps" {
  default = {
    apple=100
    banana=200
    }
  }
output "fruit_name_map_apple" {
  value = var.fruit_name_maps["apple"]
}
output "fruit_name_map_banana" {
  value = var.fruit_name_maps["banana"]
}
variable "fruit_name_maps_map" {
  default = {
    apple={
      stock=100
      price=200
    }
    banana={
      stock=200
      price=100
    }
  }
}
output "fruit_name_maps_map_apple_stock" {
  value = var.fruit_name_maps_map["apple"].stock
}
variable "fruit_names_vars" {
  default = {
    apple={
      stock=100
      stock_quality="good"
      stock_availability=true
    }
  }
}

output "fruit_names_vars" {
  value = "The price of apple=${var.fruit_names_vars["apple"].stock} quality of stock =${var.fruit_names_vars["apple"].stock_quality} if stock available=${var.fruit_names_vars["apple"].stock_availability}"
}

output "try_function" {
  value = try(var.fruit_name_list[2], 2)
}

output "lookup_function" {
  value = lookup(var.fruit_names_vars["apple"], price, null )
}