variable "create_rg" {
  description = "Create an Azure Resource Group"
  type        = bool
  default     = true
}

variable "rg_name" {
  description = "Azure Resource Group name"
  type        = string
  default     = "terraform-rg"
}

variable "rg_location" {
  description = "Azure Resource Group location"
  type        = string
  default     = "Central US"
}

variable "create_net" {
  description = "Create an Azure Network"
  type        = bool
  default     = true
}

variable "net_name" {
  description = "Azure Network name"
  type        = string
  default     = "terraform-net"
}

variable "net_addr_space" {
  description = "Azure Network address space"
  type        = set(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_addr_space" {
  description = "Azure Subnet address space"
  type        = set(string)
  default     = ["10.0.0.0/24"]
}

variable "create_subnet" {
  description = "Create an Azure Subnet"
  type        = bool
  default     = true
}

variable "subnet_name" {
  description = "Azure Subnet name"
  type        = string
  default     = "terraform-subnet"
}
