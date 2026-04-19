terraform {
  backend "azurerm" {
    # This is a partial configuration. Values are typically injected via 
    # Terragrunt's remote_state block or -backend-config arguments.
    # resource_group_name  = ""
    # storage_account_name = ""
    # container_name       = ""
  }
}