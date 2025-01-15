output vm {
  value       = netbox_virtual_machine.vm
  description = "The `netbox_virtual_machine` object created"
}

output interface {
  value       = netbox_interface.ens192
  description = "The `netbox_interface` object created"
}
