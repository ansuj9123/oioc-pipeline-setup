module "app_stack" {
  source = "../../modules/app_stack"

  environment          = var.environment
  location             = var.location
  name_prefix          = var.name_prefix
  tags                 = var.tags
  app_service_sku_name = var.app_service_sku_name
  linux_fx_version     = var.linux_fx_version
  app_settings         = var.app_settings
}