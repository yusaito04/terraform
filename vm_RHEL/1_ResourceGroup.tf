#
# Resource Group
#
resource "azurerm_resource_group" "audit" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"

}
