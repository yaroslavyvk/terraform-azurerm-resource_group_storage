
# Terraform Azure Resource Group and Storage Account Module

This Terraform module creates an Azure Resource Group and an Azure Storage Account in Azure.

## Usage

```hcl
module "resource_group_storage" {
  source  = "yaroslavyvk/resource_group_storage/azurerm"
  version = "1.1.0"

  resource_group_name  = "my-resource-group"
  location             = "eastus"
  storage_account_name = "mystorageaccount"
  account_tier         = "Standard"  # Optional, defaults to "Standard"
  replication_type     = "LRS"       # Optional, defaults to "LRS"
}
```

## Providers

| Name    | Version   |
|---------|-----------|
| azurerm | >= 2.0.0  |

## Modules

No external modules are required.

## Resources

| Name                                                                 | Type                  |
|----------------------------------------------------------------------|-----------------------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | Resource |
| [azurerm_storage_account.storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | Resource |

## Inputs

| Name                 | Description                                        | Type     | Default     | Required |
|----------------------|----------------------------------------------------|----------|-------------|----------|
| resource_group_name  | Name of the Azure Resource Group                   | `string` | n/a         | yes      |
| location             | Azure region where resources will be created       | `string` | n/a         | yes      |
| storage_account_name | Name of the Azure Storage Account                  | `string` | n/a         | yes      |
| account_tier         | The tier of the storage account (`Standard` or `Premium`) | `string` | `"Standard"`| no       |
| replication_type     | The replication type of the storage account (`LRS`, `GRS`, `RAGRS`, `ZRS`, `GZRS`, `RAGZRS`) | `string` | `"LRS"`     | no       |

## Outputs

| Name                 | Description                          |
|----------------------|--------------------------------------|
| resource_group_id    | ID of the Azure Resource Group       |
| storage_account_id   | ID of the Storage Account            |

## Example

```hcl
provider "azurerm" {
  features = {}
}

module "resource_group_storage" {
  source  = "yaroslavyvk/resource_group_storage/azurerm"
  version = "1.1.0"

  resource_group_name  = "example-resource-group"
  location             = "eastus"
  storage_account_name = "examplestorageacct"
}

output "resource_group_id" {
  description = "ID of the Azure Resource Group"
  value       = module.resource_group_storage.resource_group_id
}

output "storage_account_id" {
  description = "ID of the Storage Account"
  value       = module.resource_group_storage.storage_account_id
}
```
