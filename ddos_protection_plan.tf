resource "azurerm_network_ddos_protection_plan" "main" {
  name                = module.naming-hub.ddos_protection_plan_names["main"]
  location            = var.location_main
  resource_group_name = module.naming-hub.resource_group_names["shared_services"]

  tags = local.tags_ddos_protection_plan_main
}
