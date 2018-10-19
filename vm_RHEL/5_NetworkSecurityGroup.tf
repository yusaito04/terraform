#
# Network Security Group
#
resource "azurerm_network_security_group" "audit" {
  name                = "${var.nsg_name}"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.audit.name}"

  security_rule {
    name                       = "${var.nsg_rule_name}"
    protocol                   = "${var.nsg_protcol}"
    source_port_range          = "${var.nsg_send_range}"
    destination_port_range     = "${var.nsg_dest_range}"
    source_address_prefix      = "${var.nsg_send_source}"
    destination_address_prefix = "${var.nsg_dest_source}"
    priority                   = "${var.nsg_priority}"
    direction                  = "${var.nsg_rule_conf}"
    access                     = "${var.nsg_traffic_conf}"
  }

}
