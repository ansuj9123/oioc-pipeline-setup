output "resource_group_id" {
  description = "The ID of the created resource group"
  value       = azurerm_resource_group.app_rg.id
}

output "app_service_plan_id" {
  description = "The ID of the created App Service Plan"
  value       = azurerm_service_plan.app_plan.id
}

output "linux_web_app_id" {
  description = "The ID of the created Linux Web App"
  value       = azurerm_linux_web_app.app.id
}

output "linux_web_app_default_hostname" {
  description = "The default hostname of the Linux Web App"
  value       = azurerm_linux_web_app.app.default_hostname
}

output "resource_group_name" {
  description = "The name of the created resource group"
  value       = azurerm_resource_group.app_rg.name
}
