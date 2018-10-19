#
# Create virtual machine
#
resource "azurerm_virtual_machine" "audit" {
  name                  = "${var.vm_name}"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.audit.name}"
  network_interface_ids = ["${azurerm_network_interface.audit.id}"]
  vm_size               = "${var.vm_size}"

  storage_os_disk {
    name              = "${var.storage_os_disk_name}"
    create_option     = "${var.storage_os_create_option}"
    caching           = "${var.storage_os_caching}"
    managed_disk_type = "${var.storage_os_managed_disk_type}"
  }

  storage_image_reference {
    publisher = "${var.storage_os_image_publisher}"
    offer     = "${var.storage_os_image_offer}"
    sku       = "${var.storage_os_image_sku}"
    version   = "${var.storage_os_image_version}"
  }

  os_profile {
    computer_name  = "${var.vm_hostname}"
    admin_username = "${var.vm_admin_user_name}"
    admin_password = "${var.vm_admin_user_passwd}"
  }

  os_profile_linux_config {
    disable_password_authentication = "${var.password_authentication}"
  }

  boot_diagnostics {
    enabled     = "${var.boot_diagnostics_enabled}"
    storage_uri = "${azurerm_storage_account.audit.primary_blob_endpoint}"
  }

}
