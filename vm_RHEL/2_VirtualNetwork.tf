#
# Virtual Network
#
resource "azurerm_virtual_network" "audit" {
  name                = "${var.vnet_name}"
  address_space       = ["${var.vnet_address_space}"]
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.audit.name}"

}
