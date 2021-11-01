variable "compartment_ocid" {
  description = "The OCID of the compartment the network should be created in"
  type        = string
}

variable "create_vcn" {
  description = "Whether a vcn should be created"
  type        = bool
  default     = true
}

variable "vcn_ocid" {
  description = "The OCID of the vcn to attach subnets to.  Ignored if create_vcn is true."
  type        = string
  default     = null
}

variable "vcn_dns_label" {
  description = "The DNS label to assign to the vcn (results in \"VCNLABEL.oraclevcn.com\")"
  type        = string
  default     = "vcn"
}

variable "vcn_cidr_blocks" {
  description = "The IPv4 CIDR blocks to include in the vcn"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "create_subnet" {
  description = "Whether a subnet should be created.  Ignored if create_vcn is false."
  type        = bool
  default     = true
}

variable "subnet_ocid" {
  description = "The OCID of the subnet to attach interfaces to.  Ignored if create_subnet is true."
  type        = string
  default     = null
}

variable "subnet_dns_label" {
  description = "The DNS label to assign to the subnet (results in \"SUBNETLABEL.VCNLABEL.oraclevcn.com\")"
  type        = string
  default     = "subnet"
}

variable "subnet_cidr_block" {
  description = "The IPv4 CIDR block to use for the created subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "subnet_ipv6_subnet" {
  description = "The two character portion of the subnet between /56 and /64.  This is the XX in AAAA:BBBB:CCCC:DDXX::/64.  This MUST be a two character string between 00 and ff."
  type        = string
  default     = "00"
}
