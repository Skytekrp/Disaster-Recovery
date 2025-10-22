variable "location" {
  description = "Azure region to deploy into"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-terraform"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-app1"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["192.168.1.0/24"]
}

variable "subnet_front_name" {
  description = "Name of front tier subnet"
  type        = string
  default     = "subnet-front"
}

variable "subnet_front_prefix" {
  description = "Address prefix for front subnet"
  type        = string
  default     = "192.168.1.128/25"
}

variable "subnet_back_name" {
  description = "Name of back tier subnet"
  type        = string
  default     = "subnet-back"
}

variable "subnet_back_prefix" {
  description = "Address prefix for back subnet"
  type        = string
  default     = "192.168.1.192/25"
}

variable "vm_name" {
  description = "Name of the Ubuntu VM"
  type        = string
  default     = "ubuntu-vm"
}

variable "vm_admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "vm_admin_password" {
  description = "Admin password for the VM (use SSH key in production!)"
  type        = string
  sensitive   = true
  default     = "ChangeMe123!"
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
  default     = "Standard_B1s"
}
