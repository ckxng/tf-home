<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.50.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ckxng_oci_compute"></a> [ckxng\_oci\_compute](#module\_ckxng\_oci\_compute) | ../modules/ckxng_oci_compute | n/a |
| <a name="module_ckxng_oci_network"></a> [ckxng\_oci\_network](#module\_ckxng\_oci\_network) | ../modules/ckxng_oci_network | n/a |

## Resources

| Name | Type |
|------|------|
| [oci_identity_compartment.compartment](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/identity_compartment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_oci_a1_cluster_node_name_prefix"></a> [oci\_a1\_cluster\_node\_name\_prefix](#input\_oci\_a1\_cluster\_node\_name\_prefix) | n/a | `string` | `"cluster-a1-node-"` | no |
| <a name="input_oci_a1_instance_count"></a> [oci\_a1\_instance\_count](#input\_oci\_a1\_instance\_count) | n/a | `number` | `3` | no |
| <a name="input_oci_a1_memory_in_gbs"></a> [oci\_a1\_memory\_in\_gbs](#input\_oci\_a1\_memory\_in\_gbs) | n/a | `string` | `"6"` | no |
| <a name="input_oci_a1_ocpus"></a> [oci\_a1\_ocpus](#input\_oci\_a1\_ocpus) | n/a | `string` | `"1"` | no |
| <a name="input_oci_compartment_description"></a> [oci\_compartment\_description](#input\_oci\_compartment\_description) | n/a | `string` | `"default description"` | no |
| <a name="input_oci_compartment_name"></a> [oci\_compartment\_name](#input\_oci\_compartment\_name) | n/a | `string` | `"tfdeploy"` | no |
| <a name="input_oci_compartment_ocid"></a> [oci\_compartment\_ocid](#input\_oci\_compartment\_ocid) | The OCID of the compartment to attach resources to.  Ignored if oci\_create\_compartment is true. | `string` | `""` | no |
| <a name="input_oci_create_compartment"></a> [oci\_create\_compartment](#input\_oci\_create\_compartment) | n/a | `bool` | `true` | no |
| <a name="input_oci_key_fingerprint"></a> [oci\_key\_fingerprint](#input\_oci\_key\_fingerprint) | n/a | `string` | n/a | yes |
| <a name="input_oci_private_key"></a> [oci\_private\_key](#input\_oci\_private\_key) | n/a | `string` | n/a | yes |
| <a name="input_oci_region_key"></a> [oci\_region\_key](#input\_oci\_region\_key) | n/a | `string` | `"phx"` | no |
| <a name="input_oci_tenancy_ocid"></a> [oci\_tenancy\_ocid](#input\_oci\_tenancy\_ocid) | n/a | `string` | n/a | yes |
| <a name="input_oci_user_ocid"></a> [oci\_user\_ocid](#input\_oci\_user\_ocid) | n/a | `string` | n/a | yes |
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->