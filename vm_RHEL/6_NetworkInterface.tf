#
# Network Interface
#
resource "azurerm_network_interface" "audit" {
  name                      = "${var.network_interface_name}"
  location                  = "${var.location}"
  resource_group_name       = "${azurerm_resource_group.audit.name}"
  network_security_group_id = "${azurerm_network_security_group.audit.id}"

  ip_configuration {
    name                          = "${var.private_ip_address_name}"
    subnet_id                     = "${azurerm_subnet.audit.id}"
    private_ip_address_allocation = "${var.private_ip_allocation}"
    private_ip_address            = "${var.private_ip_address_space}"
    public_ip_address_id          = "${azurerm_public_ip.audit.id}"
  }

}
