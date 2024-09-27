This Terraform module creates a resource group and a storage account in Azure using the AzureRM provider.
---
## Usage

To use this module, include the following block in your Terraform configuration:

```hcl
module "resource_group_storage" {
  source  = "github.com/username/terraform-azurerm-resource_group_storage"
  version = "1.0.0"
  
  resource_group_name  = "example-rg"
  location             = "West Europe"
  storage_account_name = "examplestorage"
}
```
---
### Inputs

| Name                  | Description                         | Type   | Default   | Required |
|-----------------------|-------------------------------------|--------|-----------|----------|
| `resource_group_name`  | The name of the resource group      | string | n/a       | yes      |
| `location`             | The location of the resource group  | string | `"East US"`| no      |
| `storage_account_name` | The name of the storage account     | string | n/a       | yes      |

---
### Outputs

| Name                     | Description                           |
|--------------------------|---------------------------------------|
| `resource_group_name`     | The name of the created resource group|
| `storage_account_name`    | The name of the created storage account|

---
## Example

Here's an example of using this module in your Terraform project:

```hcl
module "resource_group_storage" {
  source  = "github.com/username/terraform-azurerm-resource_group_storage"
  version = "1.0.0"

  resource_group_name  = "my-resource-group"
  location             = "East US"
  storage_account_name = "mystorageaccount"
}
```
