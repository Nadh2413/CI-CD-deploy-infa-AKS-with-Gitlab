resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  # location = "East Asia"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "${var.prefix}-aks"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "${var.prefix}aks"

  default_node_pool {
    # name       = "woker"
    # node_count = 1
    # vm_size    = "Standard_D2s_v3"
    name = var.name_node
    node_count = var.node_count
    vm_size = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
  tags = var.tags
  # tags = {
    # Environment = "Developer"
  # }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw
  sensitive = true
}
