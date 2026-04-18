resource_group_name  = "rg-tfstate-sandpit-uks-001"
storage_account_name = "sttfstatesandpituks001"
container_name       = "tfstate"
key                  = "sandpit/terraform.tfstate"
use_oidc             = true
use_azuread_auth     = true