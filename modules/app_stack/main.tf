resource "azurerm_resource_group" "app_rg" {
  name     = "${var.name_prefix}-${var.environment}-rg"
  location = var.location
  tags     = var.tags
}

resource "azurerm_service_plan" "app_plan" {
  name                = "${var.name_prefix}-${var.environment}-plan"
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
  os_type             = "Linux"
  sku_name            = var.app_service_sku_name
  tags                = var.tags
}

resource "azurerm_linux_web_app" "app" {
  name                = "${var.name_prefix}-${var.environment}-app"
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
  service_plan_id     = azurerm_service_plan.app_plan.id
  tags                = var.tags

  site_config {
    linux_fx_version = var.linux_fx_version
  }

  app_settings = var.app_settings
}
