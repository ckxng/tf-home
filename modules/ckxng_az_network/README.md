# ckxng_aws_basic_compute

This module creates a resource group, network, and subnet in Azure.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.net](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_net"></a> [create\_net](#input\_create\_net) | Create an Azure Network | `bool` | `true` | no |
| <a name="input_create_rg"></a> [create\_rg](#input\_create\_rg) | Create an Azure Resource Group | `bool` | `true` | no |
| <a name="input_create_subnet"></a> [create\_subnet](#input\_create\_subnet) | Create an Azure Subnet | `bool` | `true` | no |
| <a name="input_net_addr_space"></a> [net\_addr\_space](#input\_net\_addr\_space) | Azure Network address space | `set(string)` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_net_name"></a> [net\_name](#input\_net\_name) | Azure Network name | `string` | `"terraform-net"` | no |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Azure Resource Group location | `string` | `"Central US"` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Azure Resource Group name | `string` | `"terraform-rg"` | no |
| <a name="input_subnet_addr_space"></a> [subnet\_addr\_space](#input\_subnet\_addr\_space) | Azure Subnet address space | `set(string)` | <pre>[<br>  "10.0.0.0/24"<br>]</pre> | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Azure Subnet name | `string` | `"terraform-subnet"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
