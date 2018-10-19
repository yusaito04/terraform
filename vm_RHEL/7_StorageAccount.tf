#
# Generate random text for a unique storage account name
#
resource "random_id" "audit" {
  keepers = {
    resource_group = "${azurerm_resource_group.audit.name}"
  }

  byte_length = 8
}

#
# Create storage account for boot diagnostics
#
resource "azurerm_storage_account" "audit" {
  name                     = "diag${random_id.audit.hex}"
  resource_group_name      = "${azurerm_resource_group.audit.name}"
  location                 = "${var.location}"
  account_tier             = "${var.storage_account_tier}"
  account_replication_type = "${var.storage_account_replication_type}"


}
