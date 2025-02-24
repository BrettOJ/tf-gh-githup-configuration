terraform {
  backend "azurerm" {
    key                  = "terraform.tfstate"
    resource_group_name  = "boj-test-rg"
    storage_account_name = "bojtestst"
    container_name       = "terraformstate"
    tenant_id            = "f3c9952d-3ea5-4539-bd9a-7e1093f8a1b6" #konjur tenant id
    subscription_id      = "95328200-66a3-438f-9641-aeeb101e5e37"
    use_msi              = false
  }
}

terraform {
  required_version = ">= 1.9.7"
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.17.0"
    }
    github = {
      source = "integrations/github"
      version = "6.5.0"
    }
  }
}

provider "github" {
  # token = var.github_token != "" ? var.github_token : local.env_github_token
}
 

provider "azurerm" {
  storage_use_azuread = true
  use_msi             = false
  tenant_id           = "f3c9952d-3ea5-4539-bd9a-7e1093f8a1b6" #konjur tenant id
  subscription_id     = "95328200-66a3-438f-9641-aeeb101e5e37"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}



