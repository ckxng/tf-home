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
| [oci_core_instance.cluster_instances](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_instance) | resource |
| [oci_core_ipv6.ipv6_addresses](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_ipv6) | resource |
| [oci_core_vnic_attachments.cluster_vnics](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_vnic_attachments) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_domain"></a> [availability\_domain](#input\_availability\_domain) | n/a | `string` | `"hoEM:PHX-AD-2"` | no |
| <a name="input_cluster_node_name_prefix"></a> [cluster\_node\_name\_prefix](#input\_cluster\_node\_name\_prefix) | n/a | `string` | `"cluster-node-"` | no |
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | n/a | `string` | n/a | yes |
| <a name="input_image_source_ocid"></a> [image\_source\_ocid](#input\_image\_source\_ocid) | n/a | `string` | `"ocid1.image.oc1.phx.aaaaaaaa3nsfzlvkvrfug4xby77srfr43iinfkw3clur5izvlnqtxqdyj5sq"` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | n/a | `number` | `3` | no |
| <a name="input_memory_in_gbs"></a> [memory\_in\_gbs](#input\_memory\_in\_gbs) | n/a | `string` | `"6"` | no |
| <a name="input_ocpus"></a> [ocpus](#input\_ocpus) | n/a | `string` | `"1"` | no |
| <a name="input_shape"></a> [shape](#input\_shape) | n/a | `string` | `"VM.Standard.A1.Flex"` | no |
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | n/a | `string` | n/a | yes |
| <a name="input_subnet_ocid"></a> [subnet\_ocid](#input\_subnet\_ocid) | The OCID of the subnet to attach interfaces to.  Ignored if create\_subnet is true. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->