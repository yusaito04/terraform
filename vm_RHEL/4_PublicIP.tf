#
# Public IP
#
resource "azurerm_public_ip" "audit" {
  name                         = "${var.public_ip_name}"
  location                     = "${var.location}"
  resource_group_name          = "${azurerm_resource_group.audit.name}"
  public_ip_address_allocation = "${var.public_ip_allocation}"

}
