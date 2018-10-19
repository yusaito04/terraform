#
# Subnet
#
resource "azurerm_subnet" "audit" {
  name                 = "${var.subnet_name}"
  resource_group_name  = "${azurerm_resource_group.audit.name}"
  virtual_network_name = "${azurerm_virtual_network.audit.name}"
  address_prefix       = "${var.subnet_address_space}"
}
