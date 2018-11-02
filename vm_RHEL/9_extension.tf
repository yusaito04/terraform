resource "azurerm_virtual_machine_extension" "TW" {
  name                 = "${var.azurerm_virtual_machine_extension_name}"
  location             = "${var.location}"
  resource_group_name  = "${var.resource_group_name}"
  virtual_machine_name = "${var.vm_name_001}"
  publisher            = "Datadog.Agent"
  type                 = "DatadogLinuxAgent"
  type_handler_version = "0.6.2"

  settings = <<SETTINGS
  {
    "settings": {
        "commandToExecute": "DD_API_KEY=c059e5c26966c3c7aa8e99f2c10ec2fb"
    }
  }
SETTINGS
}

