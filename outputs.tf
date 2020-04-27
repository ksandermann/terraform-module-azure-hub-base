output "dependency_subscription_id" {
  value = data.azurerm_subscription.this.id
}

output "dependency_organisation" {
  value = var.organisation
}

output "dependency_environment" {
  value = var.environment
}

output "dependency_location_main" {
  value = azurerm_resource_group.main.location
}
