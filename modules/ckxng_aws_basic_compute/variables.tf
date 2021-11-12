variable "aws_subnet_id" {
    description = "AWS Subnet ID to deploy instances into.  Uses default Subnet of default VPC if not specified."
    type        = string
    default     = null
}

variable "vpc_security_group_ids" {
    description = "Defines the security group to attach the instance(s) to.  Uses default SG of default VPC if not specified."
    type        = set(string)
    default     = null
}

variable "aws_instance_type" {
    description = "AWS instance type to deploy"
    type        = string
    default     = "t3.medium"
}

variable "instance_user_data" {
    description = "cloudinit user_data to provide to instances on creation"
    type        = string
    default     = ""
}

variable "ssh_public_key" {
    description = "The SSH public key to be added to the authorized_keys file"
    type        = string
}