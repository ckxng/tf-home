variable "compartment_ocid" {
  type = string
}

variable "create_vcn" {
  type    = bool
  default = true
}

variable "vcn_ocid" {
  description = "The OCID of the vcn to attach subnets to.  Ignored if create_vcn is true."
  type        = string
  default     = ""
}

variable "vcn_dns_label" {
  type    = string
  default = "vcn"
}

variable "vcn_cidr_blocks" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "create_subnet" {
  type    = bool
  default = true
}

variable "subnet_ocid" {
  description = "The OCID of the subnet to attach interfaces to.  Ignored if create_subnet is true."
  type        = string
  default     = ""
}

variable "subnet_dns_label" {
  type    = string
  default = "subnet"
}

variable "subnet_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}

variable "subnet_ipv6_subnet" {
  description = "The two character portion of the subnet between /56 and /64.  This is the XX in AAAA:BBBB:CCCC:DDXX::/64.  This MUST be a two character string between 00 and ff."
  type        = string
  default     = "00"
}
