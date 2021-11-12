# ckxng_aws_basic_compute

This module creates a single Azure VM into an existing resource group, network, and subnet.

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
| [azurerm_linux_virtual_machine.vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.nif](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_public_ip.pub_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_user"></a> [admin\_user](#input\_admin\_user) | Azure VM admin username | `string` | `"adminuser"` | no |
| <a name="input_image_offer"></a> [image\_offer](#input\_image\_offer) | The name of the image offer for the source image | `string` | `"0001-com-ubuntu-server-focal-daily"` | no |
| <a name="input_image_publisher"></a> [image\_publisher](#input\_image\_publisher) | The name of the image publisher for the source image | `string` | `"Canonical"` | no |
| <a name="input_image_sku"></a> [image\_sku](#input\_image\_sku) | The name of the image sku for the source image | `string` | `"20_04-daily-lts-gen2"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | The name of the image version for the source image | `string` | `"latest"` | no |
| <a name="input_ip_name"></a> [ip\_name](#input\_ip\_name) | Azure IP Address name | `string` | `"terraform-ip"` | no |
| <a name="input_net_name"></a> [net\_name](#input\_net\_name) | Azure Network name | `string` | `"terraform-net"` | no |
| <a name="input_nif_name"></a> [nif\_name](#input\_nif\_name) | Azure Network Interface name | `string` | `"terraform-network-if"` | no |
| <a name="input_pub_ip_name"></a> [pub\_ip\_name](#input\_pub\_ip\_name) | Azure Public IP Address name | `string` | `"terraform-pub-ip"` | no |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | Azure Resource Group location | `string` | `"Central US"` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Azure Resource Group name | `string` | `"terraform-rg"` | no |
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | A string containing one or more SSH public keys to be deployed to the main user of the system | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Azure Subnet name | `string` | `"terraform-subnet"` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | A user\_data string to be passed to cloud\_init | `string` | `null` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Azure VM name | `string` | `"terraform-vm"` | no |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | Azure VM size | `string` | `"Standard_B1ls"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
