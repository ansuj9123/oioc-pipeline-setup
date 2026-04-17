variable "environment" {
  type        = string
  description = "Environment name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "name_prefix" {
  type        = string
  description = "Naming prefix"
}

variable "tags" {
  type        = map(string)
  description = "Common tags"
}

variable "app_service_sku_name" {
  type        = string
  description = "App Service Plan SKU"
}

variable "linux_fx_version" {
  type        = string
  description = "Linux runtime stack for the web app"
}

variable "app_settings" {
  type        = map(string)
  description = "Application settings"
  default     = {}
}
