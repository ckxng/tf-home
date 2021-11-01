# ckxng_oci_compute

Create compute resources with IPv6.

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
| <a name="input_availability_domain"></a> [availability\_domain](#input\_availability\_domain) | The availability domain to create instances in | `string` | `"hoEM:PHX-AD-2"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The cluster name which is used to create the instance labels ("CLUSTERNAME-##") | `string` | `"cluster"` | no |
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | The OCID of the compartment interfaces should be created in | `string` | n/a | yes |
| <a name="input_image_source_ocid"></a> [image\_source\_ocid](#input\_image\_source\_ocid) | The OCID of the image to deploy.  Defaults to Ubuntu 20.4 | `string` | `"ocid1.image.oc1.phx.aaaaaaaa3nsfzlvkvrfug4xby77srfr43iinfkw3clur5izvlnqtxqdyj5sq"` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | How many instances to create | `number` | `3` | no |
| <a name="input_memory_in_gbs"></a> [memory\_in\_gbs](#input\_memory\_in\_gbs) | The amount of memory to assign to each instance (in GB) | `number` | `6` | no |
| <a name="input_ocpus"></a> [ocpus](#input\_ocpus) | The number of OCPUs to assign to each instance | `number` | `1` | no |
| <a name="input_shape"></a> [shape](#input\_shape) | The shape of the instance to deploy | `string` | `"VM.Standard.A1.Flex"` | no |
| <a name="input_ssh_authorized_keys"></a> [ssh\_authorized\_keys](#input\_ssh\_authorized\_keys) | A string containing one or more SSH public keys to be deployed to the main user of the system | `string` | n/a | yes |
| <a name="input_subnet_ocid"></a> [subnet\_ocid](#input\_subnet\_ocid) | The OCID of the subnet to attach interfaces to. | `string` | n/a | yes |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | A user\_data string to be passed to cloud\_init | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_ocids"></a> [instance\_ocids](#output\_instance\_ocids) | The list of instances created by this module |
<!-- END_TF_DOCS -->
