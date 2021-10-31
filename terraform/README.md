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
| <a name="input_oci_compartment_description"></a> [oci\_compartment\_description](#input\_oci\_compartment\_description) | n/a | `string` | `"default description"` | no |
| <a name="input_oci_compartment_name"></a> [oci\_compartment\_name](#input\_oci\_compartment\_name) | n/a | `string` | `"tfdeploy"` | no |
| <a name="input_oci_compartment_ocid"></a> [oci\_compartment\_ocid](#input\_oci\_compartment\_ocid) | The OCID of the compartment to attach resources to.  Ignored if oci\_create\_compartment is true. | `string` | `""` | no |
| <a name="input_oci_compute_pools"></a> [oci\_compute\_pools](#input\_oci\_compute\_pools) | n/a | <pre>list(object({<br>    shape                    = string<br>    instance_count           = number<br>    cluster_node_name_prefix = string<br>    memory_in_gbs            = string<br>    ocpus                    = string<br>  }))</pre> | <pre>[<br>  {<br>    "cluster_node_name_prefix": "cluster-a1-node-",<br>    "instance_count": 3,<br>    "memory_in_gbs": 6,<br>    "ocpus": 1,<br>    "shape": "VM.Standard.A1.Flex"<br>  }<br>]</pre> | no |
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