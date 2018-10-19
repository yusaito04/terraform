variable "resource_group_name" {
  default     = "audit-test-RG"
}

variable "location" {
  default     = "japaneast"
}

variable "vnet_name" {
  default     = "audit-test-vnet"
}

variable "vnet_address_space" {
  default     = "192.168.0.0/16"
}

variable "subnet_name" {
  default     = "audit-test-vnet-subnet01"
}

variable "subnet_address_space" {
  default     = "192.168.10.0/24"
}

variable "public_ip_name" {
  default     = "audit-test-PubIP"
}

variable "public_ip_allocation" {
  default     = "dynamic"
}

variable "nsg_name" {
  default     = "audit-test-NSG"
}

variable "nsg_rule_name" {
  default     = "SSH-inbound"
}

variable "nsg_protcol" {
  default     = "tcp"
}

variable "nsg_send_range" {
  default     = "*"
}

variable "nsg_dest_range" {
  default     = "22"
}

variable "nsg_send_source" {
  default     = "*"
}

variable "nsg_dest_source" {
  default     = "*"
}

variable "nsg_priority" {
  default     = "100"
}

variable "nsg_rule_conf" {
  default     = "inbound"
}

variable "nsg_traffic_conf" {
  default     = "allow"
}

variable "network_interface_name" {
  default     = "audit-test-IF-name"
}

variable "private_ip_address_name" {
  default     = "audit-test-private-IP"
}

variable "private_ip_allocation" {
  default     = "dynamic"
}

variable "private_ip_address_space" {
  default     = ""
}

variable "storage_account_tier" {
  default     = "Premium"
}

variable "storage_account_replication_type" {
  default     = "LRS"
}

variable "vm_name" {
  default     = "audit-test-VM01"
}

variable "vm_size" {
  default     = "Standard_D2s_v3"
}


variable "storage_os_disk_name" {
  default     = "audit-test-VM01-STG-OS"
}


variable "storage_os_create_option" {
  default     = "FromImage"
}


variable "storage_os_caching" {
  default     = "None"
}


variable "storage_os_managed_disk_type" {
  default     = "Standard_LRS"
}


variable "storage_os_image_publisher" {
  default     = "RedHat"
}


variable "storage_os_image_offer" {
  default     = "RHEL"
}


variable "storage_os_image_sku" {
  default     = "7.3"
}

variable "storage_os_image_version" {
  default     = "latest"
}

variable "vm_hostname" {
  default     = "vm01"
}


variable "vm_admin_user_name" {
  default     = "spin"
}


variable "vm_admin_user_passwd" {
  default     = "P@ssw0rd"
}


variable "password_authentication" {
  default     = "false"
}


variable "boot_diagnostics_enabled" {
  default     = "false"
}

