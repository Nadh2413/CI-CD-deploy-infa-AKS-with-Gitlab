variable "prefix" {
    description = "name resource group"
    type = string
}

variable "location" {
  description = "region use"
  type = string
}

variable "name_node" {
  description = "name nodes"
  type = string
}

variable "node_count" {
  description = "number nodes worker"
  type = number
}

variable "vm_size" {
  description = "size node wokers"
  type = string
}

variable "tags" {
  description = "tags staging dev, test, product...."
  type = map(string)
}
