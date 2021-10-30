variable "availability_domain" {
  type    = string
  default = "hoEM:PHX-AD-2"
}

variable "cluster_node_name_prefix" {
  type    = string
  default = "cluster-node-"
}

variable "instance_count" {
  type    = number
  default = 3
}

variable "image_source_ocid" {
  type    = string
  default = "ocid1.image.oc1.phx.aaaaaaaa3nsfzlvkvrfug4xby77srfr43iinfkw3clur5izvlnqtxqdyj5sq" # Ubuntu 20.4
}

variable "memory_in_gbs" {
  type    = string
  default = "6"
}

variable "ocpus" {
  type    = string
  default = "1"
}

variable "ssh_authorized_keys" {
  type = string
}