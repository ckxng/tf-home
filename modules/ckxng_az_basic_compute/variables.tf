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

variable "net_name" {
  description = "Azure Network name"
  type        = string
  default     = "terraform-net"
}

variable "subnet_name" {
  description = "Azure Subnet name"
  type        = string
  default     = "terraform-subnet"
}

variable "nif_name" {
  description = "Azure Network Interface name"
  type        = string
  default     = "terraform-network-if"
}

variable "pub_ip_name" {
  description = "Azure Public IP Address name"
  type        = string
  default     = "terraform-pub-ip"
}

variable "ip_name" {
  description = "Azure IP Address name"
  type        = string
  default     = "terraform-ip"
}

variable "vm_name" {
  description = "Azure VM name"
  type        = string
  default     = "terraform-vm"
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B1ls"
}

variable "admin_user" {
  description = "Azure VM admin username"
  type        = string
  default     = "adminuser"
}

variable "ssh_authorized_keys" {
  description = "A string containing one or more SSH public keys to be deployed to the main user of the system"
  type        = string
}

variable "image_publisher" {
  description = "The name of the image publisher for the source image"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "The name of the image offer for the source image"
  type        = string
  default     = "0001-com-ubuntu-server-focal-daily"
}

variable "image_sku" {
  description = "The name of the image sku for the source image"
  type        = string
  default     = "20_04-daily-lts-gen2"
}

variable "image_version" {
  description = "The name of the image version for the source image"
  type        = string
  default     = "latest"
}

variable "user_data" {
  description = "A user_data string to be passed to cloud_init"
  type        = string
  default     = null
}
