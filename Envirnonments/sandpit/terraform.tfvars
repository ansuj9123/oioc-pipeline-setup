environment = "sandpit"
location    = "UK South"
name_prefix = "acme"

app_service_sku_name = "S1"
linux_fx_version     = "NODE|20-lts"

tags = {
  environment = "sandpit"
  owner       = "platform"
  cost_center = "engineering"
  managed_by  = "terraform"
}

app_settings = {
  WEBSITE_RUN_FROM_PACKAGE = "1"
}