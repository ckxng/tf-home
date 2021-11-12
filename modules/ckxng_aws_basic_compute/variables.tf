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

variable "user_data" {
    description = "A user_data string to be passed to cloud_init"
    type        = string
    default     = null
}

variable "ssh_authorized_keys" {
    description = "A string containing one or more SSH public keys to be deployed to the main user of the system"
    type        = string
}