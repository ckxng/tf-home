# tf-home

This is a personal Terraform repository, running on Oracle Cloud Always-Free instances.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.50.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_instance.cluster_instances](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_instance) | resource |
| [oci_core_subnet.cluster_subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_vcn.cluster_vcn](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_vcn) | resource |
| [oci_identity_compartment.compartment](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/identity_compartment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_domain"></a> [availability\_domain](#input\_availability\_domain) | n/a | `string` | `"hoEM:PHX-AD-2"` | no |
| <a name="input_cluster_node_name_prefix"></a> [cluster\_node\_name\_prefix](#input\_cluster\_node\_name\_prefix) | n/a | `string` | `"cluster-node-"` | no |
| <a name="input_compartment_description"></a> [compartment\_description](#input\_compartment\_description) | n/a | `string` | `"default description"` | no |
| <a name="input_compartment_name"></a> [compartment\_name](#input\_compartment\_name) | n/a | `string` | `"tfdeploy"` | no |
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | The OCID of the compartment.  Ignored if create\_compartment is true. | `string` | n/a | yes |
| <a name="input_create_compartment"></a> [create\_compartment](#input\_create\_compartment) | n/a | `bool` | `true` | no |
| <a name="input_create_subnet"></a> [create\_subnet](#input\_create\_subnet) | n/a | `bool` | `true` | no |
| <a name="input_create_vcn"></a> [create\_vcn](#input\_create\_vcn) | n/a | `bool` | `true` | no |
| <a name="input_image_source_ocid"></a> [image\_source\_ocid](#input\_image\_source\_ocid) | n/a | `string` | `"ocid1.image.oc1.phx.aaaaaaaa3nsfzlvkvrfug4xby77srfr43iinfkw3clur5izvlnqtxqdyj5sq"` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | n/a | `number` | `3` | no |
| <a name="input_key_fingerprint"></a> [key\_fingerprint](#input\_key\_fingerprint) | n/a | `string` | n/a | yes |
| <a name="input_memory_in_gbs"></a> [memory\_in\_gbs](#input\_memory\_in\_gbs) | n/a | `string` | `"6"` | no |
| <a name="input_ocpus"></a> [ocpus](#input\_ocpus) | n/a | `string` | `"1"` | no |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | n/a | `string` | n/a | yes |
| <a name="input_region_key"></a> [region\_key](#input\_region\_key) | n/a | `string` | `"phx"` | no |
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | n/a | `string` | n/a | yes |
| <a name="input_subnet_cidr_block"></a> [subnet\_cidr\_block](#input\_subnet\_cidr\_block) | n/a | `string` | `"10.0.0.0/24"` | no |
| <a name="input_subnet_dns_label"></a> [subnet\_dns\_label](#input\_subnet\_dns\_label) | n/a | `string` | `"subnet"` | no |
| <a name="input_subnet_ocid"></a> [subnet\_ocid](#input\_subnet\_ocid) | The OCID of the subnet to attach interfaces to.  Ignored if create\_subnet is true. | `string` | `""` | no |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | n/a | `string` | n/a | yes |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | n/a | `string` | n/a | yes |
| <a name="input_vcn_cidr_blocks"></a> [vcn\_cidr\_blocks](#input\_vcn\_cidr\_blocks) | n/a | `list(string)` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_vcn_dns_label"></a> [vcn\_dns\_label](#input\_vcn\_dns\_label) | n/a | `string` | `"vcn"` | no |
| <a name="input_vcn_is_ipv6enabled"></a> [vcn\_is\_ipv6enabled](#input\_vcn\_is\_ipv6enabled) | n/a | `bool` | `true` | no |
| <a name="input_vcn_ocid"></a> [vcn\_ocid](#input\_vcn\_ocid) | The OCID of the vcn to attach subnets to.  Ignored if create\_vcn is true. | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->