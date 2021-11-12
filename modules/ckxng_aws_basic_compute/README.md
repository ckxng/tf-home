# ckxng_aws_basic_compute

This module creates a single EC2 instance into an existing VPC and subnet

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_instance.instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.ssh_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_instance_type"></a> [aws\_instance\_type](#input\_aws\_instance\_type) | AWS instance type to deploy | `string` | `"t3.medium"` | no |
| <a name="input_aws_subnet_id"></a> [aws\_subnet\_id](#input\_aws\_subnet\_id) | AWS Subnet ID to deploy instances into.  Uses default Subnet of default VPC if not specified. | `string` | `null` | no |
| <a name="input_instance_user_data"></a> [instance\_user\_data](#input\_instance\_user\_data) | cloudinit user\_data to provide to instances on creation | `string` | `""` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | The SSH public key to be added to the authorized\_keys file | `string` | n/a | yes |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | Defines the security group to attach the instance(s) to.  Uses default SG of default VPC if not specified. | `set(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eip"></a> [eip](#output\_eip) | Public Elastic IPs data for instance |
| <a name="output_instance"></a> [instance](#output\_instance) | Instance data |
<!-- END_TF_DOCS -->
