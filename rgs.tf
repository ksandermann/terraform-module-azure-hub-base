resource "azurerm_resource_group" "main" {
  name     = module.naming-hub.resource_group_names["main"]
  location = var.location_main
  tags     = local.tags_resource_group_main
}

resource "azurerm_resource_group" "gateway" {
  name     = module.naming-hub.resource_group_names["gateway"]
  location = var.location_main
  tags     = local.tags_resource_group_gateway
}
resource "azurerm_resource_group" "shared_services" {
  name     = module.naming-hub.resource_group_names["shared_services"]
  location = var.location_main
  tags     = local.tags_resource_group_shared_services
}
resource "azurerm_resource_group" "dmz" {
  name     = module.naming-hub.resource_group_names["dmz"]
  location = var.location_main
  tags     = local.tags_resource_group_dmz
}


