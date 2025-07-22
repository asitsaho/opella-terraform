variable "name" {
  description = "The name of virtual network , changing this forces new reources to be created "
  type = string 
}
variable "address_Space"{
  description = "The address space that is used for virtual network ."
  type = list
}
variable "location" {
  type = string 
}
variable "resource_group_name" {
  type= string
}
variable "tags"{
  type = map 
}
