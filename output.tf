output "vm" {
  value       = netbox_virtual_machine.vm
  description = "The `netbox_virtual_machine` object created"
}

output "interfaces" {
  value       = netbox_interface.interface
  description = "List of the `netbox_interface` objects created"
}
