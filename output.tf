output "vm" {
  value       = netbox_virtual_machine.vm
  description = "The `netbox_virtual_machine` object created"
}

output "interfaces" {
  value       = [ for interface in netbox_interface.interface : interface ]
  description = "List of the `netbox_interface` objects created"
}
