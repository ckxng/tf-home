<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_internet_gateway.internet_gateway](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_internet_gateway) | resource |
| [oci_core_route_table.route_table](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_route_table) | resource |
| [oci_core_route_table_attachment.subnet_route_attachment](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_route_table_attachment) | resource |
| [oci_core_subnet.cluster_subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_vcn.cluster_vcn](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_vcn) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | n/a | `string` | n/a | yes |
| <a name="input_create_subnet"></a> [create\_subnet](#input\_create\_subnet) | n/a | `bool` | `true` | no |
| <a name="input_create_vcn"></a> [create\_vcn](#input\_create\_vcn) | n/a | `bool` | `true` | no |
| <a name="input_subnet_cidr_block"></a> [subnet\_cidr\_block](#input\_subnet\_cidr\_block) | n/a | `string` | `"10.0.0.0/24"` | no |
| <a name="input_subnet_dns_label"></a> [subnet\_dns\_label](#input\_subnet\_dns\_label) | n/a | `string` | `"subnet"` | no |
| <a name="input_subnet_ipv6_subnet"></a> [subnet\_ipv6\_subnet](#input\_subnet\_ipv6\_subnet) | The two character portion of the subnet between /56 and /64.  This is the XX in AAAA:BBBB:CCCC:DDXX::/64.  This MUST be a two character string between 00 and ff. | `string` | `"00"` | no |
| <a name="input_subnet_ocid"></a> [subnet\_ocid](#input\_subnet\_ocid) | The OCID of the subnet to attach interfaces to.  Ignored if create\_subnet is true. | `string` | `null` | no |
| <a name="input_vcn_cidr_blocks"></a> [vcn\_cidr\_blocks](#input\_vcn\_cidr\_blocks) | n/a | `list(string)` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_vcn_dns_label"></a> [vcn\_dns\_label](#input\_vcn\_dns\_label) | n/a | `string` | `"vcn"` | no |
| <a name="input_vcn_ocid"></a> [vcn\_ocid](#input\_vcn\_ocid) | The OCID of the vcn to attach subnets to.  Ignored if create\_vcn is true. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_ocid"></a> [subnet\_ocid](#output\_subnet\_ocid) | n/a |
| <a name="output_vcn_ocid"></a> [vcn\_ocid](#output\_vcn\_ocid) | n/a |
<!-- END_TF_DOCS -->